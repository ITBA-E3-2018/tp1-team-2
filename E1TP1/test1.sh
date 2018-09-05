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
echo "Arguments: 0 1000 1000
./E3_TP1_EJ1.exe 0 1000 1000
echo "-------------------------"
echo "Arguments: 0 1000 00000001"
./E3_TP1_EJ1.exe 1 1000 00000001
echo "-------------------------"


#These cases should show error:
echo "SHOULDN'T WORK:
echo " "
echo "Arguments: 1 1 -1"
./E3_TP1_EJ1.exe 1 1 -1
echo "-------------------------"
echo "Arguments: 1 1"
./E3_TP1_EJ1.exe 1 1
echo "-------------------------"
echo "Arguments: 0 1000 1001"
./E3_TP1_EJ1.exe 1 1000 1001
echo "-------------------------"
echo "Arguments: 00 100 1"
./E3_TP1_EJ1.exe 00 100 1
echo "-------------------------"
echo "Arguments: 01 100 1"
./E3_TP1_EJ1.exe 01 100 1
echo "-------------------------"
echo "Arguments: 0 100M 1"
./E3_TP1_EJ1.exe 0 100M 1
echo "-------------------------"