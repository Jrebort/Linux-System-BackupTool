
# Bksys - A system back up tools
  This is a System backup tool about Linux System.  
  I am user of ubuntu OS and I don\`t like dejagnu to backup my system.  
  Because I cannot use it to restore my system when I cannot access the graphical interface.  
  So this script came into being!
  
  ### Advantage
  **Small** - Based on tar packaging and compression, the backup file is small.  
  **Easy to manage** - Manage all backup files with a few simple commands.  
  **Command line** - Command line interface, very useful when the graphical interface crashes.  
  **Online recovery** - No need for livecd, No need to shut down!  

## How to backup your OS?
  - `cd Linux-System-BackupScript`  
  - `chmod +x ./install.sh`  
  - `sudo ./install.sh`    
  You may need to enter `storage path` here，this path is where you want to save the backup file.
  - `sudo bksys -b`
  
## Usage example

- You want to **backup** current system to the backup dir,  just run   
 &nbsp; &nbsp; &nbsp;  &nbsp; `sudo bksys -b`
 - You want to **restore** a newer system from the backup dir, just run  
 &nbsp; &nbsp; &nbsp;  &nbsp; `sudo bksys -r`
 - You want to **delete** a older system from the backup dir, just run  
&nbsp; &nbsp; &nbsp;  &nbsp;  `sudo bksys -d`
 - You want to **browse** the backed up system from the backup dir, just run  
 &nbsp; &nbsp; &nbsp;  &nbsp; `sudo bksys -l`
##  Feature
- Restore progress bar  
```
  usr/bin/x86_64-linux-gnu-g++  
  usr/bin/lsb_release  
  usr/bin/linguist  
  usr/bin/ppmdist  
  usr/bin/lzegrep  
  usr/bin/iasl  
  unpack 31%  
```
  
- Simply usage !  
```
$:~/Public/Linux-System-BackupScript$ bksys
Non root user. Please run as root.
$:~/Public/Linux-System-BackupScript$ sudo bksys   
bksys: you must specify some parameter.  
Try 'bksys -h' for more information.  
  
$:~/Public/Linux-System-BackupScript$ sudo bksys -h  
[Usage]  
Backup a new OS timestemp  
	bksys -b backup dir absolute path  
  
Remove a older OS in backup dir.  
	bksys -d backup dir absolute path  
  
Restore a newer OS timestemp  
	bksys -r backup dir absolutepath  
  
help info  
	bksys -h   
  
$:~/Public/Linux-System-BackupScript$ sudo bksys -l  
Backup file:  
Linux_backup@2020-09-21.tar.gz  
Linux_backup@2020-09-22.tar.gz  
Linux_backup@2020-09-23.tar.gz  
Linux_backup@2020-09-2.tar.gz  
Linux_backup@2020-09-8.tar.gz  
$:~/Public/Linux-System-BackupScript$ sudo bksys -d  
The date be deleted:  
2020-09-2  
$:~/Public/Linux-System-BackupScript$ sudo bksys -l  
Backup file:  
Linux_backup@2020-09-22.tar.gz  
Linux_backup@2020-09-23.tar.gz  
Linux_backup@2020-09-2.tar.gz  
Linux_backup@2020-09-8.tar.gz  
```

## Licenses
  
![avatar](./material/license.png)  
  
