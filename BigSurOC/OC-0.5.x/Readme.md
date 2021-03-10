## Important Note 
- In order to make Touchpad gestures work add your ****DSDT.aml**** file in **OC/ACPI** 
- ####  mic are not working yet
### AUDIO FIX IN BIG SUR
You need to disable gatekeper in bigSur first :  

First Run this command int terminal :
```csrutil authenticated-root disable```
then If returns ```Authenticated Root status: disabled``` Goto Step 3 
else You need make changes to your OC config.plist:
 
1. NVRAM > **Add** >7c43------------------- >car-active-config 
set Type to ```DATA``` and value to ```FF0F0000```

2. NVRAM > **Delete** > 7c43------------------
Add an entry ```car-active-config``` position it on 2nd position

So you config will look like : [SCREENSHOT](https://imgur.com/JgdxGQi)

3. Follow https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/post-issues.html#disabling-sip
**EACH STEP TILL** ```sudo kmutil install --volume-root ~/livemount --update-all```
Ignore last command for now 

4. Now your root is mount at /User/-YourAccountName-/liveMount
Use finder from the top bar select go > go to folder
type /User/-YourAccountName-/liveMount/usr/bin

5. Download https://github.com/uttusharma/Xiaomi-Notebook14-Hackintosh/blob/master/POST-INSTALL/AUDIO%20FIX/ALCPlugFix.zip
 and Extract it 
6.  Drag and Drop ALCPlugFix and had-verb to the bin folder your open in step 4

then open terminal  type 
```cd /User/-YourAccountName-/liveMount/usr/bin```
```chmod 755 ./ALCPlugFix```
```chown root:wheel ./ALCPlugFix```
```chmod 755 ./hda-verb```
```chown root:wheel ./hda-verb```

Check /Library/LaunchAgents/good.win.ALCPlugFix.plist this file exist or not 
if not 
$path is the path where you have extracted ALCPlugFix zip file downloaded in step 5
```sudo cp -a "$path/good.win.ALCPlugFix.plist" /Library/LaunchAgents/```
```sudo chmod 644 /Library/LaunchAgents/good.win.ALCPlugFix.plist```
```sudo chown root:wheel /Library/LaunchAgents/good.win.ALCPlugFix.plist```
```sudo launchctl load /Library/LaunchAgents/good.win.ALCPlugFix.plist ```

7. Go back to https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/extended/post-issues.html#disabling-sip
Complete remaining Step

8. Restart

9. Run JackFix 

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
