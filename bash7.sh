#!/bin/bash
for username in test{1..2} super_user; do userdel -r $username; done
for groupname in test_group my_group; do groupdel $groupname; done
sed -i '/^super_user/d' /etc/sudoers
