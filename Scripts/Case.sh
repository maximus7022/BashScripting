#! /bin/bash
clear

exit=true

while [ $exit == true ]
  do
    echo -e "Enter month\n0. Exit"

read month

case $month in

  1|2|12) echo "Winter"; ;;

  3|4|5) echo "Spring"; ;;

  6|7|8) echo "Summer"; ;;

  9|10|11) echo "Autumn"; ;;

  0) echo "Bye!"; let exit=false ;;

  *) echo "R.T.F.M!!!"; ;;
esac

done
