# [SUCCESS] Xiaomi-Notebook14-Hackintosh

Tested on Catalina 10.15.6 
To install use offline installer 
[Offline Installer Tutorial](https://github.com/doesprintfwork/All-in-one-Vanilla-AMD-Hackintosh-Guide/blob/master/offline-installer-guide/offline-part-2/windows.md)


## Contents

- [Configuration](#configuration)
- [Current Status](#current-status)
- [DSDT-SSDT](#dsdt-ssdt)
- [Credits](#credits)

## Configuration

| Specifications | Detail                                                  |
| ------------------- | ------------------------------------------- |
| Computer model      | Xiaomi Notebook 14 Horizon Edition 2020 (MX350/GTX)      |
| Processor           | Intel Core i5-10210U/i7 Processor          |
| Memory              | 8GB/16GB Samsung DDR4 2400MHz              |
| Hard Disk           | Samsung NVMe SSD Controller                |
| Integrated Graphics | Intel UHD Graphics 630                     |
| Monitor             | BOE NV156FHM-N61 FHD 1920x1080 (15.6 inch) |
| Sound Card          | Realtek ALC256                             |
| Wireless Card       | Intel Wireless 9560                        |
| Touchpad            | I2C ELAN2304                               |

## Current Status
- **Discrete graphic card** is not working yet
- **Touchpad Gestures** works after adding patched DSDT/SSDT in OC
- **Display Brightness** is works after using [Enable macOS HiDPI](https://github.com/xzhih/one-key-hidpi)
- **Sound** is working need to fix headphone port <br> [Headphone Fix](https://www.elitemacx86.com/threads/fix-audio-distortion-when-using-headphones-on-laptops.185/) <br> Tip: Read-only file System Catalina "sudo mount -uw /" 
- **Intel Bluetooth** may cause sleep problems and does not support some Bluetooth devices
  - View [Work-Around-with-Bluetooth](https://github.com/daliansky/XiaoMi-Pro-Hackintosh/wiki/Work-Around-with-Bluetooth)
## DSDT-SSDT
- I have included my DSDT/SSDT in the seprate folder [HERE](https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/tree/master/DSDT:SSDT). The DSDT & SSDT are already patched. I recommend dumping your DSDT/SSDT using OC [Dumping DSDT Manually](https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html).

***Note*** : You can use my pre-compiled DSDT-SSDT but I would not recommend that because Mapping varies even with same OEM.

<!---
## Extra

<pre><font color="#3465A4"><b>System:</b></font>
  <font color="#3465A4"><b>Kernel:</b></font> 5.4.0-7642-generic x86_64 <font color="#3465A4"><b>bits:</b></font> 64 <font color="#3465A4"><b>compiler:</b></font> gcc <font color="#3465A4"><b>v:</b></font> 9.3.0 
  <font color="#3465A4"><b>Desktop:</b></font> Gnome 3.36.4 <font color="#3465A4"><b>Distro:</b></font> Pop!_OS 20.04 LTS 
  <font color="#3465A4"><b>base:</b></font> Ubuntu 20.04 LTS Focal 
<font color="#3465A4"><b>Machine:</b></font>
  <font color="#3465A4"><b>Type:</b></font> Laptop <font color="#3465A4"><b>System:</b></font> TIMI <font color="#3465A4"><b>product:</b></font> Mi NoteBook Horizon Edition 14 <font color="#3465A4"><b>v:</b></font> N/A 
  <font color="#3465A4"><b>serial:</b></font> &lt;filter&gt; 
  <font color="#3465A4"><b>Mobo:</b></font> TIMI <font color="#3465A4"><b>model:</b></font> TM1941 <font color="#3465A4"><b>v:</b></font> 014 <font color="#3465A4"><b>serial:</b></font> &lt;filter&gt; <font color="#3465A4"><b>UEFI:</b></font> TIMI 
  <font color="#3465A4"><b>v:</b></font> XMACM401P0000 <font color="#3465A4"><b>date:</b></font> 03/20/2020 
<font color="#3465A4"><b>Battery:</b></font>
  <font color="#3465A4"><b>ID-1:</b></font> BAT0 <font color="#3465A4"><b>charge:</b></font> 42.5 Wh <font color="#3465A4"><b>condition:</b></font> 49.4/47.0 Wh (105%) 
  <font color="#3465A4"><b>model:</b></font> SUNWODA R14B01W <font color="#3465A4"><b>status:</b></font> Discharging 
<font color="#3465A4"><b>CPU:</b></font>
  <font color="#3465A4"><b>Topology:</b></font> Quad Core <font color="#3465A4"><b>model:</b></font> Intel Core i5-10210U <font color="#3465A4"><b>bits:</b></font> 64 <font color="#3465A4"><b>type:</b></font> MT MCP 
  <font color="#3465A4"><b>arch:</b></font> Kaby Lake <font color="#3465A4"><b>rev:</b></font> C <font color="#3465A4"><b>L2 cache:</b></font> 6144 KiB 
  <font color="#3465A4"><b>flags:</b></font> avx avx2 lm nx pae sse sse2 sse3 sse4_1 sse4_2 ssse3 vmx 
  <font color="#3465A4"><b>bogomips:</b></font> 33599 
  <font color="#3465A4"><b>Speed:</b></font> 2407 MHz <font color="#3465A4"><b>min/max:</b></font> 400/4200 MHz <font color="#3465A4"><b>Core speeds (MHz):</b></font> <font color="#3465A4"><b>1:</b></font> 2800 <font color="#3465A4"><b>2:</b></font> 2800 
  <font color="#3465A4"><b>3:</b></font> 2800 <font color="#3465A4"><b>4:</b></font> 2800 <font color="#3465A4"><b>5:</b></font> 2800 <font color="#3465A4"><b>6:</b></font> 2800 <font color="#3465A4"><b>7:</b></font> 2800 <font color="#3465A4"><b>8:</b></font> 2800 
<font color="#3465A4"><b>Graphics:</b></font>
  <font color="#3465A4"><b>Device-1:</b></font> Intel UHD Graphics <font color="#3465A4"><b>vendor:</b></font> Xiaomi <font color="#3465A4"><b>driver:</b></font> i915 <font color="#3465A4"><b>v:</b></font> kernel 
  <font color="#3465A4"><b>bus ID:</b></font> 00:02.0 
  <font color="#3465A4"><b>Device-2:</b></font> NVIDIA GP107M [GeForce MX350] <font color="#3465A4"><b>vendor:</b></font> Xiaomi <font color="#3465A4"><b>driver:</b></font> nvidia 
  <font color="#3465A4"><b>v:</b></font> 440.100 <font color="#3465A4"><b>bus ID:</b></font> 06:00.0 
  <font color="#3465A4"><b>Display:</b></font> x11 <font color="#3465A4"><b>server:</b></font> X.Org 1.20.8 <font color="#3465A4"><b>driver:</b></font> modesetting,nvidia 
  <font color="#3465A4"><b>unloaded:</b></font> fbdev,nouveau,vesa <font color="#3465A4"><b>resolution:</b></font> 1920x1080~60Hz 
  <font color="#3465A4"><b>OpenGL:</b></font> <font color="#3465A4"><b>renderer:</b></font> Mesa Intel UHD Graphics (CML GT2) <font color="#3465A4"><b>v:</b></font> 4.6 Mesa 20.0.8 
  <font color="#3465A4"><b>direct render:</b></font> Yes 
<font color="#3465A4"><b>Audio:</b></font>
  <font color="#3465A4"><b>Device-1:</b></font> Intel <font color="#3465A4"><b>vendor:</b></font> Xiaomi <font color="#3465A4"><b>driver:</b></font> sof-audio-pci <font color="#3465A4"><b>bus ID:</b></font> 00:1f.3 
  <font color="#3465A4"><b>Sound Server:</b></font> ALSA <font color="#3465A4"><b>v:</b></font> k5.4.0-7642-generic 
<font color="#3465A4"><b>Network:</b></font>
  <font color="#3465A4"><b>Device-1:</b></font> Intel Wireless-AC 9462 <font color="#3465A4"><b>driver:</b></font> iwlwifi <font color="#3465A4"><b>v:</b></font> kernel <font color="#3465A4"><b>port:</b></font> 5000 
  <font color="#3465A4"><b>bus ID:</b></font> 00:14.3 
  <font color="#3465A4"><b>IF:</b></font> wlp0s20f3 <font color="#3465A4"><b>state:</b></font> up <font color="#3465A4"><b>mac:</b></font> &lt;filter&gt; 
<font color="#3465A4"><b>Drives:</b></font>
  <font color="#3465A4"><b>Local Storage:</b></font> <font color="#3465A4"><b>total:</b></font> 476.94 GiB <font color="#3465A4"><b>used:</b></font> 34.76 GiB (7.3%) 
  <font color="#3465A4"><b>ID-1:</b></font> /dev/sda <font color="#3465A4"><b>vendor:</b></font> Samsung <font color="#3465A4"><b>model:</b></font> MZNLH512HALU-00000 <font color="#3465A4"><b>size:</b></font> 476.94 GiB 
  <font color="#3465A4"><b>temp:</b></font> 38 C 
</pre>
-->
## Credits
- **Special Thanks to [daliansky](https://github.com/daliansky) for providing [XiaoMi-Pro-Hackintosh]**(https://github.com/daliansky/XiaoMi-Pro-Hackintosh).
- Thanks to [Acidanthera](https://github.com/acidanthera) for providing [AppleALC](https://github.com/acidanthera/AppleALC), [AppleSupportPkg](https://github.com/acidanthera/AppleSupportPkg), [HibernationFixup](https://github.com/acidanthera/HibernationFixup), [Lilu](https://github.com/acidanthera/Lilu), [NVMeFix](https://github.com/acidanthera/NVMeFix), [OcBinaryData](https://github.com/acidanthera/OcBinaryData), [OpenCorePkg](https://github.com/acidanthera/OpenCorePkg), [VirtualSMC](https://github.com/acidanthera/VirtualSMC), [VoodooInput](https://github.com/acidanthera/VoodooInput), [VoodooPS2](https://github.com/acidanthera/VoodooPS2), and [WhateverGreen](https://github.com/acidanthera/WhateverGreen).
- Thanks to [apianti](https://sourceforge.net/u/apianti), [blackosx](https://sourceforge.net/u/blackosx), [blusseau](https://sourceforge.net/u/blusseau), [dmazar](https://sourceforge.net/u/dmazar), and [slice2009](https://sourceforge.net/u/slice2009) for providing [Clover](https://github.com/CloverHackyColor/CloverBootloader).
- Thanks to [daliansky](https://github.com/daliansky) for providing [OC-little](https://github.com/daliansky/OC-little).
- Thanks to [hieplpvip](https://github.com/hieplpvip) and [syscl](https://github.com/syscl) for providing sample of DSDT patches.
- Thanks to [OpenIntelWireless](https://github.com/OpenIntelWireless) for providing [IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware).
- Thanks to [RehabMan](https://github.com/RehabMan) for providing [EAPD-Codec-Commander](https://github.com/RehabMan/EAPD-Codec-Commander), [EFICheckDisabler](https://github.com/RehabMan/hack-tools/tree/master/kexts/EFICheckDisabler.kext), [OS-X-Clover-Laptop-Config](https://github.com/RehabMan/OS-X-Clover-Laptop-Config), [OS-X-Null-Ethernet](https://github.com/RehabMan/OS-X-Null-Ethernet), and [SATA-unsupported](https://github.com/RehabMan/hack-tools/tree/master/kexts/SATA-unsupported.kext).
- Thanks to [VoodooI2C](https://github.com/VoodooI2C) for providing [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C).
- Thanks to [One-Key-HiDPI](https://github.com/xzhih/one-key-hidpi)
