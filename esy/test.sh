cd esy
pwd

INCLUDE=$cur__install/include/harfbuzz

if which x86_64-w64-mingw32-gcc; then
    CC=x86_64-w64-mingw32-gcc
else
    CC=gcc
fi

echo "Using compiler: $CC"

echo "include..."
ls -a $INCLUDE
echo "lib.."
ls -a $cur__lib

cp $cur__bin/*.dll .

$CC ./test.c -o ./test -I$INCLUDE -L$cur__lib -lharfbuzz
./test
