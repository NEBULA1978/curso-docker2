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
    echo "9. Listar los contenedores que se encuentren en funcionamientos" 
    echo "10. Listar TODOS los contenedores(Parados y en funcionamiento)" 
    echo "11. Ver información de un contenedor
sudo docker inspect <id o nombre del contenedor>" 
    echo "12. Parar un contenedor" 
    echo "13. Poner en marcha otra vez un contenedor" 
    echo "14. Eliminar un contenedor parado" 
    echo "15.  Ver los logs de un contenedor" 



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
        9)
        echo "Listar los contenedores que se encuentren en funcionamientos"
        docker ps
        read foo
        ;;
    10)
        echo "Listar TODOS los contenedores (Parados y en funcionamiento)"
        docker ps -a
        read foo
        ;;
    11)
        echo "Ver información de un contenedor: sudo docker inspect <id o nombre del contenedor>"
        echo "Introduce el ID o nombre del contenedor: "
        read contenedor
        docker inspect $contenedor
        read foo
        ;;
    12)
        echo "Parar un contenedor: sudo docker stop <id o nombre del contenedor>"
        echo "Introduce el ID o nombre del contenedor: "
        read contenedor
        docker stop $contenedor
        read foo
        ;;
    13)
        echo "Poner en marcha otra vez un contenedor: sudo docker start <id o nombre del contenedor>"
        echo "Introduce el ID o nombre del contenedor: "
        read contenedor
        docker start $contenedor
        read foo
        ;;
    14)
        echo "Eliminar un contenedor parado: sudo docker rm <id o nombre del contenedor>"
        echo "Introduce el ID o nombre del contenedor: "
        read contenedor
        docker rm $contenedor
        read foo
        ;;
    15)
        echo "Ver los logs de un contenedor: sudo docker logs <id o nombre del contenedor>"
        echo "Introduce el ID o nombre del contenedor: "
        read contenedor
        docker logs $contenedor
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
