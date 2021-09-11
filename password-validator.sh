#! /bin/bash

#colors
GREEN='\033[0;32m'
RED='\033[0;31m'

password=$1

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

