#!/bin/bash
for groupname in test_group my_group; do
groupadd $groupname;
done
useradd -m super_user
echo "super_user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
truncate -s 100k temp
for username in test{1..2}; do
useradd -m $username -g test_group -G my_group -c "test users";
echo "password" | passwd $username --stdin > /dev/null;
cp temp /home/$username;
secondary_group=$(id -Gn $username | awk '{print $2}');
chown $username:$secondary_group /home/$username/temp;
chmod 345 /home/$username/temp;
done
rm temp
for username in test{1..2} super_user; do userdel -r $username; done
for groupname in test_group my_group; do groupdel $groupname; done
sed -i '/^super_user/d' /etc/sudoers
