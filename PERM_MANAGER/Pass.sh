#! /bin/bash
clear

function Menu(){
  echo -e "\e[31m<\e[0m\e[32m---\e[0m\e[31m/\e[0m\e[32mPER_MANAGER\e[0m\e[31m/\e[0m\e[32m---\e[0m\e[31m>\e[0m"
  echo -e "\e[31mChoose number of menu:\e[0m"
  echo -e "\e[31m1)\e[0m\e[32mChange owner;\e[0m"
  echo -e "\e[31m2)\e[0m\e[32mChange permission;\e[0m"
  echo -e "\e[31m3)\e[0m\e[32mShow info;\e[0m"
  echo -e "\e[31m0)\e[0m\e[32mExit.\e[0m"
  echo -e "\e[31m<-------------------->\e[0m"
  read choice
}

function ChOwn(){
  echo -e "\e[31mEnter route to file or directory:\e[0m"
  read name 
  find $name
    if (( $? == 0 ))
    then
      echo -e "\e[31mEnter new owner of file:\e[0m"
      read owner
      cat /etc/passwd | grep $owner
        if (( $? == 0 ))
        then
          chown $owner $name
          echo -e "\e[31mOwner was changed\e[0m\e[32m successfully!\e[0m"
          echo -e "\e[31m-----------------------------------\e[0m"
          sleep 2
          clear
        else
          echo -e "\e[31mThere is no such user!\e[0m"
          echo -e "\e[31m-----------------------------------\e[0m"
          sleep 2
          clear
        fi
    else
      echo -e "\e[31mThere is no such file!\e[0m"
      echo -e "\e[31m-----------------------------------\e[0m"
      sleep 2
      clear
    fi
}

function ChPerm(){
  echo -e "\e[31mEnter route to file:\e[0m"
   read name
   find $name
     if (( $? == 0 ))
     then
       echo -e "\e[31mChoose number of menu:\e[0m"
       echo -e "\e[31m1)\e[0m\e[32mUser;\e[0m"
       echo -e "\e[31m2)\e[0m\e[32mGroup;\e[0m"
       echo -e "\e[31m3)\e[0m\e[32mOther.\e[0m"
       echo -e "\e[31m-----------------------------------\e[0m"
       read choice
         if (( $choice == 1 ))
         then
            echo -e "\e[31mChoose number of menu:\e[0m"
            echo -e "\e[31m1)\e[0m\e[32m+\e[0m"
            echo -e "\e[31m2)\e[0m\e[32m-\e[0m"
            echo -e "\e[31m-----------------------------------\e[0m"
            read choice_1
              if (( $choice_1 == 1 ))
              then
                echo -e "\e[31mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0m\e[32mrwx\e[0m"
                echo -e "\e[31m2)\e[0m\e[32mrw-\e[0m"
                echo -e "\e[31m3)\e[0m\e[32m-wx\e[0m"
                echo -e "\e[31m4)\e[0m\e[32mr-x\e[0m"
                echo -e "\e[31m5)\e[0m\e[32mr--\e[0m"
                echo -e "\e[31m6)\e[0m\e[32m-w-\e[0m"
                echo -e "\e[31m7)\e[0m\e[32m--x\e[0m"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod u+rwx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod u+rw $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod u+wx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod u+rx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod u+r $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod u+w $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod u+x $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo -e "\e[31mR.T.F.M!!!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi
              elif (( $choice_1 == 2 ))
              then
                echo -e "\e[31mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0m\e[32mrwx\e[0m"
                echo -e "\e[31m2)\e[0m\e[32mrw-\e[0m"
                echo -e "\e[31m3)\e[0m\e[32m-wx\e[0m"
                echo -e "\e[31m4)\e[0m\e[32mr-x\e[0m"
                echo -e "\e[31m5)\e[0m\e[32mr--\e[0m"
                echo -e "\e[31m6)\e[0m\e[32m-w-\e[0m"
                echo -e "\e[31m7)\e[0m\e[32m--x\e[0m"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod u-rwx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod u-rw $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod u-wx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod u-rx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod u-r $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod u-w $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod u-x $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo -e "\e31mR.T.F.M!!!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi

              else
                echo -e "\e[31mR.T.F.M!!!\e[0m"
                sleep 2
                clear
                echo -e "\e[31m-----------------------------------\e[0m"
              fi
     
         elif (( $choice == 2 ))
         then
            echo -e "\e[31mChoose number of menu:\e[0m"
            echo -e "\e[31m1)\e[0m\e[32m+\e[0m"
            echo -e "\e[31m2)\e[0m\e[32m-\e[0m"
            echo -e "\e[31m-----------------------------------\e[0m"
            read choice_1
              if (( $choice_1 == 1 ))
              then
                echo -e "\e[31mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0m\e[32mrwx\e[0m"
                echo -e "\e[31m2)\e[0m\e[32mrw-\e[0m"
                echo -e "\e[31m3)\e[0m\e[32m-wx\e[0m"
                echo -e "\e[31m4)\e[0m\e[32mr-x\e[0m"
                echo -e "\e[31m5)\e[0m\e[32mr--\e[0m"
                echo -e "\e[31m6)\e[0m\e[32m-w-\e[0m"
                echo -e "\e[31m7)\e[0m\e32m--x\e[0m"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod g+rwx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod g+rw $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod g+wx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod g+rx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod g+r $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod g+w $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod g+x $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo -e "\e[31mR.T.F.M!!!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi

              elif (( $choice_1 == 2 ))
              then
                echo -e "\e[31mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0m\e[32mrwx\e[0m"
                echo -e "\e[31m2)\e[0m\e[32mrw-\e[0m"
                echo -e "\e[31m3)\e[0m\e[32m-wx\e[0m"
                echo -e "\e[31m4)\e[0m\e[32mr-x\e[0m"
                echo -e "\e[31m5)\e[0m\e[32mr--\e[0m"
                echo -e "\e[31m6)\e[0m\e[32m-w-\e[0m"
                echo -e "\e[31m7)\e[0m\e[32m--x\e[0m"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod g-rwx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod g-rw $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod g-wx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod g-rx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod g-r $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod g-w $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod g-x $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo -e "\e[31mR.T.F.M!!!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi
              else
                echo -e "\e[31mR.T.F.M!!!\e[0m"
                sleep 2
                clear
                echo -e "\e[31m-----------------------------------\e[0m"
              fi
         elif (( $choice == 3 ))
         then
            echo -e "\e[31mChoose number of menu:\e[0m"
            echo -e "\e[31m1)\e[0m\e[32m+\e[0m"
            echo -e "\e[31m2)\e[0m\e[32m-\e[0m"
            echo -e "\e[31m-----------------------------------\e[0m"
            read choice_1
              if (( $choice_1 == 1 ))
              then
                echo -e "\e[31mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0m\e[32mrwx\e[0m"
                echo -e "\e[31m2)\e[0m\e[32mrw-\e[0m"
                echo -e "\e[31m3)\e[0m\e[32m-wx\e[0m"
                echo -e "\e[31m4)\e[0m\e[32mr-x\e[0m"
                echo -e "\e[31m5)\e[0m\e[32mr--\e[0m"
                echo -e "\e[31m6)\e[0m\e[32m-w-\e[0m"
                echo -e "\e[31m7)\e[0m\e[32m--x\e[0m"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod o+rwx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod o+rw $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod o+wx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod o+rx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod o+r $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod o+w $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod o+x $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo -e "\e[31mR.T.F.M!!!\e[0m"
                    sleep 2
                    clear
       		    echo -e "\e[31m-----------------------------------\e[0m"
                  fi

              elif (( $choice_1 == 2 ))
              then
                echo -e "\e[31mChoose number of menu:\e[0m"
                echo -e "\e[31m1)\e[0m\e[32mrwx\e[0m"
                echo -e "\e[31m2)\e[0m\e[32mrw-\e[0m"
                echo -e "\e[31m3)\e[0m\e[32m-wx\e[0m"
                echo -e "\e[31m4)\e[0m\e[32mr-x\e[0m"
                echo -e "\e[31m5)\e[0m\e[32mr--\e[0m"
                echo -e "\e[31m6)\e[0m\e[32m-w-\e[0m"
                echo -e "\e[31m7)\e[0m\e[32m--x\e[0m"
                echo -e "\e[31m-----------------------------------\e[0m"
                read choice_2
                  if (( $choice_2 == 1 ))
                  then
                    chmod o-rwx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 2 ))
                  then
                    chmod o-rw $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 3 ))
                  then
                    chmod o-wx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 4 ))
                  then
                    chmod o-rx $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 5 ))
                  then
                    chmod o-r $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 6 ))
                  then
                    chmod o-w $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  elif (( $choice_2 == 7 ))
                  then
                    chmod o-x $name
                    echo -e "\e[31mPermission was\e[0m\e[32m successfully\e[0m \e[31mchanged!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  else
                    echo -e "\e[31mR.T.F.M!!!\e[0m"
                    sleep 2
                    clear
                    echo -e "\e[31m-----------------------------------\e[0m"
                  fi
              else
                echo -e "\e[31mR.T.F.M!!!\e[0m"
                sleep 2
                clear
                echo -e "\e[31m-----------------------------------\e[0m"
              fi
         else
           echo -e "\e[31mR.T.F.M!!!\e[0m"
           sleep 2
           clear
           echo -e "\e[31m-----------------------------------\e[0m"
         fi
     else
       echo -e "\e[31mThere is no such file!\e[0m"
       sleep 2
       clear
       echo -e "\e[31m-----------------------------------\e[0m"
     fi
}

function ShowInfo(){
 echo -e "\e[31mEnter route to directory where the file you'd like to see info about situated:\e[0m"
 read route
 find $route
 clear
   if (( $? == 0 ))
   then
     ls -l $route
     echo -e "\e[31m--------------------------------------\e[0m"
   else
     echo -e "\e[31mThere is no such directory\e[0m"
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
