#!/bin/bash

mkdir -p /home/ec2-user/dir1
mkdir -p /home/ec2-user/dir2
mkdir -p /home/ec2-user/dir3
mkdir -p /home/ec2-user/dir4
mkdir -p /home/ec2-user/dir5
mkdir -p /home/ec2-user/dir6
mkdir -p /home/ec2-user/dir3/another_dir1
mkdir -p /home/ec2-user/dir62/another_dir1
mkdir -p /home/ec2-user/dir6/another_dir12
mkdir -p /home/ec2-user/dir67/another_dir1
mkdir -p /home/ec2-user/dir6/another_dir1
mkdir -p /home/ec2-user/dir61/another_dir3
mkdir -p /home/ec2-user/dir64/another_dir1

touch /home/ec2-user/dir1/same_file.txt
touch /home/ec2-user/dir4/same_file.txt
touch /home/ec2-user/dir6/same_file.txt
touch /home/ec2-user/dir62/another_dir1/same_file.txt
touch /home/ec2-user/dir67/another_dir1/same_file.txt
touch /home/ec2-user/dir64/another_dir1/same_file.txt

touch /home/ec2-user/dir2/diff_file.txt
touch /home/ec2-user/dir3/diff_file.txt
touch /home/ec2-user/dir5/diff_file.txt
touch /home/ec2-user/dir3/another_dir1/diff_file.txt
touch /home/ec2-user/dir6/another_dir12/diff_file.txt
touch /home/ec2-user/dir6/another_dir1/diff_file.txt
touch /home/ec2-user/dir61/another_dir3/diff_file.txt

touch /home/ec2-user/dir1/file.html
touch /home/ec2-user/dir2/file.html
touch /home/ec2-user/dir3/file.html
touch /home/ec2-user/dir4/file.html
touch /home/ec2-user/dir5/file.html
touch /home/ec2-user/dir6/file.html
touch /home/ec2-user/dir67/another_dir1/file.html
touch /home/ec2-user/dir6/another_dir1/file.html
touch /home/ec2-user/dir61/another_dir3/file.html
touch /home/ec2-user/dir64/another_dir1/file.html



