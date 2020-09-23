# Linux-System-BackupScript
  This is a Shell Script about Linux System.  
  I am user of ubuntu OS and I don\`t like dejagnu to backup my system.  
  Because I cannot use it to restore my system when I cannot access the graphical interface.  
  So this script came into being!  
  **My script is to back up the system once a day, and then only keep the last 4 days of system backup.**

## How to backup your OS?
  - `cd Linux-System-BackupScript`  
  - `chmod +x ./install.sh`  
  - `sudo ./install.sh`    
  You may need to enter `storage path` here，this path is where you want to save the backup file.
  - `sudo bksys -b`
  
## Usage example

 You want to delet a older system from the backup dir, just run   
 `sudo bksys -b`
   
 You want to restore a newer system from the backup dir, just run  
 `sudo bksys -r`
   
 You want to delet a older system from the backup dir, just run  
 `sudo bksys -d`
