USAGE="\n USAGE: ./run_tareador.sh prog options \n
        prog        -> Tareador program name \n
        options     -> Program options: -d -h ... \n"

if (test $# -eq 0)
then
        echo -e $USAGE
        exit 0
fi

filename=$1
shift
make $filename 2>&1
if [[ $? -ne 0 ]]; then
    echo "Abort: Compilation Error"
    exit 0
fi

options=
# Loop until all Tareador parameters are used up
while [ "$1" != "" ]; do
    options+=$1
    options+=" "
    shift
done
echo $options

schroot -p -c tareador bash run-lite-tareador.sh -- $filename "$options"
