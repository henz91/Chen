#! /bin/bash

#colors
GREEN='\033[0;32m'
RED='\033[0;31m'

<<<<<<< HEAD
#check if coming from file input
if test "$1" == "-f" ; then
password="$(cat $2)";
  else
  password=$1
fi

#password validtion
=======
password=$1

>>>>>>> fe4db63285508f0611bafb56ae09e02f9c35eb90
len="${#password}"

if test $len -ge 8 ; then
    echo "$password" | grep -q [0-9]
     if test $? -eq 0 ; then
           echo "$password" | grep -q [A-Z]


                if test $? -eq 0 ; then


                    echo "$password" | grep -q [a-z]   


                      if test $? -eq 0 ; then


                       printf "${GREEN}Strong password${NC}"
                       exit 1;

                   else


                       printf "${RED}weak password - must to include lower case char${NC}"
                       exit 0;

                   fi


            else


               printf "${RED}weak password - must to include capital char${NC}" 
               exit 0;

            fi


     else


       printf "${RED}weak password - must to include numbers char${NC}"   
       exit 0;

     fi


else
    printf "${RED}weak password - lenght must to be greater than or equal 10 chars${NC}"
    exit 0;
fi

