This script will update most linux distribution packages (i.e SLES, Opensuse, Debian, Ubuntu (and variants), Red Hat Enterprise Linux (and variants) ).

You will need to create the file as root (as sudo is required to run updates).

# script
Put the package update script in your "/home/bin" directory

# Automation of script
You can use either cron or systemd timer to automate the script.
In this repo, I'm using systemd timer.
Create these two unit files ("auto-update.service" and "auto-update.timer") under /etc/systemd/system.
To create them as root owner, change directory to /etc/systemd/system

/etc/systemd/system$ touch auto-update.service auto-update.timer

Then copy and paste the commands from the repo files for created files

run these commands;

/etc/systemd/system$ sudo systemctl daemon-reload
/etc/systemd/system$ sudo systemctl enable auto-update.service
/etc/systemd/system$ sudo systemctl enable auto-update.timer
/etc/systemd/system$ sudo systemctl start auto-update.service

check the status of their statuses with
/etc/systemd/system$ sudo systemctl status -l auto-update.service 
/etc/systemd/system$ sudo systemctl status -l auto-update.timer
