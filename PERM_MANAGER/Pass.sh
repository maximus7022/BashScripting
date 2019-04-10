#! /bin/bash
clear

function Menu(){
  echo -e "\e[31m<\e[0m\e[32m---\e[0m\e[31m/\e[0m\e[34mPER_MANAGER\e[0m\e[31m/\e[0m\e[32m---\e[0m\e[31m>\e[0m"
  echo -e "\e[34mChoose number of menu:\e[0m"
  echo -e "\e[31m1)\e[0mChange owner;"
  echo -e "\e[31m2)\e[0mChange permission;"
  echo -e "\e[31m3)\e[0mShow info;"
  echo -e "\e[31m0)\e[0mExit."
  echo -e "\e[31m<-------------------->\e[0m"
  read choice
}

function ChOwn(){
  echo "Enter route to file or directory:"
  read name 
  find $name
    if (( $? == 0 ))
    then
      echo "Enter new owner of file:"
      read owner
      cat /etc/passwd | grep $owner
        if (( $? == 0 ))
        then
          chown $owner $name
          echo "Owner was changed successfully!"
          echo -e "\e[31m-----------------------------------\e[0m"
          sleep 2
          clear
        else
          echo "There is no such user!"
          echo -e "\e[31m-----------------------------------\e[0m"
          sleep 2
          clear
        fi
    else
      echo "There is no such file!"
      echo -e "\e[31m-----------------------------------\e[0m"
      sleep 2
      clear
    fi
}

function ChPerm(){
  echo "Enter route to file:"
   read name
   find $name
     if (( $? == 0 ))
     then
       echo -e "\e[34mChoose number of menu:\e[0m"
       echo -e "\e[31m1)\e[0mUser;"
       echo -e "\e[31m2)\e[0mGroup;"
       echo -e "\e[31m3)\e[0mOther."
       echo -e "\e[31m-----------------------------------\e[0m"
       read choice
         if (( $choice == 1 ))
         then
            echo -e "\e[34mChoose number of menu:\e[0m"
            echo -e "\e[31m1)\e[0m+"
            echo -e "\e[31m2)\e[0m-"
            echo -e "\e[31m-----------------------------------\e[0m"
            read choice_1
              if (( $choice_1 == 1 ))
              then
                echo -e "\e[34mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0mrwx"
                echo -e "\e[31m2)\e[0mrw-"
                echo -e "\e[31m3)\e[0m-wx"
                echo -e "\e[31m4)\e[0mr-x"
                echo -e "\e[31m5)\e[0mr--"
                echo -e "\e[31m6)\e[0m-w-"
                echo -e "\e[31m7)\e[0m--x"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod u+rwx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod u+rw $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod u+wx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod u+rx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod u+r $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod u+w $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod u+x $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo "R.T.F.M!!!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi
              elif (( $choice_1 == 2 ))
              then
                echo -e "\e[34mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0mrwx"
                echo -e "\e[31m2)\e[0mrw-"
                echo -e "\e[31m3)\e[0m-wx"
                echo -e "\e[31m4)\e[0mr-x"
                echo -e "\e[31m5)\e[0mr--"
                echo -e "\e[31m6)\e[0m-w-"
                echo -e "\e[31m7)\e[0m--x"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod u-rwx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod u-rw $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod u-wx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod u-rx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod u-r $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod u-w $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod u-x $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo "R.T.F.M!!!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi

              else
                echo "R.T.F.M!!!"
                echo -e "\e[31m-----------------------------------\e[0m"
              fi
     
         elif (( $choice == 2 ))
         then
            echo -e "\e[34mChoose number of menu:\e[0m"
            echo -e "\e[31m1)\e[0m+"
            echo -e "\e[31m2)\e[0m-"
            echo -e "\e[31m-----------------------------------\e[0m"
            read choice_1
              if (( $choice_1 == 1 ))
              then
                echo -e "\e[34mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0mrwx"
                echo -e "\e[31m2)\e[0mrw-"
                echo -e "\e[31m3)\e[0m-wx"
                echo -e "\e[31m4)\e[0mr-x"
                echo -e "\e[31m5)\e[0mr--"
                echo -e "\e[31m6)\e[0m-w-"
                echo -e "\e[31m7)\e[0m--x"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod g+rwx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod g+rw $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod g+wx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod g+rx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod g+r $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod g+w $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod g+x $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo "R.T.F.M!!!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi

              elif (( $choice_1 == 2 ))
              then
                echo -e "\e[34mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0mrwx"
                echo -e "\e[31m2)\e[0mrw-"
                echo -e "\e[31m3)\e[0m-wx"
                echo -e "\e[31m4)\e[0mr-x"
                echo -e "\e[31m5)\e[0mr--"
                echo -e "\e[31m6)\e[0m-w-"
                echo -e "\e[31m7)\e[0m--x"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod g-rwx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod g-rw $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod g-wx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod g-rx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod g-r $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod g-w $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod g-x $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo "R.T.F.M!!!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi
              else
                echo "R.T.F.M!!!"
                echo -e "\e[31m-----------------------------------\e[0m"
              fi
         elif (( $choice == 3 ))
         then
            echo -e "\e[34mChoose number of menu:\e[0m"
            echo -e "\e[31m1)\e[0m+"
            echo -e "\e[31m2)\e[0m-"
            echo -e "\e[31m-----------------------------------\e[0m"
            read choice_1
              if (( $choice_1 == 1 ))
              then
                echo -e "\e[34mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0mrwx"
                echo -e "\e[31m2)\e[0mrw-"
                echo -e "\e[31m3)\e[0m-wx"
                echo -e "\e[31m4)\e[0mr-x"
                echo -e "\e[31m5)\e[0mr--"
                echo -e "\e[31m6)\e[0m-w-"
                echo -e "\e[31m7)\e[0m--x"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod o+rwx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod o+rw $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod o+wx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod o+rx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod o+r $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod o+w $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod o+x $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo "R.T.F.M!!!"
       		    echo -e "\e[31m-----------------------------------\e[0m"
                  fi

              elif (( $choice_1 == 2 ))
              then
                echo -e "\e[34mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0mrwx"
                echo -e "\e[31m2)\e[0mrw-"
                echo -e "\e[31m3)\e[0m-wx"
                echo -e "\e[31m4)\e[0mr-x"
                echo -e "\e[31m5)\e[0mr--"
                echo -e "\e[31m6)\e[0m-w-"
                echo -e "\e[31m7)\e[0m--x"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod o-rwx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod o-rw $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod o-wx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod o-rx $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod o-r $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod o-w $name
                    echo "Permission was successfully changed!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod o-x $name
                    echo "Permission was successfully changed!"  
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo "R.T.F.M!!!"
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi
              else
                echo "R.T.F.M!!!"
                echo -e "\e[31m-----------------------------------\e[0m"
              fi
         else
           echo "R.T.F.M!!!"
           echo -e "\e[31m-----------------------------------\e[0m"
         fi
     else
       echo "There is no such file!"
       echo -e "\e[31m-----------------------------------\e[0m"
     fi
}

function ShowInfo(){
 echo "Enter route to directory where the file you'd like to see info about situated:"
 read route
 find $route
 clear
   if (( $? == 0 ))
   then
     ls -l $route
     echo -e "\e[31m--------------------------------------\e[0m"
   else
     echo "There is no such directory or file!"
   fi
}

exit=true
while [ $exit == true ]
   do
     Menu;
     case $choice in
        1) ChOwn; ;;
        2) ChPerm; ;;
        3) ShowInfo; ;;
        0) echo -e "\e[31mBye!\e[0m"; let exit=false ;;
        *) echo "R.T.F.M"; ;;

     esac
   done
sleep 1
clear
