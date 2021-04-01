# bash1.sh
Makes ls for a non-existent file and prints a message with exitcode. It then creates this file and prints out a new exitcode. In each sub-task, send the output of ls to /dev/null.

# bash2.sh
Asks the user to enter the name of the folder it then creates. Then it changes the working directory to a new folder and displays a message about the current folder. Then it creates a new file and writes random information to it. Shows the contents of the file to the user.

# bash3.sh
Asks the user for a number (1, 2, or 3) and calls the function with the corresponding number in the name. The function displays a message containing its number.

# bash4.sh
Receives the number of the month as input and outputs its name.

# bash5.sh
Has one argument and displays its value. It also handles the error if there is no argument, and displays an appropriate message.

# bash6.sh
Create groups “test_group”, “my_group”. Create user “super_user”. Add “super_user” to sudoers file, grant ALL permissions with ability to run commands without password prompt. Create N users in test_group as primary group, my_group as secondary group and comment “test users”. Usernames are “test[1-N]”. Password is “password" for all. N=5. Create temp file with size 100k in super_user’s home dir, copy this file to test users home dir. Change ownership on copied file from superuser to $username:$secondary_group. Set permissions -wxr--r-x on copied file. Delete previously created users and groups. Remove super_user from sudoers file using SED.

# bash7.sh
Replaces killall utility.

# bash8
Init file for MongoDB.
