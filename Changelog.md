# XiaoMi NoteBook Pro EFI Changelog

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
