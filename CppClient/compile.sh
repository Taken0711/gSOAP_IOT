#!/bin/bash

#wsdl2h -o gen/MathsLibrary.h res/MathsLibrary.wsdl
#cd gen
#soapcpp2 MathsLibrary.h
#cd ..

g++ -o test src/Main.cpp gen/soapH.h