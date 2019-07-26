if [ `basename $0` = "x.sh" ]; then
    cd $(dirname $0)
fi

touch $(basename $0).txt
