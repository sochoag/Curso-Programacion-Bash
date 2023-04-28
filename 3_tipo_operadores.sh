#!/bin/bash
# Programa para revisar los tipos de operadoes
# Autor: David Ochoa - github:Sochoag

numA=10
numB=4

echo "Operadores Aritméticos"
echo "Numeros → A:$numA y B:$numB"
echo "Suma A + B = " $((numA + numB))
echo "Resta A - B = " $((numA - numB))
echo "Multiplicar A * B = " $((numA * numB))
echo "Dividir A / B = " $((numA / numB))
echo "Residuo A % B = " $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "Numeros → A:$numA y B:$numB"
echo "A > B = " $((numA > numB))
echo "A < B = " $((numA < numB))
echo "A >= B = " $((numA >= numB))
echo "A <= B = " $((numA <= numB))
echo "A == B = " $((numA == numB))
echo "A != B = " $((numA != numB))

echo -e "\nOperadores Asignación"
echo "Numeros → A:$numA y B:$numB"
echo "A += B " $((numA += numB))
echo "A -= B = " $((numA -= numB))
echo "A *= B = " $((numA *= numB))
echo "A /= B = " $((numA /= numB))
echo "A %= B = " $((numA %= numB))
