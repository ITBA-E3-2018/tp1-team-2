#These cases should work:
echo "SHOULD WORK:"
echo " "

echo "Arguments: 1 1 0"
./executable 1 1 0
echo "-------------------------"
echo "Arguments: 1 0 1"
./executable 1 0 1
echo "-------------------------"
echo "Arguments: 0 0 1"
./executable 0 0 1
echo "-------------------------"
echo "Arguments: 1 0 0"
./executable 1 0 0
echo "-------------------------"
echo "Arguments: 0 0 0"
./executable 0 0 0
echo "-------------------------"
echo "Arguments: 1 12 0"
./executable 1 12 0
echo "-------------------------"
echo "Arguments: 1 3 0"
./executable 1 3 0
echo "-------------------------"
echo "Arguments: 1 1  1"
./executable 1 1  1
echo "-------------------------"
echo "Arguments: 1 1     1"
./executable 1 1     1
echo "-------------------------"
echo "Arguments: 1 3     1"
./executable 1 3     1
echo "-------------------------"
echo "Arguments: 1          3     1"
./executable 1          3     1
echo "-------------------------"
echo "Arguments: 0 1000 1000"
./executable 0 1000 1000
echo "-------------------------"
echo "Arguments: 0 1000 00000001"
./executable 1 1000 00000001
echo "-------------------------"
echo "Arguments: 0 000 00000001"
./executable 1 000 00000001
echo "-------------------------"


#These cases should show error:
echo "SHOULDN'T WORK:"
echo " "
echo "Arguments: 1 1 -1"
./executable 1 1 -1
echo "-------------------------"
echo "Arguments: 1 1"
./executable 1 1
echo "-------------------------"
echo "Arguments: 0 1000 1001"
./executable 1 1000 1001
echo "-------------------------"
echo "Arguments: 00 100 1"
./executable 00 100 1
echo "-------------------------"
echo "Arguments: 01 100 1"
./executable 01 100 1
echo "-------------------------"
echo "Arguments: 0 100M 1"
./executable 0 100M 1
echo "-------------------------"
