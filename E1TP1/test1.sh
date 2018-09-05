#These cases should work:
echo "SHOULD WORK:"
echo " "

echo "1 1 0"
./E3_TP1_EJ1.exe 1 1 0
echo "-------------------------"
echo "Arguments: 1 1  1"
./E3_TP1_EJ1.exe 1 1  1
echo "-------------------------"
echo "Arguments: 1 1     1"
./E3_TP1_EJ1.exe 1 1     1
echo "-------------------------"
echo "Arguments: 1 3     1"
./E3_TP1_EJ1.exe 1 3     1
echo "-------------------------"
echo "Arguments: 1          3     1"
./E3_TP1_EJ1.exe 1          3     1
echo "-------------------------"
echo "Arguments: 0          1234567890     1234567890"
./E3_TP1_EJ1.exe 1          1234567890     1234567890
echo "-------------------------"


#These cases should show error:
echo "SHOULDN'T WORK:
echo " "
echo "Arguments: 1 1 -1"
./E3_TP1_EJ1.exe 1 1 -1
echo "-------------------------"
echo "Arguments: 1 1"
./E3_TP1_EJ1.exe 1 1
