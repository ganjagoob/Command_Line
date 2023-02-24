#!/bin/bash
#Justin Hua
#ITP270
#CLI Redirection Solution
#Create a file
touch rivers.txt
#Add five river names to it
#Make sure you are adding "amazon river" to the list
echo -e "Amazon River\n" > rivers.txt 
echo -e "Nile River\n"   >> rivers.txt
echo -e "Yangtze River\n" >> rivers.txt
echo -e "Danube River\n" >> rivers.txt 
echo -e "Potomac River\n" >> rivers.txt
echo -e "Potomac River\n" >> rivers.txt
#Replace the word "amazon" with "ohio"
sed 's/Amazon/Ohio/g' rivers.txt > new_rivers.txt 
#Sort the river names alphabetically
sort new_rivers.txt > new_rivers_v2.txt
#Use command to filter out duplicates
uniq new_rivers_v2.txt > new_rivers_v3.txt
#Compare the original file and the modified copy
diff rivers.txt new_rivers_v3.txt

#One-liner
touch rivers.txt && echo -e "Amazon River\nNile River\nYangtze River\nPotomac River\nDanube River\nPotomac River" > rivers.txt && sort rivers.txt | uniq > rivers2.txt | sed 's\Amazon\Ohio\g' rivers2.txt > rivers3.txt  && diff rivers.txt rivers3.txt
