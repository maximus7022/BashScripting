#! /bin/bash
clear

echo "Enter month 1-12";
read month

if (( $month == 1 || $month == 2 || $month == 12 ))
  then
    echo "Winter!"

elif (( $month == 3 || $month == 4 || $month == 5 ))
  then
    echo "Spring!"

elif (( $month == 6 || $month == 7 || $month == 8 ))
  then
    echo "Summer!"

elif (( $month == 9 || $month == 10 || $month == 11 ))
  then
    echo "Autumn!"

else
  echo "P.T.F.M"
fi
