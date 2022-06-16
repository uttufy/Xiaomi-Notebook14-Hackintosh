#!/bin/bash
#set -x # for DEBUGGING

# Created by stevezhengshiqi on 17 April, 2020
#
# Build XiaoMi-Pro EFI release
#
# Reference:
# https://github.com/williambj1/Hackintosh-EFI-Asus-Zephyrus-S-GX531/blob/master/Makefile.sh (Archived) by @williambj1

# Vars
ACDT="Acidanthera"
CFURL="https://hackintosh.stevezheng.workers.dev"
CFURL_1="https\://hackintosh.stevezheng.workers.dev"
OIW="OpenIntelWireless"
REPO_NAME="Xiaomi-Notebook14-Hackintosh"
REPO_BRANCH="main"
REPO_NAME_BRANCH="${REPO_NAME}-${REPO_BRANCH}"
RETRY_MAX=5

# Release Message
RLMSG="**macOS13.0 support is NOT tested.<br />To receive OEM updates, set SecureBootModel = Default (OC, risky) or go to App Store and search Monterey (or newer macOS).**"

build_mode="Release"
clean_up=true
download_mode="RELEASE"
err_no_exit=false
fail_flag=false
gh_api=false
language="en_US"
model_input="CML"
model_list=()
no_xcode=false
pre_release=""
publish_efi=false
remote=true
version="local"

# Env
if [ "$(which xcodebuild)" = "" ] || [ "$(which git)" = "" ]; then
  no_xcode=true
elif [[ "${DEVELOPER_DIR}" = "" ]]; then
  DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"
  xcodebuild -version && echo
else
  xcodebuild -version && echo
fi

# Language detect
language=$(locale | grep LANG | sed s/'LANG='// | tr -d '"' | cut -d "." -f 1)
if [[ ${language} != "zh_CN" ]]; then
  language="en_US"
fi

# Detect GitHub Action Tag
if [[ "${GITHUB_REF}" = refs/tags/* ]]; then
  publish_efi=true
fi

# Args
while [[ $# -gt 0 ]]; do
  key="$1"

  case "${key}" in
  --debug_KextOC)
    build_mode="Debug"
    download_mode="DEBUG"
    shift # past argument
    ;;
  --ignore_err)
    err_no_exit=true
    shift # past argument
    ;;
  --no_clean_up)
    clean_up=false
    shift # past argument
    ;;
  --gh_api)
    gh_api=true
    shift # past argument
    ;;
  *)
    if [[ "${key}" =~ "--version=" ]]; then
      version="${key##*=}"
      shift
    elif [[ "${key}" =~ "--pre_release=" ]]; then
      pre_release+="${key##*=}"
      shift
    elif [[ "${key}" =~ "--model=" ]]; then
      model_input+="${key##*=}"
      shift
    else
      shift
    fi
    ;;
  esac
done

model_list+=("CML")

# Assign CML when no MODEL is entered
if [[ ${#model_list[@]} -eq 0 ]]; then
  model_input="CML"
  model_list=("CML")
fi

# Colors
if [[ -z ${GITHUB_ACTIONS+x} ]]; then
  red=$(tput setaf 1)
  green=$(tput setaf 2)
  yellow=$(tput setaf 3)
  blue=$(tput setaf 4)
  cyan=$(tput setaf 6)
  reset=$(tput sgr0)
  bold=$(tput bold)
fi

# WorkSpaceDir
WSDir="$(
  cd "$(dirname "$0")" || exit 1
  pwd -P
)/build"
OUTDir_CML_OC="Xiaomi-Notebook14-Hackintosh-EFI-${version}"

# Kexts
# Lilu is not in the list because of bKext()
acdtKexts=(
  VirtualSMC
  WhateverGreen
  AppleALC
  HibernationFixup
  RestrictEvents
  VoodooPS2
  BrcmPatchRAM
)

# frwfKexts=(
#   RealtekCardReader
#   RealtekCardReaderFriend
# )

oiwKexts=(
  IntelBluetoothFirmware
  itlwm
)

# Clean Up
function cleanUp() {
  if [[ ${clean_up} == true ]]; then
    rm -rf "${WSDir}"
  fi
}

# Exit on Network Issue
function networkErr() {
  echo "${yellow}[${reset}${red}${bold} ERROR ${reset}${yellow}]${reset}: Failed to download resources from $1, please check your connection!"
  if [[ "$2" == "skip" ]]; then
    echo "${yellow}[${bold} WARNING ${reset}${yellow}]${reset}: Skip $1!"
    fail_flag=true
  elif [[ ${err_no_exit} == false ]]; then
    cleanUp
    exit 1
  fi
  echo
}

# Exit on Copy Issue
function copyErr() {
  echo "${yellow}[${reset}${red}${bold} ERROR ${reset}${yellow}]${reset}: Failed to copy resources!"
  if [[ ${err_no_exit} == false ]]; then
    cleanUp
    exit 1
  fi
  echo
}

# Exit on Build Issue
function buildErr() {
  echo "${yellow}[${reset}${red}${bold} ERROR ${reset}${yellow}]${reset}: Failed to build $1!"
  if [[ ${err_no_exit} == false ]]; then
    cleanUp
    exit 1
  fi
  echo
}

function init() {
  if [[ ${OSTYPE} != darwin* ]]; then
    echo "This script can only run in macOS, aborting"
    exit 1
  fi

  if [[ -d "${WSDir}" ]]; then
    rm -rf "${WSDir}"
  fi
  mkdir "${WSDir}" || exit 1
  cd "${WSDir}" || exit 1

  local dirs=(
    "OpenCore"
  )
  for model in "${model_list[@]}"; do
    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    dirs+=(
      "${!OUTDir_MODEL_OC}"
      "${model}"
    )
  done

  for dir in "${dirs[@]}"; do
    mkdir -p "${dir}" || exit 1
  done

  if [[ "$(dirname "$PWD")" =~ ${REPO_NAME} ]]; then
    remote=false
  else
    mkdir -p "${REPO_NAME_BRANCH}" || exit 1
  fi
}

# Workaround for Release Binaries that don't include "RELEASE" in their file names (head or grep)
function h_or_g() {
  if [[ "$1" == "VoodooI2C" ]]; then
    hgs=("head -n 1")
  elif [[ "$1" == "build-repo" ]]; then
    hgs=("grep -A 2 OpenCorePkg | grep -m 1 ${download_mode}")
  elif [[ "$1" == "EAPD-Codec-Commander" ]]; then
    hgs=("grep -m 2 CodecCommander | grep -m 1 ${download_mode}")
  elif [[ "$1" == "IntelBluetoothFirmware" ]]; then
    hgs=("grep -m 1 IntelBluetooth")
  elif [[ "$1" == "itlwm" ]]; then
    hgs=("grep -m 1 AirportItlwm-Big_Sur"
      "grep -m 1 AirportItlwm-Catalina"
      "grep -m 1 AirportItlwm-Monterey"
      "grep -m 1 AirportItlwm-Ventura"
    )
  elif [[ "$1" == "NoTouchID" ]]; then
    hgs=("grep -m 1 RELEASE")
  else
    hgs=("grep -m 1 ${download_mode}")
  fi
}

# Download GitHub Release
function dGR() {
  local rawURL
  local urls=()

  h_or_g "$2"

  if [[ -n ${3+x} ]]; then
    if [[ "$3" == "PreRelease" ]]; then
      tag=""
    elif [[ "$3" == "NULL" ]]; then
      tag="/latest"
    else
      if [[ -n ${GITHUB_ACTIONS+x} || ${gh_api} == false ]]; then
        if [[ "$2" == "AppleSupportPkg_209" ]]; then
          tag="/tag/2.0.9"
        elif [[ "$2" == "AppleSupportPkg_216" ]]; then
          tag="/tag/2.1.6"
        fi
      else
        # only release_id is supported
        tag="/$3"
      fi
    fi
  else
    tag="/latest"
  fi

  if [[ -n ${GITHUB_ACTIONS+x} || ${gh_api} == false ]]; then
    if [[ "$2" == "AppleSupportPkg_209" || "$2" == "AppleSupportPkg_216" ]]; then
      rawURL="https://github.com/$1/AppleSupportPkg/releases$tag"
    elif [[ "$2" == "build-repo" ]]; then
      rawURL="https://github.com/$1/$2/tags"
      rawURL="https://github.com$(curl -L --silent "${rawURL}" | grep -m 1 'OpenCorePkg' | tr -d '"' | tr -d ' ' | tr -d '>' | sed -e 's/<ahref=//')"
    else
      rawURL="https://github.com/$1/$2/releases$tag"
    fi
    for hg in "${hgs[@]}"; do
      if [[ ${language} == "zh_CN" ]]; then
        rawURL=${rawURL/#/${CFURL}/}
      fi
      urls+=("https://github.com$(curl -L --silent "${rawURL}" | grep '/download/' | eval "${hg}" | sed 's/^[^"]*"\([^"]*\)".*/\1/')")
    done
  else
    if [[ "$2" == "AppleSupportPkg_209" || "$2" == "AppleSupportPkg_216" ]]; then
      rawURL="https://api.github.com/repos/$1/AppleSupportPkg/releases$tag"
    elif [[ "$2" == "build-repo" ]]; then
      rawURL="https://api.github.com/repos/$1/$2/releases"
    else
      rawURL="https://api.github.com/repos/$1/$2/releases$tag"
    fi
    for hg in "${hgs[@]}"; do
      if [[ "$2" == "build-repo" ]]; then
        urls+=("$(curl --silent "${rawURL}" | grep -A 100 'OpenCorePkg' | grep 'browser_download_url' | eval "${hg}" | tr -d '"' | tr -d ' ' | sed -e 's/browser_download_url://')")
      else
        urls+=("$(curl --silent "${rawURL}" | grep 'browser_download_url' | eval "${hg}" | tr -d '"' | tr -d ' ' | sed -e 's/browser_download_url://')")
      fi
    done
  fi

  if [[ ${language} == "zh_CN" ]]; then
    urls=("${urls[@]/#/${CFURL}/}")
  fi

  for url in "${urls[@]}"; do
    if [[ -z ${url} || ${url} == "https://github.com" ]]; then
      networkErr "$2" "$5"
    fi
    echo "${green}[${reset}${blue}${bold} Downloading ${url##*\/} ${reset}${green}]${reset}"
    echo "${cyan}"
    cd ./"$4" || exit 1
    curl -# -L -O "${url}" || networkErr "$2" "$5"
    cd - >/dev/null 2>&1 || exit 1
    echo "${reset}"
    if [[ ${fail_flag} == true ]]; then
      fail_flag=false
      return 1
    fi
  done
}

# Download GitHub Source Code
function dGS() {
  local url="https://github.com/$1/$2/archive/$3.zip"
  if [[ ${language} == "zh_CN" ]]; then
    url=${url/#/${CFURL}/}
  fi
  echo "${green}[${reset}${blue}${bold} Downloading $2.zip ${reset}${green}]${reset}"
  echo "${cyan}"
  cd ./"$4" || exit 1
  curl -# -L -o "$2.zip" "${url}" || networkErr "$2"
  cd - >/dev/null 2>&1 || exit 1
  echo "${reset}"
}

# Download Bitbucket Release
function dBR() {
  local count=0
  local rawURL="https://api.bitbucket.org/2.0/repositories/$1/$2/downloads/"
  local url

  while [ ${count} -lt ${RETRY_MAX} ]; do
    url="$(curl --silent "${rawURL}" | json_pp | grep 'href' | head -n 1 | tr -d '"' | tr -d ' ' | sed -e 's/href://')"
    if [ "${url:(-4)}" == ".zip" ]; then
      echo "${green}[${reset}${blue}${bold} Downloading ${url##*\/} ${reset}${green}]${reset}"
      echo "${cyan}"
      cd ./"$3" || exit 1
      curl -# -L -O "${url}" || networkErr "$2"
      cd - >/dev/null 2>&1 || exit 1
      echo "${reset}"
      return
    else
      count=$((count + 1))
      echo "${yellow}[${bold} WARNING ${reset}${yellow}]${reset}: Failed to download $2, ${count} Attempt!"
      echo
    fi
  done

  if [ ${count} -ge ${RETRY_MAX} ]; then
    # if ${RETRY_MAX} times are over and still fail to download, exit
    networkErr "$2"
  fi
}

# Download Pre-Built Binaries
function dPB() {
  local url="https://raw.githubusercontent.com/$1/$2/master/$3"
  if [[ ${language} == "zh_CN" ]]; then
    url=${url/#/${CFURL}/}
  fi
  echo "${green}[${reset}${blue}${bold} Downloading ${3##*\/} ${reset}${green}]${reset}"
  echo "${cyan}"
  curl -# -L -O "${url}" || networkErr "${3##*\/}"
  echo "${reset}"
}

# Build Pre-release Kexts
function bKextHelper() {
  local liluPlugins
  local voodooinputPlugins="VoodooI2C VoodooPS2"
  local PATH_LONG_BIG="Build/Products/$3/"
  local PATH_LONG_SMA="build/Products/$3/"
  local PATH_SHORT_SMA="build/$3/"
  local PATH_VI2C="Build/Products/Release/"
  local lineNum

  liluPlugins="AppleALC BrcmPatchRAM HibernationFixup RealtekCardReaderFriend VirtualSMC WhateverGreen NoTouchID"

  echo "${green}[${reset}${blue}${bold} Building $2 ${reset}${green}]${reset}"

  git clone --depth=1 -q ${CFURL}/https://github.com/"$1"/"$2".git || networkErr "$2"

  cd "$2" || exit 1
  if [[ ${liluPlugins} =~ $2 ]]; then
    cp -R "../MacKernelSDK" "./" || copyErr
    cp -R "../Lilu.kext" "./" || copyErr
    if [[ "$2" == "VirtualSMC" ]]; then
      xcodebuild -jobs 1 -target Package -configuration "$3" -arch x86_64 >/dev/null 2>&1 || buildErr "$2"
      mkdir ../Kexts
      cp -R "${PATH_SHORT_SMA}"*.kext "../Kexts/" || copyErr
    elif [[ "$2" == "AppleALC" ]]; then
      mkdir -p "tmp" || exit 1
      cp -R "Resources/ALC256" "tmp" || copyErr
      (cd "tmp/ALC256" && find . -maxdepth 1 ! -path "./Info.plist" ! -path "./layout69.xml" ! -path "./Platforms69.xml" ! -path "./layout88.xml" ! -path "./Platforms88.xml" -exec rm -rf {} + >/dev/null 2>&1 || exit 1)
      cp -R "Resources/ALC298" "tmp" || copyErr
      (cd "tmp/ALC298" && find . -maxdepth 1 ! -path "./Info.plist" ! -path "./layout30.xml" ! -path "./Platforms30.xml" ! -path "./layout99.xml" ! -path "./Platforms99.xml" -exec rm -rf {} + >/dev/null 2>&1 || exit 1)
      # Delete unrelated layout resources in AppleALC
      (cd "Resources" && find . -type d -maxdepth 1 ! -path "./PinConfigs.kext" -exec rm -rf {} + >/dev/null 2>&1 || exit 1)
      cp -R "tmp/ALC256" "Resources" || copyErr
      xcodebuild -jobs 1 -configuration "$3" -arch x86_64 >/dev/null 2>&1 || buildErr "$2"
      cp -R "${PATH_SHORT_SMA}"*.kext "../CML" || copyErr
      xcodebuild clean >/dev/null 2>&1 || buildErr "$2"

    elif [[ "$2" == "NoTouchID" ]]; then
      xcodebuild -jobs 1 -configuration "$3" -arch x86_64 CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO >/dev/null 2>&1 || buildErr "$2"
      cp -R "${PATH_SHORT_SMA}"*.kext "../CML" || copyErr
    elif [[ "$2" == "BrcmPatchRAM" ]]; then
      xcodebuild -jobs 1 -target Package -configuration "$3" >/dev/null 2>&1 || buildErr "$2"
      cp -R "${PATH_LONG_SMA}"*.kext "../" || copyErr
    else
      xcodebuild -jobs 1 -configuration "$3" >/dev/null 2>&1 || buildErr "$2"
      cp -R "${PATH_SHORT_SMA}"*.kext "../" || copyErr
    fi
  elif [[ ${voodooinputPlugins} =~ $2 ]]; then
    cp -R "../MacKernelSDK" "./" || copyErr
    if [[ "$2" == "VoodooI2C" ]]; then
      cp -R "../VoodooInput" "./Dependencies/" || copyErr

      # Add Cloudflare redirect to gitmodules for Chinese users
      if [[ ${language} == "zh_CN" ]]; then
        /usr/bin/sed -i "" "s:https:${CFURL_1}/https:g" ".gitmodules"
      fi

      if git submodule init -q; then
        git submodule update -q
      else
        networkErr "VoodooI2C Satellites"
      fi

      if [[ -z ${GITHUB_ACTIONS+x} ]]; then
        # Delete Linting & Generate Documentation in Build Phase to avoid installing cpplint & cldoc
        lineNum=$(grep -n "Linting" VoodooI2C/VoodooI2C.xcodeproj/project.pbxproj) && lineNum=${lineNum%%:*}
        /usr/bin/sed -i '' "${lineNum}d" VoodooI2C/VoodooI2C.xcodeproj/project.pbxproj
        lineNum=$(grep -n "Generate Documentation" VoodooI2C/VoodooI2C.xcodeproj/project.pbxproj) && lineNum=${lineNum%%:*}
        /usr/bin/sed -i '' "${lineNum}d" VoodooI2C/VoodooI2C.xcodeproj/project.pbxproj
      else
        # Install cpplint & cldoc when using GitHub Action
        pip3 install -q cpplint || exit 1
        pip3 install -q git+https://github.com/VoodooI2C/cldoc.git || exit 1
      fi

      xcodebuild -workspace "VoodooI2C.xcworkspace" -scheme "VoodooI2C" -derivedDataPath . clean build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO >/dev/null 2>&1 || buildErr "$2"
      cp -R ${PATH_VI2C}*.kext "../" || copyErr
    else
      cp -R "../VoodooInput" "./" || copyErr
      xcodebuild -jobs 1 -configuration "$3" >/dev/null 2>&1 || buildErr "$2"
      cp -R "${PATH_LONG_SMA}"*.kext "../" || copyErr
    fi
  elif [[ "$2" == "Lilu" ]]; then
    rm -rf ../Lilu.kext
    cp -R "../MacKernelSDK" "./" || copyErr
    xcodebuild -jobs 1 -configuration "$3" -arch x86_64 >/dev/null 2>&1 || buildErr "$2"
    cp -R "${PATH_SHORT_SMA}"*.kext "../" || copyErr
  elif [[ "$2" == "VoodooInput" ]]; then
    cp -R "../MacKernelSDK" "./" || copyErr
    xcodebuild -jobs 1 -configuration Debug >/dev/null 2>&1 || buildErr "$2"
    xcodebuild -jobs 1 -configuration Release >/dev/null 2>&1 || buildErr "$2"
    mkdir -p "../VoodooInput_build/Debug" && mkdir "../VoodooInput_build/Release"
    if cp -R "build/Debug/VoodooInput.kext" "../VoodooInput_build/Debug/"; then
      cp -R "build/Release/VoodooInput.kext" "../VoodooInput_build/Release/"
    else
      copyErr
    fi
  # elif [[ "$2" == "EAPD-Codec-Commander" ]]; then
  #   cp -R "../MacKernelSDK" "./" || copyErr
  #   xcodebuild -scheme CodecCommander -derivedDataPath . -configuration "$3" >/dev/null 2>&1 || buildErr "$2"
  #   cp -R "${PATH_LONG_BIG}"*.kext "../KBL" || copyErr
  elif [[ "$2" == "IntelBluetoothFirmware" ]]; then
    cp -R "../MacKernelSDK" "./" || copyErr
    # IntelBTPatcher needs Lilu as dependency
    cp -R "../Lilu.kext" "./" || copyErr
    mkdir -p "tmp" || exit 1
    cp -R IntelBluetoothFirmware/fw/ibt-12* "tmp" || copyErr
    cp -R IntelBluetoothFirmware/fw/ibt-19-0* "tmp" || copyErr

    # Delete unrelated firmware and only keep ibt-19-0*.sfi for Intel Wireless 9462
    rm -rf "IntelBluetoothFirmware/FwBinary.cpp" || exit 1
    rm -rf IntelBluetoothFirmware/fw/* || exit 1
    cp -R tmp/ibt-19-0* "IntelBluetoothFirmware/fw/" || copyErr
    xcodebuild -alltargets -configuration "$3" >/dev/null 2>&1 || buildErr "$2"
    cp -R "${PATH_SHORT_SMA}"*.kext "../CML" || copyErr
    xcodebuild -alltargets clean >/dev/null 2>&1 || buildErr "$2"
    f
  elif [[ "$2" == "itlwm" ]]; then
    cp -R "../MacKernelSDK" "./" || copyErr
    mkdir -p "tmp" || exit 1
    cp -R itlwm/firmware/iwlwifi-QuZ* "tmp" || copyErr
    cp -R itlwm/firmware/iwm-8265* "tmp" || copyErr

    # Delete unrelated firmware and only keep iwlwifi-QuZ* for Intel Wireless 9462
    rm -rf "include/FwBinary.cpp" || exit 1
    rm -rf itlwm/firmware/* || exit 1
    cp -R tmp/iwlwifi-QuZ* "itlwm/firmware/" || copyErr

    xcodebuild -scheme "AirportItlwm (all)" -configuration "$3" -derivedDataPath . >/dev/null 2>&1 || buildErr "$2"
    cp -R "${PATH_LONG_BIG}"* "../CML" || copyErr
    xcodebuild -scheme "AirportItlwm (all)" clean >/dev/null 2>&1 || buildErr "$2"

  fi
  cd ../ || exit 1
  echo
}

function bKext() {
  if [[ "${publish_efi}" = true ]]; then
    # Force to call install_compiled_sdk in Lilu's bootstrap.sh
    local GITHUB_REF=""
  fi

  if [[ ${no_xcode} == true ]]; then
    echo "${yellow}[${reset}${red}${bold} ERROR ${reset}${yellow}]${reset}: Missing Xcode tools, won't build kexts!"
    exit 1
  fi

  git clone -q ${CFURL}/https://github.com/acidanthera/MacKernelSDK || networkErr "MacKernelSDK"
  bKextHelper ${ACDT} "Lilu" "Debug"
  bKextHelper ${ACDT} "VoodooInput"
  rm -rf "Lilu" && rm -rf "VoodooInput"
  mv "VoodooInput_build" "VoodooInput"

  bKextHelper al3xtjames NoTouchID "${build_mode}"

  # for frwfKext in "${frwfKexts[@]}"; do
  #   bKextHelper ${FRWF} "${frwfKext}" "${build_mode}"
  # done
  for acdtKext in "${acdtKexts[@]}"; do
    bKextHelper ${ACDT} "${acdtKext}" "${build_mode}"
  done
  for oiwKext in "${oiwKexts[@]}"; do
    bKextHelper ${OIW} "${oiwKext}" "${build_mode}"
  done
  bKextHelper VoodooI2C VoodooI2C
  # Make sure Lilu is later than Lilu based kexts
  bKextHelper ${ACDT} "Lilu" "${build_mode}"
  echo "${yellow}[${bold} WARNING ${reset}${yellow}]${reset}: Please clean Xcode cache in ~/Library/Developer/Xcode/DerivedData!"
  echo "${yellow}[${bold} WARNING ${reset}${yellow}]${reset}: Some kexts only work on current macOS SDK build!"
  echo
}

function download() {

  # OpenCore
  if [[ "${pre_release}" =~ "OC" ]]; then
    # williambj1's OpenCore-Factory repository has been archived
    # dGR williambj1 OpenCore-Factory PreRelease "OpenCore"
    dGR dortania build-repo NULL "OpenCore" "skip" || dGR ${ACDT} OpenCorePkg NULL "OpenCore"
  else
    dGR ${ACDT} OpenCorePkg NULL "OpenCore"
  fi

  # Kexts
  # dBR Rehabman os-x-null-ethernet

  if [[ "${pre_release}" =~ "Kext" ]]; then
    bKext
  else
    for acdtKext in "${acdtKexts[@]}"; do
      dGR ${ACDT} "${acdtKext}"
      dGR ${ACDT} "Lilu"
    done
    # for frwfKext in "${frwfKexts[@]}"; do
    #   dGR ${FRWF} "${frwfKext}"
    # done
    for oiwKext in "${oiwKexts[@]}"; do
      dGR ${OIW} "${oiwKext}" PreRelease
    done
    dGR al3xtjames NoTouchID NULL "CML"

    dGR VoodooI2C VoodooI2C
  fi

  # UEFI
  # dPB ${ACDT} OcBinaryData Drivers/HfsPlus.efi
  dPB ${ACDT} VirtualSMC EfiDriver/VirtualSmc.efi

  # HfsPlus.efi & OC Resources
  dGS ${ACDT} OcBinaryData master

  # XiaoMi-Pro ACPI patch
  if [[ ${remote} == true ]]; then
    dGS uttusharma ${REPO_NAME} ${REPO_BRANCH}
  fi
}

# Unpack
function unpack() {
  echo "${green}[${reset}${yellow}${bold} Unpacking ${reset}${green}]${reset}"
  ditto -x -k ./*.zip . || exit 1
  (cd "CML" && unzip -qq ./*.zip || exit 1)

  echo
}

# Patch
function patch() {
  local unusedItems=(
    "BlueToolFixup.kext/Contents/_CodeSignature"
    "HibernationFixup.kext/Contents/_CodeSignature"
    "Kexts/SMCBatteryManager.kext/Contents/Resources"
    "VoodooI2C.kext/Contents/PlugIns/VoodooInput.kext.dSYM"
    "VoodooI2C.kext/Contents/PlugIns/VoodooInput.kext/Contents/_CodeSignature"
    "VoodooPS2Controller.kext/Contents/PlugIns/VoodooInput.kext"
    "VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Mouse.kext"
    "VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Trackpad.kext"
    "WhateverGreen.kext/Contents/_CodeSignature"
  )
  echo "${green}[${reset}${blue}${bold} Patching Resources ${reset}${green}]${reset}"
  for unusedItem in "${unusedItems[@]}"; do
    rm -rf "${unusedItem}" >/dev/null 2>&1
  done

  # Only keep OCEFIAudio_VoiceOver_Boot in OcBinaryData/Resources/Audio
  (cd "OcBinaryData-master/Resources/Audio/" && find . -maxdepth 1 -not -name "OCEFIAudio_VoiceOver_Boot*" -delete || exit 1)

  # Rename AirportItlwm.kexts to distinguish different versions
  if [[ "${pre_release}" =~ "Kext" ]]; then
    for model in "${model_list[@]}"; do
      mv "${model}/Big Sur/AirportItlwm.kext" "${model}/Big Sur/AirportItlwm_Big_Sur.kext" || exit 1
      mv "${model}/Catalina/AirportItlwm.kext" "${model}/Catalina/AirportItlwm_Catalina.kext" || exit 1
      mv "${model}/Monterey/AirportItlwm.kext" "${model}/Monterey/AirportItlwm_Monterey.kext" || exit 1
      mv "${model}/Ventura/AirportItlwm.kext" "${model}/Ventura/AirportItlwm_Ventura.kext" || exit 1
    done
  else
    mv "Big Sur/AirportItlwm.kext" "Big Sur/AirportItlwm_Big_Sur.kext" || exit 1
    mv "Catalina/AirportItlwm.kext" "Catalina/AirportItlwm_Catalina.kext" || exit 1
    mv "Monterey/AirportItlwm.kext" "Monterey/AirportItlwm_Monterey.kext" || exit 1
    mv "Ventura/AirportItlwm.kext" "Ventura/AirportItlwm_Ventura.kext" || exit 1
  fi
  echo
}

# Install
function install() {
  # Kexts
  local sharedKextItems=(
    "HibernationFixup.kext"
    "Kexts/SMCBatteryManager.kext"
    "Kexts/SMCLightSensor.kext"
    "Kexts/SMCProcessor.kext"
    "Kexts/VirtualSMC.kext"
    "Lilu.kext"
    "VoodooI2C.kext"
    "VoodooI2CHID.kext"
    "VoodooPS2Controller.kext"
    "WhateverGreen.kext"
  )
  if [[ "${model_input}" =~ "CML" ]]; then
    local cmlKextItems=(
      "AppleALC.kext"
      "IntelBluetoothFirmware.kext"
    )
    if [[ "${pre_release}" =~ "Kext" ]]; then
      cmlKextItems=("${cmlKextItems[@]/#/CML/}")
    fi
    cmlKextItems+=(
      "${sharedKextItems[@]}"
    )
    local cmlWifiKextItems=(
      "Big Sur/AirportItlwm_Big_Sur.kext"
      "Catalina/AirportItlwm_Catalina.kext"
      "Monterey/AirportItlwm_Monterey.kext"
      "Ventura/AirportItlwm_Ventura.kext"
    )
    if [[ "${pre_release}" =~ "Kext" ]]; then
      cmlWifiKextItems=("${cmlWifiKextItems[@]/#/CML/}")
    fi
  fi

  echo "${green}[${reset}${blue}${bold} Installing Kexts ${reset}${green}]${reset}"
  for model in "${model_list[@]}"; do
    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    model_prefix=$(echo "${model}" | tr '[:upper:]' '[:lower:]')
    model_kextItems="${model_prefix}KextItems"
    model_wifiKextItems="${model_prefix}WifiKextItems"
    kextItems="${model_kextItems}[@]"
    for kextDir in "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/"; do
      mkdir -p "${kextDir}" || exit 1
      for kextItem in "${!kextItems}"; do
        cp -R "${kextItem}" "${kextDir}" || copyErr
      done
    done

    kextItems="${model_wifiKextItems}[@]"
    for kextItem in "${!kextItems}"; do
      cp -R "${kextItem}" "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/" || copyErr
    done

    if [[ "${pre_release}" =~ "Kext" ]]; then
      cp -R "${model}/IntelBluetoothInjector.kext" "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/" || copyErr
      cp -R "${model}/IntelBTPatcher.kext" "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/" || copyErr
    else
      cp -R "IntelBluetoothInjector.kext" "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/" || copyErr
      # cp -R "IntelBTPatcher.kext" "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/" || copyErr
    fi
    cp -R "BlueToolFixup.kext" "${!OUTDir_MODEL_OC}/EFI/OC/Kexts/" || copyErr
  done
  echo

  # Drivers
  local driverItems=(
    "OcBinaryData-master/Drivers/ExFatDxe.efi"
    "OcBinaryData-master/Drivers/HfsPlus.efi"
  )

  echo "${green}[${reset}${blue}${bold} Installing Drivers ${reset}${green}]${reset}"

  echo

  # ACPI
  local sharedAcpiItems=(
    "${REPO_NAME_BRANCH}ACPI/SSDT-ALS0.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-AWAC.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-DMAC.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-EC-USBX-LAPTOP.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-EC.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-GPI0.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-GPRW.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-HPET.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-LGPA.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-MEM2.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-PLUG-MI.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-PMC.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-PNLF.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-PS2K.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-RMNE.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-RTC0.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-SMBUS-MCHC.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-TPD0.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-UIAC.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-XCPM.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-XOSI.aml"
    "${REPO_NAME_BRANCH}ACPI/SSDT-dGPU-Off.aml"
  )

  if [[ "${model_input}" =~ "CML" ]]; then
    local cmlAcpiItems=("${sharedAcpiItems[@]}"
      # "${REPO_NAME_BRANCH}ACPI/SSDT-ALS0.aml"
    )
    if [[ ${remote} == false ]]; then
      cmlAcpiItems=("${cmlAcpiItems[@]/${REPO_NAME_BRANCH}/..}")
    fi
  fi

  echo "${green}[${reset}${blue}${bold} Installing ACPIs ${reset}${green}]${reset}"

  echo

  # Theme
  echo "${green}[${reset}${blue}${bold} Installing Themes ${reset}${green}]${reset}"
  for model in "${model_list[@]}"; do
    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    cp -R "OcBinaryData-master/Resources" "${!OUTDir_MODEL_OC}/EFI/OC/" || copyErr
  done
  echo

  # config & README & LICENSE & SECURITY
  echo "${green}[${reset}${blue}${bold} Installing config & README & LICENSE ${reset}${green}]${reset}"
  for model in "${model_list[@]}"; do

    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    model_prefix=$(echo "${model}" | tr '[:upper:]' '[:lower:]')
    model_config="config.plist"
    if [[ ${remote} == true ]]; then
      cp "${REPO_NAME_BRANCH}/EFI/OC/${model_config}" "${!OUTDir_MODEL_OC}/EFI/OC/config.plist" || copyErr
    else
      cp "../EFI/OC/${model_config}" "${!OUTDir_MODEL_OC}/EFI/OC/config.plist" || copyErr
    fi
  done
  echo
  echo
}

# Extract files from OpenCore
function extractOC() {
  local driverItems=(
    "OpenCore/X64/EFI/OC/Drivers/AudioDxe.efi"
    "OpenCore/X64/EFI/OC/Drivers/OpenCanopy.efi"
    "OpenCore/X64/EFI/OC/Drivers/OpenRuntime.efi"
    "OpenCore/X64/EFI/OC/Drivers/ResetNvramEntry.efi"
    "OpenCore/X64/EFI/OC/Drivers/ToggleSipEntry.efi"
  )
  local toolItems=(
    "OpenCore/X64/EFI/OC/Tools/OpenShell.efi"
  )

  echo "${green}[${reset}${blue}${bold} Extracting OpenCore ${reset}${green}]${reset}"
  unzip -qq -d "OpenCore" "OpenCore/*.zip" || exit 1
  for model in "${model_list[@]}"; do

    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    mkdir -p "${!OUTDir_MODEL_OC}/EFI/OC/Tools" || exit 1
    mkdir -p "${!OUTDir_MODEL_OC}/EFI/OC/Drivers" || exit 1

    cp -R "OpenCore/X64/EFI/BOOT" "${!OUTDir_MODEL_OC}/EFI/" || copyErr
    cp "OpenCore/X64/EFI/OC/OpenCore.efi" "${!OUTDir_MODEL_OC}/EFI/OC/" || copyErr
    cp "OpenCore/X64/EFI/OC/.contentFlavour" "${!OUTDir_MODEL_OC}/EFI/OC/" || copyErr

    for driverItem in "${driverItems[@]}"; do
      cp "${driverItem}" "${!OUTDir_MODEL_OC}/EFI/OC/Drivers/" || copyErr
    done
    for toolItem in "${toolItems[@]}"; do
      cp "${toolItem}" "${!OUTDir_MODEL_OC}/EFI/OC/Tools/" || copyErr
    done
    mkdir -p "${!OUTDir_MODEL_OC}/Docs" || exit 1
    cp "OpenCore/Docs/Configuration.pdf" "${!OUTDir_MODEL_OC}/Docs/OC Configuration.pdf" || copyErr

    # Copy ocvalidate for update script
    mkdir -p "${!OUTDir_MODEL_OC}/Utilities/" || exit 1
    cp "OpenCore/Utilities/ocvalidate/ocvalidate" "${!OUTDir_MODEL_OC}/Utilities/" || copyErr
  done
  echo
}

# Generate Release Note
function genNote() {
  local lineStart
  local lineEnd
  local changelogPath

  changelogPath="${REPO_NAME_BRANCH}/Changelog.md"

  if [[ ${remote} == false ]]; then
    changelogPath="${changelogPath/${REPO_NAME_BRANCH}/..}"
  fi

  echo "${green}[${reset}${blue}${bold} Generating Release Notes ${reset}${green}]${reset}"
  # Write Release Message
  if [[ "${RLMSG}" != "" ]]; then
    echo "${RLMSG}" >>ReleaseNotes.md
  fi

  lineStart=$(grep -n "Xiaomi Notebook 14  EFI v" ${changelogPath}) && lineStart=${lineStart%%:*} && lineStart=$((lineStart + 1))
  lineEnd=$(grep -n -m2 "XiaoMi Notebook 14 EFI v" ${changelogPath} | tail -n1)
  lineEnd=${lineEnd%%:*} && lineEnd=$((lineEnd - 3))
  sed -n "${lineStart},${lineEnd}p" ${changelogPath} >>ReleaseNotes.md

  # Generate Cloudflare links when using GitHub Action to publish EFI release
  if [[ ${publish_efi} == true ]]; then
    echo "-----" >>ReleaseNotes.md
    for model in "${model_list[@]}"; do
      OUTDir_MODEL_OC="OUTDir_${model}_OC"
      echo "- [${!OUTDir_MODEL_OC}.zip](${CFURL}/https://github.com/uttusharma/${REPO_NAME}/releases/download/${CUR_TAG}/${!OUTDir_MODEL_OC}.zip)" >>ReleaseNotes.md
    done
  fi

  for model in "${model_list[@]}"; do
    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    for rNoteDir in "${!OUTDir_MODEL_OC}"; do
      cp "ReleaseNotes.md" "${rNoteDir}" || copyErr
    done
  done
  echo
}

# Exclude Trash
function cTrash() {
  echo "${green}[${reset}${blue}${bold} Cleaning Trash Files ${reset}${green}]${reset}"
  if [[ ${clean_up} == true ]]; then
    find . -maxdepth 1 ! -path "./${OUTDir_CML_OC}" -exec rm -rf {} + >/dev/null 2>&1
  fi
  echo
}

# Enjoy
function enjoy() {
  for model in "${model_list[@]}"; do
    OUTDir_MODEL_OC="OUTDir_${model}_OC"
    for buildDir in "${!OUTDir_MODEL_OC}"; do
      zip -qr "${buildDir}.zip" "${buildDir}"
    done
  done
  echo "${green}[${reset}${blue}${bold} Done! Enjoy! ${reset}${green}]${reset}"
  echo
  open ./
}

function main() {
  init
  download
  unpack
  patch

  # Install
  install

  extractOC

  # Generate Release Notes
  genNote

  # Clean up
  cTrash

  # Enjoy
  enjoy
}

main
