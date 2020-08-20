# [SUCCESS] Xiaomi-Notebook14-Hackintosh

Tested on Catalina 10.15.6 

## Contents

- [Configuration](#configuration)
- [Current Status](#current-status)
- [Credits](#credits)

## Configuration

| Specifications | Detail                                                  |
| ------------------- | ------------------------------------------- |
| Computer model      | Xiaomi Notebook 14 Horizon Edition 2020 (MX350/GTX)      |
| Processor           | Intel Core i5-10210U/i7 Processor     |
| Memory              | 8GB/16GB Samsung DDR4 2400MHz              |
| Hard Disk           | Samsung NVMe SSD Controller PM961/PM981    |
| Integrated Graphics | Intel UHD Graphics 630                     |
| Monitor             | BOE NV156FHM-N61 FHD 1920x1080 (15.6 inch) |
| Sound Card          | Realtek ALC298 (layout-id:30/99)           |
| Wireless Card       | Intel Wireless 9560                       |

## Current Status

  - If you are not using macOS10.16, it's still recommended to update the driver above
- **Discrete graphic card** is not working yet
- **Intel Bluetooth** may cause sleep problems and does not support some Bluetooth devices
  - View [Work-Around-with-Bluetooth](https://github.com/daliansky/XiaoMi-Pro-Hackintosh/wiki/Work-Around-with-Bluetooth)
- **Intel Wi-Fi (Intel Wireless 9560)** could work by additional configurations
  - Buy a USB Wi-Fi dongle or supported wireless card
  - Use [itlwm](https://github.com/OpenIntelWireless/itlwm) and [HeliPort](https://github.com/OpenIntelWireless/HeliPort) or [Black80211-Catalina](https://github.com/usr-sse2/Black80211-Catalina) to drive Intel Wi-Fi

## Credits
- **Special Thanks to [daliansky](https://github.com/daliansky) for providing [XiaoMi-Pro-Hackintosh]**(https://github.com/daliansky/XiaoMi-Pro-Hackintosh).
- Thanks to [Acidanthera](https://github.com/acidanthera) for providing [AppleALC](https://github.com/acidanthera/AppleALC), [AppleSupportPkg](https://github.com/acidanthera/AppleSupportPkg), [HibernationFixup](https://github.com/acidanthera/HibernationFixup), [Lilu](https://github.com/acidanthera/Lilu), [NVMeFix](https://github.com/acidanthera/NVMeFix), [OcBinaryData](https://github.com/acidanthera/OcBinaryData), [OpenCorePkg](https://github.com/acidanthera/OpenCorePkg), [VirtualSMC](https://github.com/acidanthera/VirtualSMC), [VoodooInput](https://github.com/acidanthera/VoodooInput), [VoodooPS2](https://github.com/acidanthera/VoodooPS2), and [WhateverGreen](https://github.com/acidanthera/WhateverGreen).
- Thanks to [apianti](https://sourceforge.net/u/apianti), [blackosx](https://sourceforge.net/u/blackosx), [blusseau](https://sourceforge.net/u/blusseau), [dmazar](https://sourceforge.net/u/dmazar), and [slice2009](https://sourceforge.net/u/slice2009) for providing [Clover](https://github.com/CloverHackyColor/CloverBootloader).
- Thanks to [daliansky](https://github.com/daliansky) for providing [OC-little](https://github.com/daliansky/OC-little).
- Thanks to [hieplpvip](https://github.com/hieplpvip) and [syscl](https://github.com/syscl) for providing sample of DSDT patches.
- Thanks to [OpenIntelWireless](https://github.com/OpenIntelWireless) for providing [IntelBluetoothFirmware](https://github.com/OpenIntelWireless/IntelBluetoothFirmware).
- Thanks to [RehabMan](https://github.com/RehabMan) for providing [EAPD-Codec-Commander](https://github.com/RehabMan/EAPD-Codec-Commander), [EFICheckDisabler](https://github.com/RehabMan/hack-tools/tree/master/kexts/EFICheckDisabler.kext), [OS-X-Clover-Laptop-Config](https://github.com/RehabMan/OS-X-Clover-Laptop-Config), [OS-X-Null-Ethernet](https://github.com/RehabMan/OS-X-Null-Ethernet), and [SATA-unsupported](https://github.com/RehabMan/hack-tools/tree/master/kexts/SATA-unsupported.kext).
- Thanks to [VoodooI2C](https://github.com/VoodooI2C) for providing [VoodooI2C](https://github.com/VoodooI2C/VoodooI2C).
