cd _build

touch src/harfbuzz.def
touch src/harfbuzz-subset.def
touch src/harfbuzz-icu.def
touch src/harfbuzz-gobject.def

# OS_WIN32 invokes a python def file generator for MVSC linking,
# which we don't need (it's implied by host - mingw)

echo "**BUILD STARTED**"
make build
echo "**BUILD COMPLETE**"
make install

