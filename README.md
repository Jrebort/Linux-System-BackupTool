# Linux-System-BackupScript
  This is a Shell Script about Linux System.  
  I am user of ubuntu OS and I don\`t like dejagnu to backup my system.  
  Because I cannot use it to restore my system when I cannot access the graphical interface.  
  So this script came into being!  
  **My script is to back up the system once a day, and then only keep the last 4 days of system backup.**

## How to backup your OS?
  - `cd Linux-System-BackupScript`  
  - `chmod +x ./BackupSystem.sh`  
    
  - `su`   (Enter your root password, this need root privilege) 
  - `./BackupSystem.sh`
    
  or  
  - `sudo ./BackupSystem.sh [Option ……] [Backup dir of saving backup file]`
  
## Usage example
 I have a dir to save backup files `/home/username/backup`
 So I ready to backup my full System, just to run  
 `sudo ./BackupSystem.sh -b ~/backup`
   
 I want to restore a newer system from the backup dir, just run
 `sudo ./BackupSystem.sh -r ~/backup`
   
 You want to delet a older system from the backup dir, just run
 `sudo ./BackupSystem.sh -d ~/backup`
