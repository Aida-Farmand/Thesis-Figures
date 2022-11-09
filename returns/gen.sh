#!/bin/sh

FILENAME="fig1.4_returns"

echo "Generating ${FILENAME}.eps:"

gnuplot plot.plt > ${FILENAME}.eps

echo "Done"
echo "Generating ${FILENAME}.pdf:"

ps2pdf -dEPSCrop ${FILENAME}.eps ${FILENAME}.pdf

echo "Done"
