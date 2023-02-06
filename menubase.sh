#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dato"
    echo "5. Añadir echo nº para esta parte del menu"
    echo "6. Arranque de contenedores" 
    echo "7. Crear 2ºparte del menu parte de abajo de case" 
    echo "8. Ver 2º resultado opcion 7 en archivo resultado2.txt" 
    echo "9. " 
    echo "10. " 
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrando directorio"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando datos"
        date
        read foo
        ;;
    5)
        echo -e " "
        echo "Añadir echo nº para esta parte del menu"
        echo -e " "
        echo "Codigo para hacer la 1º parte del menu"
        echo -e " "

        ./pasos1.sh | cat pasos1.sh
        echo -e " "
        # echo -e "Primera línea\nSegunda línea"
        echo "Codigo creado la 1º parte del menu en archivo resultado.txt"
        echo -e " "
        cat resultado.txt
        read foo
        ;;

    6)
        echo "Arranque de contenedores"
        sed -n '9,25p' pasos2.txt
        read foo
        ;;
    7)
        echo "Crear 2ºparte del menu parte de abajo de case"
        ./pasos2.sh
        read foo
        ;;
    8)
        echo "Ver 2º resultado opcion 7 en archivo resultado2.txt"
        cat resultado2.txt
        read foo
        ;;
    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
