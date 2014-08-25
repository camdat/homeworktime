#I have no idea how this is working
#AP Physics 1
printf "\nPhysics (1st hour) \n"
curl -s http://theindependentschool.com/page/3161 |
sed s#/#-# |
awk /"$(date '+%A %m-%d')/ {p=1;next}p" |
head -n 5 |
cut -d "<" -f1 |
sed  's/.*;//' | #cuts all before ;
sed '/^\s*$/d' 
printf "\n"

#Pre Calc
printf "Pre-Calc (2nd hour) \n"
curl -s http://theindependentschool.com/page/3194/5 |
sed s#/#-# |
awk /"$(date '+%A, %B')/ {p=1;next}p" |
head -n 6 |
tail -n 2 |
sed 's#<-td>.*##' |
awk '/<td width/{flag=1;next}/medium">/{flag=0}flag' |
sed 's/^/ /'
printf "\n"

#AP US Hist.
printf "AP US History (3rd hour) \n"
curl -s http://theindependentschool.com/page/2985  |
grep $(date '+%a.,') |
sed  's/.*nbsp;//' |
sed 's#<.*##'
printf "\n"

#AP English Literature
printf "AP English Literature (4th hour) \n"
curl -s http://theindependentschool.com/page/3128/5 |
sed s#/#-# |
awk /"$(date '+%A, %B')/ {p=1;next}p" |
head -n 4 |
sed 's#</td>.*##' |
sed 's#<tr>##' |
#is there a useless uses of sed award?
sed 's#.*</span><hr/>##' |
sed 's#<-tr>##' |
sed '/^\s*$/d' |
sed 's/^/ /'
printf "\n"

#Spanish 2
printf "Spanish 2 (6th hour) \n"
curl -s http://theindependentschool.com/page/3150/5 |
sed s#/#-# |
awk /"$(date '+%A, %B')/ {p=1;next}p" |
head -n 10 |
tail -n 3 |
sed 's#.*<hr/>##' |
sed 's#<-td>.*##' |
sed 's#<br />##' |
sed 's#\&nbsp##' | 
sed 's#\&\#39\;##' |
sed 's#<tr>##' |
sed '/^\s*$/d' |
sed 's/^/ /'
printf "\n"


