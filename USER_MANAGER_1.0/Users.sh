#! /bin/bash
clear
source Functions.sh

echo ""
echo -e "\e[31m<\e[0m\e[34m--\e[0m\e[36mUSER MANAGER 1\e[0m.\e[36m0\e[0m\e[34m--\e[0m\e[31m>\e[0m"
echo "----------------------"

exit=true
while [ $exit == true ]
  do
    Menu;
    case $choice in
      1) CreateUser; ;;
      2) DeleteUser; ;;
      3) CreateGroup; ;;
      4) DeleteGroup; ;;
      5) EditUser; ;;
      6) ViewUser; ;;
      7) ViewGroup; ;;
      0) echo -e "\e[31mBye!\e[0m"; let exit=false ;;
      *) echo -e "R.T.F.M!!!\n---------------------------------------------"; ;;
    
  esac
  done

