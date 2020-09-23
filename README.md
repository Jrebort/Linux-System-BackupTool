
# Bksys - A system back up tools
  This is a Shell Script about Linux System.  
  I am user of ubuntu OS and I don\`t like dejagnu to backup my system.  
  Because I cannot use it to restore my system when I cannot access the graphical interface.  
  So this script came into being!  

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
![avatar](./material/progress_bar.png)  
- Simply usage !  
![avatar](./material/usage.png)  
