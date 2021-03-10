## DSDT-SSDT

 In order to make the touchpad work you need patched SSDT/DSDT. I have not included patched DSDT/SSDT
(https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/tree/master/EFI/OC)
 as DSDT may differ for each system and might cause problems.

**Method 1 (Hard)**

- You need to first dump you own DSDT. Refer here on [how to dump your DSDT](https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html)
-  After dumping first you need to decompile the files.
- Apply common patches. Check the common patching section [Patching LAPTOP DSDT/SSDTs](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)
- Then compile the patched files. Add it to your OC/ACPI folder.

So ACPI folder will look something like this.
[SCREENSHOT](https://imgur.com/vELH8lJ)

**Method 2 (Easy - Not recommended)**

- Use my precompiled files [Refer here](https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/tree/master/DSDT:SSDT/patched%20compiled)
- Copy it to your OC/ACPI directory. 
- Add the newly added files entry in config.plist
- Might cause a problem or might work.

Gesture will work then
[Screenshot](https://imgur.com/6eVyTuK)

- I have included my DSDT/SSDT in the seprate folder [HERE](https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/tree/master/DSDT:SSDT). The DSDT & SSDT are already patched. I recommend dumping your DSDT/SSDT using OC [Dumping DSDT Manually](https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html).

***Note*** : You can use my pre-compiled DSDT-SSDT but I would not recommend that because Mapping varies even with same OEM.