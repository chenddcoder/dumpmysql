if [ $# -eq 0 ];
then
    usage [tablename]
    exit
fi
TABLE=$1
mysql -hhost -uuser -ppass -Ddb << EOF
select * from $TABLE;
EOF