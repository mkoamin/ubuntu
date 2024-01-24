# ubuntu
To execute a shell script on Ubuntu, you can follow these steps:

1 Open a terminal on your Ubuntu machine.

2 Navigate to the directory where your shell script is located. For example, if your script is in the home directory, you can use the following command:
cd ~
chmod +x your_script.sh
./your_script.sh
If the script requires root (superuser) privileges, you may need to prefix the command with sudo and enter your password. For example:
sudo ./your_script.sh

Note: By default, the terminal's current working directory is not included in the system's executable search path. That's why you need to use ./ to specify the script's location explicitly.

Press Enter to execute the script.
