cd esy
pwd

INCLUDE=$cur__install/include/harfbuzz

if which x86_64-w64-mingw32-gcc; then
    CC=x86_64-w64-mingw32-gcc
    CCLIB=
else
    CC=gcc
    CCLIB="-lbz2 -lpng -lz"
fi

echo "Using compiler: $CC"

echo "include..."
ls -a $INCLUDE
echo "lib.."
ls -a $cur__lib

cp $cur__bin/*.dll .

$CC ./esy/test.c -o ./test -I$INCLUDE -L$cur__lib -lharfbuzz -L/usr/lib -L/usr/local/lib $CCLIB
./test
