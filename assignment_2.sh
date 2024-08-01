mkdir -p ~/cse/cprogs ~/cse/projects


cd cse/projects


echo -e "name : gourab\nage : 20\nsex : m\naddress : kolkata" > biodata.txt


cp biodata.txt ../cprogs/text.txt


mv ../cprogs/text.txt ./


cat ./biodata.txt ./text.txt > ./datatext.txt


mv ./text.txt ./newtext.txt


chmod 666 newtext.txt


ls [abm]*


ls *[0-9]


ls ?[0-9]*


cd ~
mkdir KeepOut
chmod 400 ./KeepOut/