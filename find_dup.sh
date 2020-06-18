#!/bin/bash

function help() {
  cat << EOF

Help Options: Either of these options is Mandatory
-c  : List Count + FileName
-d  : List Count + FileName + Directory
-h  : Print help message
Provide $0 <OPTION> <DIRNAME>
Example: $0 -d /home/random
EOF
  echo $1
  exit 1
}

[ ${#} -ne 2  ] && help

if [[ -z ${1} ]]; then
  echo -e "\033[0;31mYou need to provide a directory. Please check the help section by Providing "$0" -h Or Just follow below \033[0m"
    help
  exit 0
fi


DIR=$2
LINE=$(find $DIR -type f | awk -F/ '{print $NF}' | tr '[A-Z]' '[a-z]' |  sort | uniq -cd)

if [ -z "$LINE" ]
  then
    echo -e "\033[0;31mThe directory doesn't have any duplicate files present. Please run the ./makedir.sh script 1st !\033[0m"
  exit 0
fi

            #########################################################
### I Initially started off with just this so kept it as it is as an optional feature  ###
            #########################################################

function withoutdir() {
echo -e "\033[0;32mThis is running from inside $DIR directory listing only the names & counts for dup files\n\033[0m"
find $DIR -type f | awk -F/ '{print $NF}' | tr '[A-Z]' '[a-z]' |  sort | uniq -cd
    echo -e "\033[0;31mEND OF LIST\033[0m"

}


function duplicate() {
echo -e "\033[0;32mThis is running from inside $DIR directory listing the names, counts & directories for dup files\n\033[0m"
  find "$DIR" -type f | awk -F/ '{print $NF}' | tr '[A-Z]' '[a-z]' |  sort | uniq -cd \
    | while read OUT
      do
        COUNT=$( echo ${OUT} | awk '{print $1}' )
        NAME=$( echo ${OUT} |  awk '{print $2}' )
        echo "DUPLICATE_COUNT = ${COUNT} | FILE_NAME = ${NAME}"
        find -iname "${NAME}" -exec echo "  {}" ';'
        echo -e  "\n"
      done
    echo -e "\033[0;31mEND OF LIST\033[0m"
  }



case ${1} in
  (-c)               withoutdir ;;
  (-h)               help ;;
  (-d)               duplicate ;;
esac


