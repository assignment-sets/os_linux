mkdir folder1 folder2 folder3 folder4

--------------------------------------------------------------------
touch folder1/text1.txt folder1/text2.txt
touch folder2/text3.txt folder2/text4.txt
mkdir ./folder3/text5 ./folder3/text6
touch folder4/text7.txt folder4/text8.txt

--------------------------------------------------------------------
cat ./folder1/text1.txt
cat ./folder2/text3.txt

--------------------------------------------------------------------
script text4
    echo "Hello, World!"
exit

--------------------------------------------------------------------
mv folder2/text4.txt folder2/T1.txt

--------------------------------------------------------------------
cp ./folder1/text1.txt ./folder4/text8.txt

--------------------------------------------------------------------
cat ./folder2/text3.txt ./folder2/T1.txt > ./folder4/text7.txt

--------------------------------------------------------------------
mv ./folder1/text2.txt ./folder3/text5/

--------------------------------------------------------------------
cat folder2/text3.txt folder2/T1.txt > folder2/COMBINETEXT

--------------------------------------------------------------------
chmod 430 folder3/text5

--------------------------------------------------------------------
chmod 777 ./folder3/text5
rm -rf folder3

