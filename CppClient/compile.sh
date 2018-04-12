#!/bin/bash

wsdl2h -o gen/calc.h http://www.genivia.com/calc.wsdl
cd gen
soapcpp2 -j -CL -I/path/to/gsoap/import calc.h
cd ..

g++ -std=c++11 -o bin/calcclient src/Main.cpp gen/soapC.cpp gen/soapcalcProxy.cpp lib/gsoap/stdsoap2.cpp -I$(pwd)/lib/gsoap