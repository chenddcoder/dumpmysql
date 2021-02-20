if [ $# -eq 0 ];
then
    usage [tablename]
    exit
fi
#数据中有单引号需要做转义
awk '{if(NR>1){
gsub(/\047/,"\047\047");
gsub(/\t/,"\047,\047");
print "insert into '$1' values (\047"$0"\047);"
}
}' $1.txt | awk '{gsub(/\047NULL\047/,"NULL"); print $0}'