echo "Display first 10 lines of file contains"
head "test1.txt"
echo "Display last 10 lines of file contains"
tail "test1.txt"
echo "Display line no. 3 to 8 from file contains."
head -8 "test1.txt" |  tail -6 "test1.txt"

echo  "Display 7 lines and start from second last line in reverse manner."
tac "test1.txt" | awk {'if(NR>1)print'} | head -7



