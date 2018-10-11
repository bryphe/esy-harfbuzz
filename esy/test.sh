
INCLUDE=$cur__install/include/harfbuzz

if which x86_64-w64-mingw32-gcc; then
    CC=x86_64-w64-mingw32-gcc
    # Copy runtime mingw files
    DEST=$(pwd)
    cp /usr/x86_64-w64-mingw32/sys-root/mingw/bin/*.dll .
else
    CC=gcc
    DEST=_build
fi

cd $DEST
pwd

echo "Using compiler: $CC"

echo "Include Path: $INCLUDE"
echo "Lib Path: $cur__lib"
echo "Bin Path: $cur__bin"

cp $cur__bin/*.dll .

$CC ./../esy/test.c -o ./test.exe -I$INCLUDE -L$cur__lib -lharfbuzz
./test.exe ./../esy/Roboto-Regular.ttf "test=>text"
