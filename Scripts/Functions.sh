function Menu(){
echo -e " \e[31mChoose number of MENU;\e[0m"
echo -e "\e[31m 1)\e[0mCreate User;"
echo -e "\e[31m 2)\e[0mDelete User;"
echo -e "\e[31m 3)\e[0mCreate Group;"
echo -e "\e[31m 4)\e[0mDelete Group;"
echo -e "\e[31m 5)\e[0mEdit User;"
echo -e "\e[31m 6)\e[0mView Users;"
echo -e "\e[31m 7)\e[0mView Groups;"
echo -e "\e[31m 8)\e[0mDelete user /home folders;"
echo -e "\e[31m 9)\e[0mView all /home user folders:"
echo -e "\e[31m 0)\e[0mExit."
echo "--------------------------------"
read choice
}

function CreateUser(){
  echo -e " \e[31m1)\e[0mName;"
  echo -e " \e[31m2)\e[0mName + UID + GID."
  read userChoice
  if (( $userChoice == 1 ))
  then
    echo "Enter username:"
    read NewUserName
    cat /etc/passwd | grep $NewUserName
      if (( $? == 0 ))
      then
        echo "User exist!!!"
        echo "------------------------------------------------------"
      else
        useradd $NewUserName
        passwd $NewUserName
        echo "------------------------------------------------------"
      fi
  elif (( $userChoice == 2 ))
  then
    echo "Enter username:"
    read NewUserName
    cat /etc/passwd | grep $NewUserName
      if (( $? == 0 ))
      then
        echo "User exist!!!"
        echo "------------------------------------------------"
      else
        echo "Enter UID:"
        read uid
        cat /etc/passwd | grep $uid
          if (( $? == 0 ))
          then
            echo "This UID is already exists!"
          else
            echo "Enter GID:"
            read gid
            cat /etc/group | grep $gid
              if (( $? == 0 ))
              then
                useradd $NewUserName -u $uid -g $gid
                passwd $NewUserName
                  echo "------------------------------------------------------"
              fi
          fi
        fi
  else
    echo "There is no such group"
    echo "-----------------------------------------------------"
  fi
}

function DeleteUser(){
  echo "Enter user name you want to delete:"
  read userDel
  cat /etc/passwd | grep $userDel
    if (( $? == 0 ))
    then
      userdel $userDel
      echo "User was deleted successfully!"
      echo "--------------------------------------------------------"
    else
      echo "There is no such user!!!"
      echo "--------------------------------------------------------"
    fi
}

function CreateGroup(){
  echo -e " \e[31m1)\e[0mName;"
  echo -e " \e[31m2)\e[0mName + GID."
  read menu
  if (( $menu == 1 ))
  then
    echo "Enter name of new group:"
    read group
    cat /etc/group | grep $group
      if (( $? == 0 ))
      then
        echo "Group exists!"
        echo "-----------------------------------------------------"
      else
        groupadd $group
        echo "New group had been successfully created!"
        echo "-----------------------------------------------------"
       fi

  elif (( $menu == 2 ))
  then
      echo "Enter name of new group:"
      read Group
      cat /etc/group | grep $Group
        if (( $? == 0 ))
        then
          echo "Group exists!"
          echo "------------------------------------------------------"
        else
          echo "Enter group GID:"
          read gidr
          cat /etc/group | grep $gidr
            if (( $? == 0 ))
            then
              echo "Such GID already exists!"
              echo "-----------------------------------------------------"
            else
              groupadd $Group -g $gidr
              echo "Group had been successfully created!"
              echo "-----------------------------------------------------"
            fi
         fi
  else
    echo "R.T.F.M!!!"
    echo "----------------------------------------------------"
  fi
}

function DeleteGroup(){
  echo "Enter name of group you want to delete"
  read delGroup
  cat /etc/group | grep $delGroup
    if (( $? == 0 ))
    then
      groupdel $delGroup
      echo "Group had been successfully removed!"
      echo "------------------------------------------------"
    else
      echo "There is no such group!"
      echo "------------------------------------------------"
    fi
}

function EditUser(){
  echo -e " \e[31m1)\e[0mChange name;"
  echo -e " \e[31m2)\e[0mChange password;"
  echo -e " \e[31m3)\e[0mChange UID;"
  echo -e " \e[31m4)\e[0mChange GID."
  read change
  if (( $change == 1 ))
  then
    echo "Enter name of user you'd like to edit:"
    read namu
    cat /etc/passwd | grep $namu
      if (( $? == 0 ))
      then
        echo "Enter new name:"
        read newName
        cat /etc/passwd | grep $newName
          if (( $? == 0 ))
          then
            echo "User with such name is already exist!"
            echo "-----------------------------------------------------"
          else
            usermod $namu -l $newName
            echo "Name was successfully changed!"
            echo "-----------------------------------------------------"
          fi
      else
        echo "There is no such user!"
        echo "------------------------------------------------------"
      fi
  elif (( $change == 2 ))
  then
    echo "Enter name of user you want to edit:"
    read username
    cat /etc/passwd | grep $username
      if (( $? == 0 ))
      then
        passwd $username
        echo "----------------------------------------------"
       else
        echo "There is no such user!"
        echo "----------------------------------------------"
      fi
  elif (( $change == 3 ))
  then
    echo "Enter name of user you want to edit:"
    read userName
    cat /etc/passwd | grep $userName
      if (( $? == 0 ))
      then
        echo "Enter new UID;"
        read uID
        cat /etc/passwd | grep $uID
          if (( $? == 0 ))
          then
            echo "This UID isn't new!"
            echo "----------------------------------------------"
          else
            usermod $userName -u $uID
            echo "UID was successfully changed!"
            echo "----------------------------------------------"
          fi
      else
        echo "There is no such user!"
        echo "----------------------------------------------"
      fi
  elif (( $change == 4 ))
  then
    echo "Enter name of user you want to edit:"
    read user_name
    cat /etc/passwd | grep $user_name
      if (( $? == 0 ))
      then
        echo "Enter new GID:"
        read gID
         cat /etc/group | grep $gID
          if (( $? == 0 ))
          then
            usermod $user_name -g $gID
            echo "GID was successfully changed!"
            echo "---------------------------------------------"
          else
            echo "There is no such group!"
            echo "---------------------------------------------"
          fi
        else
          echo "There is no such user!"
          echo "---------------------------------------------"
        fi
  else
    echo "R.T.F.M!!!"
    echo "--------------------------------------------"
  fi
}

function ViewUser(){
  echo -e " \e[31m1)\e[0mView one user;"
  echo -e " \e[31m2)\e[0mView all users."
  read view
  if (( $view == 1 ))
  then
    echo "Enter name of user you want to see:"
    read viewUser
    cat /etc/passwd | grep $viewUser
      if (( $? == 0 ))
      then
        echo "-------------------------------------------------"
      else
        echo "There is no such user!"
        echo "-------------------------------------------------"
      fi
  elif (( $view == 2 ))
  then
    less /etc/passwd
    echo "--------------------------------------------------"
  else
    echo "R.T.F.M!!!"
     echo "--------------------------------------------------"
  fi
}

function ViewGroup(){
  echo -e " \e[31m1)\e[0mView one group;"
  echo -e " \e[31m2)\e[0mView all groups."
  read viewg
    if (( $viewg == 1 ))
    then
      echo -e " \e[31m1)\e[0mFind group by name;"
      echo -e " \e[31m2)\e[0mFind group by GID."
      read seek
      if (( $seek == 1 ))
      then
        echo "Enter name of group you want to see:"
        read groupName
        cat /etc/group | grep $groupName
          if (( $? == 0 ))
          then
            echo "------------------------------------------------------"
          else
            echo "There is no such group!"
            echo "------------------------------------------------------"
          fi
      elif (( $seek == 2 ))
      then
        echo "Enter GID of group you'd like to find:"
        read groupGid
        cat /etc/group | grep $groupGid
          if (( $? == 0 ))
          then
            echo "---------------------------------------------------"
          else
            echo "There is no group with such GID!"
            echo "---------------------------------------------------"
          fi
      else
        echo "R.T.F.M!!!"
      fi
    elif (( $viewg == 2 ))
    then
       less /etc/group
      echo "-------------------------------------------------------"
    else
      echo "R.T.F.M!!!"
      echo "-------------------------------------------------------"
    fi
}

function DeleteFolder(){
  echo "Enter name of folder you'd like to delete:"
  read folder
  cd /home
  find $folder
    if (( $? == 0 ))
    then
      rm -r /home/$folder
      echo "Folder $folder was successfully removed!"
      echo "---------------------------------------------------------"
    else
      echo "There is no such folder!"
      echo "---------------------------------------------------------"
    fi
}

function ViewFolder(){
  cd /home
  ls -l
  echo "-----------------------------------------------------------"
}

