# Wipro Assignment

#### This assignment deals with finding duplicate files by name, inside a directory recursively i.e also inside its subdirectories. It has been writen in shell/bash scripting. It will also prompt you if the direcotory has no duplicates !!

## HOW TO GUIDE

Run the ./find_dup.sh script straight away. It has some prebuild help sections inside to help you too. 
You can just run ./find_dup.sh ENTER    OR  ./find_dup.sh -c   OR ./find_dup.sh -d

I have tried to cover almost all use case scenarious & debug msgs if you miss to specify any argument/parameter.
Initially I started off with just listing the counts & file names , but later on I added this feature to print the directories as well. Hence kept both...

```
Help Options: Either of these options is Mandatory
-c  : List Count + FileName
-d  : List Count + FileName + Directory
-h  : Print help message
Provide ./find_dup.sh <OPTION> <DIRNAME>
Example: ./find_dup.sh -d /home/random
```

*NOTE: I have also added a script named ./mkdir.sh. This will allow you to create some random directories and files in your current directory so that you can test the above script in an effictive way !! Just run ./mkdir.sh ENTER*



