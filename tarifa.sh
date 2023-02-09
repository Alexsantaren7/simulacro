#!/bin/bash

# Preguntamos al usuario cuántas llamadas realiza al mes
echo -n "Introduce la cantidad de llamadas que realizas al mes: "
read llamadas

# Calculamos el costo de cada tarifa
costo_tarifa1=100
costo_tarifa2=50+llamadas*1
costo_tarifa3=20+llamadas*2

# Comparamos los costos y mostramos la tarifa que le conviene al usuario
if [ $costo_tarifa1 -le $costo_tarifa2 ] && [ $costo_tarifa1 -le $costo_tarifa3 ]; then
  echo "La tarifa 1 es la más conveniente, te costará $costo_tarifa1€."
elif [ $costo_tarifa2 -le $costo_tarifa1 ] && [ $costo_tarifa2 -le $costo_tarifa3 ]; then
  echo "La tarifa 2 es la más conveniente, te costará $costo_tarifa2€."
else
  echo "La tarifa 3 es la más conveniente, te costará $costo_tarifa3€."
fi
