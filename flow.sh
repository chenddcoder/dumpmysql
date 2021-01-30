if [ $# -eq 0 ];
then
    usage [tablename]
    exit
fi
echo "====开始导出$1===="
./dumptable.sh $1 > $1.txt
echo "====开始制作sql $1===="
./createsql.sh $1 > $1.sql
echo "====开始执行sql $1===="
./imptable.sh $1
echo "====$1 ok===="