cp -rp harfbuzz-2.6.4 _build

cd _build

# Create harfbuzz.def to skip generating python definitions
touch src/harfbuzz.def
