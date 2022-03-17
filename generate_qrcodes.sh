#!/bin/zsh

rm -f qrcodes/*

for ff in **/*.html; do
f=${ff%%.*}
qrencode --output=qrcodes/${f/\//-}.png "https://ninsar.github.io/model-viewer-demo/$ff"
done