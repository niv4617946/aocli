#!/bin/bash

trap ctrl_c INT
function ctrl_c(){
	echo -e "\n${Red}Bye!!${Neu}\n" 2>/dev/null
	exit 1
}

#ASCII. Extraidos de: https://emojicombos.com/anime-ascii-art

ABDL=$(echo " ____    _____    _
|  _ \  |  __ \  | |
| |_) | | |  | | | |
|  _ <  | |  | | | |
| |_) | | |__| | | |____
|____/  |_____/  |______|")

WLC=$(echo "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿
⡇⣶⠆⣴⣶⡶⢠⡖⡴⣴⠂⢄⣒⡂⡶⣐⣒⣒⣒⡂⢲⡆⢲⣦⠐⣶⣶⣶⣶⣶⠀⡔⣶⣶⣶⡶⢠⣶⡀⡆⣶⡶⠶⡀⢢⢶⡖⡀⠄⡲⣶⣶⣖⡆⠠⢰⣶⣆⢶⡄⢲⢸
⡇⡟⡆⣿⣿⡇⣾⠃⣿⠃⢢⣿⣿⡇⣧⣿⣿⣿⣿⣷⡀⣿⢠⢻⣆⠜⣿⣿⣯⣿⡇⢧⢻⠛⣿⢃⣾⣿⡅⢧⣶⣿⣿⣿⣔⠕⠳⢳⡌⢄⠙⣿⣿⡼⢂⢃⢿⣿⡜⡇⣇⢸
⡇⢇⡇⣿⣿⠀⣿⠸⡟⢀⣿⣿⣿⣇⢸⣿⣿⣿⣿⣿⣧⡸⣇⣧⢿⣄⠸⣿⣿⣻⣿⢸⡜⡤⣿⢸⣿⣿⠇⣸⣿⣿⣿⣿⣿⣧⣻⡄⢿⣄⠄⠘⣿⣿⣼⡘⢸⣿⡇⡇⢸⢸
⡇⢸⡇⠟⣿⠀⡟⠀⢁⣾⣿⡿⢿⣛⡸⠿⠯⠿⣿⣛⡿⣷⣝⢞⢷⡙⢦⠈⢿⣿⣿⡀⣷⡄⠞⣾⣿⡿⣰⣿⣿⣿⡿⣿⣻⠿⠯⠿⠦⣝⢳⠄⠈⢿⡆⡇⢺⣿⡇⣇⢸⢸
⡇⢸⡇⠠⣿⡀⡇⢀⣿⠿⠉⠈⠁⢀⣀⠀⠀⠀⠀⠀⠉⠓⢿⣯⣏⠻⣦⣕⠄⠙⢿⣧⠘⣿⣦⣻⣿⣿⣿⣿⣿⠗⠋⠁⠀⣀⠀⠀⠀⠀⠀⠉⠐⠀⠃⡃⢸⣿⡇⢸⢸⣸
⡇⡘⣿⠀⢺⡇⠃⢈⠁⠀⢠⣴⠀⣬⡍⠀⠀⠀⢠⣦⠀⣤⡐⢌⢿⣷⣬⣻⢷⣥⣀⠘⠳⡘⣿⣿⣿⣿⣿⠟⠅⣠⡔⢀⣬⡅⠀⠀⠀⣰⣦⠰⣤⠀⠀⠁⢸⡿⢀⡟⣿⢸
⡇⡇⣿⡆⠈⢿⡀⢾⣿⣄⠸⣿⠸⣿⣧⠀⠀⢀⣾⣯⠶⢿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⣌⣻⣿⣿⣿⣿⣴⣿⣧⢸⣿⣇⠀⠀⣠⣿⡷⠶⡟⢀⣾⠃⣾⠃⣼⠃⣿⢸
⡇⣇⠿⣷⠐⡌⢧⠸⣿⣿⣷⢽⠣⠹⢿⣿⣿⡿⠿⢋⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡂⠹⠿⣿⣿⣿⠿⠣⣪⢵⣿⠇⣸⠃⢠⡟⣰⣿⢸
⡇⣿⢠⣿⡇⢹⡆⢣⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣴⠁⢰⢸⢱⢸⣿⢸
⡇⣿⡼⢹⣿⡀⢻⣮⡂⠻⣿⣿⣿⡿⣽⣟⡾⣷⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣻⢯⡿⣽⣿⣿⠟⠑⢠⡆⠐⠇⠎⣾⣿⢸
⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾")

WLC2=$(echo "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⠿⠿⠿⣶⣦⣀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⠛⠉⠀⠀⠀⠀⠀⠀⠉⠻⣧⡀⠀
⢠⣄⣀⣀⣀⣀⣀⣀⣀⣴⠋⠀⠀⠀⠀⠀⣴⣆⠀⠀⠀⠀⠘⣿⡀
⠀⠙⠻⣿⣟⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠘⠿⠋⠀⠀⠀⠀⠀⣿⡇
⠀⠀⠀⠀⠙⢷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇
⠀⠀⠀⠀⠀⠀⠘⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⠃
⠀⠀⠀⠀⠀⠀⢰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀
⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀
⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠃⠀
⠀⠀⠀⠀⢀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀
⠀⠀⠀⠀⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠇⠀⠀")

#COLORES

Cian='\e[36m'
Neu='\e[0m'
Yel='\e[33m'
Red='\e[31m'
Gre='\e[32m'
Gra='\e[37m'

#FUNCIONES

function url_bus(){
 mon2_url=$(echo $1 | sed "s/@/\%40/g" | tr -d '(){},~:;' | tr '\ ' '\+' )
 curl -s https://monoschinos2.com/buscar?q=$mon2_url | html2text | grep "Resultados de" -A 153 | grep "^=======" -B 153 | grep -E "\[|\]" | tr -d '\[\]' | tr '\_' '\ '
 #jk_url=$(echo $1 | tr -d '@(){},~:;' | tr 'A-Z' 'a-z' | tr '\ ' '-')
 #jk2_url=$(echo $1 | sed "s/@/\%40/g" | tr -d '(){},~:;' | tr '\ ' '_')
 #for i in {1..9}; do curl -s https://jkanime.net/buscar/$jk2_url/$i/ | html2text | grep "Filtrar" -A 101 | grep -E "^\*|\*^" | tr -d '\*' | tr '_' '\ '; done
 curl -s https://www3.animeflv.net/browse?q=$mon2_url | html2text | grep "Filtrar" -A 257 | grep "Â«" -B 257 | grep -E "\[|\]" | cut -d ']' -f1 | tr -d '[' | tr '_' '\ '
 for i in {1..9}; do curl -s https://www3.animefenix.tv/animes?q=$mon2_url&page=$i | html2text | grep "Filtrar" -A 109 | grep "AnimeFenix" -B 109 | grep -E "\[|\]" | tail -n 27 | tr -d '[' | tr -d ']' | tr '_' '\ '; done
 curl -s https://tioanime.com/directorio?q=$mon2_url | html2text | grep "Buscar Limpiar" -A 95 | grep "[logo]" -B 95 | grep "\_" | tr -d '\ *' | tr '^_' '\ '
}

function buscar(){
	url_bus $1 >coincidencias.txt
	coin2=$(sort coincidencias.txt | sed -e 's/[ \t]*//' | uniq -u | iconv -f utf-8 -t ascii//translit)
    coin3=$(echo "$coin2" | wc -l)
    if [[ $coin3 == 0 ]]; then
        echo -e "${Red}[!]No se encontraron coincidencias[!]${Neu}\n"; clear; bienvenida
    else
        echo -e "${Yel}--Coincidencias--${Neu}\n"
        ink=1; asf=0
        while [[ $ink -le $coin3 ]]; do arrei=$(echo "$coin2" | head -n $ink | tail -n 1 | iconv -f utf-8 -t ascii//translit); echo -e "${Yel}[$ink]${Neu} $arrei"; let ink++; done
        #while [[ $asf > $coin3 ]]
        echo -ne "Selecciona el anime. R[1-$coin3]: "; read asf
        asf1=$(echo "$coin2" | head -n $asf | tail -n 1 | iconv -f utf-8 -t ascii//translit)
    fi
    anime_sel "$asf1"
}

function busel(){
    clear
	echo -e "$WLC2\n"
    echo -ne "${Cian}Buscar anime:${Neu} "; read buanim
    buscar "$buanim"
}

sigsis=0
function anime_sel(){
    clear
    rm -f coincidencias.txt
	mon_url=$(echo $1 | sed "s/@/\ at\ /g" | tr -d '(){},~:;%!' | tr 'A-Z' 'a-z' | tr '\ ' '-')
	jk_url=$(echo $1 | tr -d '@(){},~:;!+&.-' | tr 'A-Z' 'a-z' | tr '\ ' '-' | sed 's/--/-/g')
	ct1=$(curl -s https://jkanime.bz/$mon_url/ | html2text | grep "_-_" | tr -d '_' | tr '-' '\ ' | awk 'NF{print $NF}' | tail -n 1)
	ct3=$(curl -s https://tioanime.com/anime/$mon_url | grep "var episodes" | head -n 1 | cut -d '[' -f2 | cut -d ',' -f1)
    ct2=$(echo "$ct1" | wc -l)
    ct4=$(echo "$ct3" | wc -l)
    if [[ $sigsis != 1 ]]; then
	if [[ $ct2 == 0 && $ct4 == 0 ]]; then
	    echo -e "${Cian}Capitulos disponibles${Neu} --> ${Yel}[Capitulos desconocidos]${Neu}"
    else
    	if [[ $ct2 -gt 0 && $ct4 == 0 ]]; then
        	echo -e "${Cian}Capitulos disponibles${Neu} --> ${Yel}[1..$ct1]${Neu}"
        else
        	if [[ $ct2 == 0 && $ct4 -gt 0 ]]; then
        		echo -e "${Cian}Capitulos disponibles${Neu} --> ${Yel}[1..$ct4]${Neu}"
        	else
        		echo -e "${Cian}Capitulos disponibles${Neu} --> ${Yel}[1..$ct1]${Neu}"
        	fi
        fi
    fi
    echo -ne "${Cian}#NC${Neu}: "; read cap
	else
	    cap=$(cat historial.txt | tail -n 1 | awk 'NF{print $NF}')
	    let cap++
	fi
	hist=$(cat historial.txt | wc -l)
    if [[ $hist == 0 ]]; then echo -e "-Anime-\t\t\t\t\t\t\t\tCapitulo" > historial.txt; fi
    echo -e "[?]'$1'\t\t\t\t\t\t\t\t$cap">>historial.txt
    ###
	#MONOSCHINOS2
	vid1=$(curl -s https://monoschinos2.com/ver/$mon_url-episodio-$cap | grep "data-player" | cut -d '"' -f4 | head -n -1 | tail -n -1 | base64 -d | cut -d '~' -f1)
	mpv "$vid1" 2>/dev/null
	if [[ $? == 2 ]]; then
	vid2=$(curl -s https://monoschinos2.com/ver/$mon_url-episodio-$cap | grep "data-player" | cut -d '"' -f4 | head -n 1 | base64 -d | cut -d '~' -f1)
	mpv "$vid2" 2>/dev/null
	if [[ $? == 2 ]]; then
	vid3=$(curl -s https://monoschinos2.com/ver/$mon_url-episodio-$cap | grep "data-player" | cut -d '"' -f4 | tail -n 1 | base64 -d | cut -d '~' -f1)
	mpv "$vid3" 2>/dev/null
    #diff compa1.txt compa2.txt -> intento de saltar a big buck bunny HDSPM (hijo del santo padre misericordioso :v)
	#JKANIME.... Jkanime.net o .bz no permiten acceder por link directo debido a permisos. Igual aqui esta el link de los videos por si te interesa.
	#wget -p https://jkanime.net/$mon_url/$cap/
	#jk_fb=$(cat jkanime.net/um.* | grep "url" | cut -d "'" -f2 | head -n 1)
	#echo "jk_fb"
	#ANIMEFLV
	if [[ $? == 2 ]]; then
	vid4a=$(curl -s https://www3.animeflv.net/ver/$mon_url-$cap | grep "var videos" | head -n 1 | cut -d '"' -f54 | cut -d '/' -f5)
	vid4b=$(echo -n "https://www.yourupload.com/watch/$vid4a")
	mpv "$vid4b" 2>/dev/null
	if [[ $? == 2 ]]; then
	vid5a=$(curl -s https://www3.animeflv.net/ver/$mon_url-$cap | grep "var videos" | head -n 1 | cut -d '"' -f70 | cut -d '/' -f6 | cut -d '#' -f1)
	vid5b=$(echo -n "https://my.mail.ru/video/embed/$vid5a")
	mpv "$vid5b" 2>/dev/null
	if [[ $? == 2 ]]; then
	vid5c=$(curl -s https://www3.animeflv.net/ver/$mon_url-$cap | grep "var videos" | head -n 1 | cut -d '"' -f86 | cut -d '/' -f6 | cut -d '#' -f1)
    vid5d=$(echo -n "https://my.mail.ru/video/embed/$vid5a")
    mpv "$vid5d" 2>/dev/null
    if [[ $? == 2 ]]; then
	vid6a=$(curl -s https://www3.animeflv.net/ver/$mon_url-$cap | grep "var videos" | head -n 1 | cut -d '"' -f70)
    mpv "$vid6a" 2>/dev/null
	vid6b=$(curl -s https://www3.animeflv.net/ver/$mon_url-$cap | grep "var videos" | head -n 1 | cut -d '"' -f86)
    mpv "$vid6b" 2>/dev/null
	#ANIMEFENIX
	if [[ $? == 2 ]]; then
	vid7a=$(curl -s https://www3.animefenix.tv/ver/$mon_url-$cap | grep "&code" | cut -d '"' -f2 | head -n 2 | tail -n 1)
	wget -p $vid7a
	vid7b=$(cat www3.animefenix.tv/redirect* | grep 'src="h' | cut -d '"' -f6)
	mpv $vid7b 2>/dev/null
	rm -r -f www3* wget*
	if [[ $? == 2 ]]; then
	vid8a=$(curl -s https://www3.animefenix.tv/ver/$mon_url-$cap | grep "&code" | cut -d '"' -f2 | tail -n 4 | head -n 1)
    wget -p $vid8a
    vid8b=$(cat www3.animefenix.tv/redirect* | grep 'src="h' | cut -d '"' -f6)
    mpv $vid8b 2>/dev/null
    rm -r -f www3* wget*
    if [[ $? == 2 ]]; then
    vid9a=$(curl -s https://www3.animefenix.tv/ver/$mon_url-$cap | grep "&code" | cut -d '"' -f2 | tail -n 3 | head -n 1 | cut -d '%' -f8 | sed 's/2F//')
    vid9b=$(echo -n "https://sendvid.com/embed/$vid9a")
    mpv $vid9b 2>/dev/null
    if [[ $? == 2 ]]; then
    vid10a=$(curl -s https://www3.animefenix.tv/ver/$mon_url-$cap | grep "&code" | cut -d '"' -f2 | tail -n 2 | head -n 1 | cut -d '=' -f3 | sed 's/&thumbnail//')
    vid10b=$(echo -n "https://www.yourupload.com/embed/$vid10a")
    mpv $vid10b 2>/dev/null
    if [[ $? == 2 ]]; then
    vid11=$(curl -s https://tioanime.com/ver/$jk_url-$cap | grep "var video" | cut -d '"' -f16 | tr -d '\\')
    mpv $vid11 2>/dev/null
    if [[ $? == 2 ]]; then
    vid2=$(curl -s https://tioanime.com/ver/$jk_url-$cap | grep "var video" | cut -d '"' -f20 | tr -d '\\')
    fi; fi; fi; fi; fi; fi; fi; fi; fi; fi; fi; fi
    if [[ $? == 2 ]]; then bienvenida; else siguiente; fi
}

function siguiente(){
    echo -ne "Ver siguiente capitulo?\n[s] Si\t[n] No\n~: "; read sicap
    if [[ $sicap == 's' ]]; then
        sigsis=1
        nua=$(cat historial.txt | tail -n 1 | cut -d "'" -f2)
        anime_sel $nua
    else
        sigsis=0
        bienvenida
    fi
}

function histo(){
    clear
    hj=$(cat historial.txt | wc -l)
    if [[ $hj == 0 ]]; then echo "Tu no has visto nada..."; sleep 0.3s; bienvenida
    else
    cat historial.txt; read -p "Presiona 'enter' para volver"; bienvenida
    fi
}

function basdatloc(){
	arg='s'
	while [[ $arg == 's' ]]; do
    clear
    echo -e "$ABDL\n~~~~~~~~~~\n"
    echo -e "Estados:\t${Red}[+] Favoritos${Neu}\t\t${Yel}[=] Completados${Neu}\t\t${Cian}[-] Viendo${Neu}\t\t${Gra}[/] Espera${Neu}\n"
	read -p "Anime: " anhis
    read -p "Estado: " anstat
	if [[ $anstat == '+' || $anstat == '=' || $anstat == '-' || $anstat == '/' ]]; then
    	echo "$anstat$anhis">>BDL.txt
		echo "Anime agregado..."
    	echo -ne "\nContinuar agregando?\n[s] Si\t[n] No\n~: "
    	read arg
    else
    	echo -e "\nIngresa un estado valido."; sleep 0.5s; basdatloc
    fi
	done
	bienvenida
}

function verbdl(){
	arg='s'
    while [[ $arg == 's' ]]; do
    clear
    echo -e "$ABDL\n~~~~~~~~~~\n"
    echo -e "Estados:\t${Red}[+] Favoritos${Neu}\t\t${Yel}[=] Completados${Neu}\t\t${Cian}[-] Viendo${Neu}\t\t${Gra}[/] Espera${Neu}\t\t${Gre}[x] Todos${Neu}\n"
    read -p "Ver: " anstv
    if [[ $anstv == '+' || $anstv == '=' || $anstv == '-' || $anstv == '/' || $anstv == 'x' ]]; then
    	if [[ $anstv == 'x' ]]; then celcc=$(cat BDL.txt); echo -e "\n${Gre}$celcc${Neu}"
    	else
    		elcc=$(cat BDL.txt | grep "$anstv" | tr -d "$anstv")
				if [[ $anstv == '+' ]]; then celcc=${Red}; else if [[ $anstv == '=' ]]; then celcc=${Yel}; else if [[ $anstv == '-' ]]; then celcc=${Cian}; else if [[ $anstv == '/' ]]; then celcc=${Gra}; fi; fi; fi; fi
    			echo -e "\n${celcc}$elcc${Neu}"
    	fi
    	echo -ne "\nVer otro estado?\n[s] Si\t[n] No\n~: "
    	read arg
    else
    	echo -e "\nIngresa un estado valido"; sleep 0.5s; verbdl
    fi
    done
    bienvenida
}

function bienvenida(){
	clear
	while [[ $opc != 'q' ]]; do
    echo -e "$WLC\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\t\t   ${Cian} ---->ANIME ON CLI<----${Neu}\n"
    echo -e "${Yel}a)${Neu} Ver anime\n${Yel}b)${Neu} Registrar anime en BDL\n${Yel}c)${Neu} Ver BDL\n${Yel}h)${Neu} Historial\n${Yel}q)${Neu} Salir del programa\n"
    echo -ne "${Cian}Ejecutar:${Neu} "; read opc
        case $opc in
            a) busel;;
            b) basdatloc;;
            c) verbdl;;
            h) histo;;
			q) clear; exit 0;;
            *) echo "Ingresa una opcion valida"; sleep 0.5s; bienvenida;;
        esac
	done
}

bienvenida
