## Important Note 
- In order to make Touchpad gestures work add your ****DSDT.aml**** file in **OC/ACPI** 
- #### Headphone port and mic are not working yet
### How to get DSDT.aml ?
For that you need to dump DSDT
Guide: https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html
### Still not working ? 
Then you have to patch your own SSDT 
- You need to first dump you own DSDT/SSDT (https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html)(Tip: use OC debug method).
- After dumping first you need to decompile the files.
- Apply common patches. Check the common patching section https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
- Then compile the patched files. Add it to your OC/ACPI folder.
Full guide link https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
