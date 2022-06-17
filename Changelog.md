# XiaoMi NoteBook Pro EFI Changelog

## [Xiaomi Notebook 14 EFI v2.1.0](https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/releases/tag/2.2.0)
## 17-06-2022
 - Update `OpenCore` v0.8.2 (up to [acidanthera/OpenCorePkg](https://github.com/acidanthera/OpenCorePkg/commit/714fc69f96ceffc06fec3347bab66d31314bebfb))to support macOS13.0 beta 1 (22A5266r)
  - Update `Lilu` v1.6.1 
  - Update `VirtualSMC` v1.3.0 to support macOS13.0 beta 1 (22A5266r)
  - Update `AppleALC` v1.7.3  to support macOS13.0 beta 1 (22A5266r)
  - Update `WhateverGreen` v1.6.0 to support macOS13.0 beta 1 (22A5266r)
  - Update `HibernationFixup` v1.4.6 to support macOS13.0 beta 1 (22A5266r)
  - Update `BrcmPatchRAM` v2.6.3  to support macOS13.0 beta 1 (22A5266r)
  - Update `AirportItlwm` v2.2.0 (up to [OpenIntelWireless/itlwm@75411ed](https://github.com/OpenIntelWireless/itlwm/commit/c7e79479eaba340d0c374f37149f5914edd0a035)) to support macOS13.0 beta 1 (22A5266r)


## [Xiaomi Notebook 14 EFI v2.1.0](https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/releases/tag/2.1.0)
## 29-10-2022
**Update**
- Remove `USBMap.kext`
- Add `USBToolBox.kext`
- Add `UTBMap.kext`
- Remove `ECEnabler.kext`

**Bugs** 
- Fix issue #12

## 14-01-2022
 **Update**
- Update `OpenCore` v0.7.7
- Update [kext] released `AirportItlwm_Monterey` v. 2.1.0 stable 
- Update [kext] released `Lilu` v. 1.5.9 stable 
- Update [kext] released `Whatevergreen` v. 1.5.6 stable 
- Update [kext] released `AppleALC` v. 1.6.8 stable 
- Update [kext] released `IntelBluetoothFirmware` v. 2.1.0 stable 
- Add [kext] released `BlueToolFixup` v. 2.1.0 stable 
- Add [kext] released `VirtualSMC + Plugins` v. 1.2.8 stable 

**Bugs**
- Bluetooth not working 

**OpenCore**

- Update config.plist to support OpenCore v. 0.7.7:
  - Add `Booter -> Quirks -> ResizeAppleGpuBars` key and set its value to `-1` (failsafe)
  - Add `UEFI -> Quirks -> ResizeGpuBars` key and set its value to `-1` (failsafe)
  - Update `UEFI -> Drivers` structure section for enabling `HfsPlus.efi`, `OpenRuntime.efi`, `OpenCanopy.efi` and `AudioDxe.efi` in this order

## 06-18-2021

- EFI update

### Update

- Update `OpenCore` v0.7.1
