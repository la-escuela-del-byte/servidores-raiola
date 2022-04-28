#!/bin/bash

###actualizar###

function actualizar {
    yum update -y
    yum upgrade -y
}


###instalar paquetes###
function instalar_paqueteria {

    yum install wget -y
    yum install tree -y
    yum install rsync -y

}
###instalar panel web###

function instalar_panel_web {

    wget https://github.com/sibprogrammer/owp/blob/master/installer/ai.sh
    wget -O - https://raw.githubusercontent.com/sibprogrammer/owp/master/installer/ai.sh | sh 
}


###menu###
function menu_principal {

    while true; do
        echo '1) actualizar paquetes'
        echo '2) instalar paquetes'
        echo '3) instalar el panel web de OpenVZ'
        echo '\n'
        echo '\n'
        echo '\n'
        read -p "Introduce una opcion: " OPCION
        
        case $OPCION in
        
           1) actualizar;;
           2) instalar_paqueteria;;
           3) instalar_panel_web;;
           
           
        esac
    done
}


menu_principal

