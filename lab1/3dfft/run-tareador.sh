USAGE="\n USAGE: ./run_tareador.sh prog \n
        prog        -> Tareador program name\n"

if (test $# -lt 1 || test $# -gt 1)
then
        echo -e $USAGE
        exit 0
fi

make $1 2>&1
if [[ $? -ne 0 ]]; then
    echo "Abort: Compilation Error"
    exit 0
fi

schroot -p -c tareador bash run-lite-tareador.sh $1
