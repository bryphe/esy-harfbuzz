cd _build

# OS_WIN32 invokes a python def file generator for MVSC linking,
# which we don't need (it's implied by host - mingw)
touch src/aclocal.m4

touch src/harfbuzz.def
touch src/harfbuzz-subset.def
touch src/harfbuzz-icu.def
touch src/harfbuzz-gobject.def

echo "**BUILD STARTED**"
make
echo "**BUILD COMPLETE**"
make install

