
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
  
  **Please give it a star if you like it, and feel free to contribute code to this repository!**

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
 &nbsp; **Please do not use the computer in the system recovery phase, otherwise the system will crash.**  
 if you want to delete a specific date, run  
 ```
$ sudo ./bksys -t 2020-09-23 -r                              
No recovery path specified, default path is /
Ready to Restore: /home/yangshuang/backup/Linux_backup@2020-09-23.tar.gz
total_size:3700532378
231284
./pack 1%    
swapfile
bin/                                                                                                                 
bin/dd
bin/ntfsrecover
bin/systemd-inhibit
bin/ntfscluster
bin/ntfsmove
bin/ntfsinfo
unpack:3%
 ```
 if you want to set recovery path, run  
 ```
 $ sudo ./bksys -r/mnt                           
Recovery path is /mnt
Ready to Restore: /home/yangshuang/backup/Linux_backup@2020-09-23.tar.gz
total_size:3700532378
231284
./pack 1%    
swapfile
bin/                                                                                                                 
bin/dd
bin/ntfsrecover
bin/systemd-inhibit
bin/ntfscluster
bin/ntfsmove
bin/ntfsinfo
unpack:3%
 ```
 - You want to **delete** a older system from the backup dir, just run  
&nbsp; &nbsp; &nbsp;  &nbsp;  `sudo bksys -d`
 - You want to **browse** the backed up system from the backup dir, just run  
 &nbsp; &nbsp; &nbsp;  &nbsp; `sudo bksys -l`
 
## How to usage the tool in livecd
- Enter livecd
- Open a terminal
- Use `fdisk` to find the disk where your root directory is located. (Suppose it is /dev/sda1)
- Hang in the original system root directory in /mnt
```
$sudo mount /dev/sda1 /mnt
$sudo /mnt/home/username/Public/Linux-System-BackupScript/install.sh
The backup file storage path is not specified!
storage path:/mnt/home/username/backup
$sudo bksys -t 2020-9-22 -r/mnt
Ready to Restore: /home/yangshuang/backup/Linux_backup@2020-09-22.tar.gz
total_size:3700532378
231284
./pack 1%    
swapfile
bin/                                                                                                                 
bin/dd
bin/ntfsrecover
bin/systemd-inhibit
bin/ntfscluster
bin/ntfsmove
bin/ntfsinfo
unpack:4%
```
- OK, the recovery is complete, you can `reboot` and unplug the USB.
- Enjoy @-@ !
## Uninstall method
Just run:  
```
 chmod +x ./uninstall.sh
 sudo ./uninstall.sh
```
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
Try 'bksys --help' for more information.  
  
$:~/Public/Linux-System-BackupScript$ sudo bksys --help
[Usage]: bksys [OPTOPN...] [PATH]
bksys is a very simple and easy-to-use Linux system backup tool.

Examples:
  bksys -rpath               # Restore the system to the location of path.               
                               the default backup path is /, default restore date        
                               is newer. If you want to specify a date, see -t usage     
  bksys -b                   # Backup the current system.  
  bksys -l                   # Browse backed up systems.   
  bksys -d                   # Delete backed up systems.The default deleted file is      
                               older. If you want to specify a date, see -t usage        
  bksys -t 2020-9-20 -r      # Restore 2020-9-20 backed up system.
$:~/Public/Linux-System-BackupScript$ sudo bksys -l  
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
  
