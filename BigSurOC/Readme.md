## Important Note 
- In order to make Touchpad gestures work add your ****DSDT.aml**** file in **OC/ACPI** 
- ####  mic are not working yet
### How to get DSDT.aml ?
For that you need to dump DSDT
Guide: https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html
### Still not working ? 
Then you have to patch your own SSDT 
- You need to first dump you own DSDT/SSDT ( https://dortania.github.io/Getting-Started-With-ACPI/Manual/dump.html )  (Tip: use OC debug method).
- After dumping first you need to decompile the files.
- Apply common patches. Check the common patching section https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/
- Then compile the patched files. Add it to your OC/ACPI folder. <br>
Full guide link https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/

### Tip
- If you are using properTree for editing OC config.plist.
If it shows 
https://imgur.com/BuK8EWi. <br>
**Select No**
- Some tutorial on patching DSDT/SSDT:
<br>
https://www.youtube.com/watch?v=3aN1yuJEhYw&t=88s   <br>
https://www.youtube.com/watch?v=hFhvLkVU_kU&t=1668s
