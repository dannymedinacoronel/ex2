#!/bin/bash
if (( EUID != 0 ))
then
echo "ejecuta como root"
exit 10
fi
clear
opc="s"
while [[ $opc == "s" ]]
do
clear
echo -n "Indica el nombre del usario:"
read usuario
echo -n "Estas seguro?"
read respuesta
if [[ $respuesta == "s" ]]
then
userdel -r $usuario 2> /dev/null
fi

echo -n "usuario borrado continuamos?";
read opc
done
exit 10