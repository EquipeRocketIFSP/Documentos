#!/bin/bash

#Executar o script no diretorio Videos

#Arrays utilizadas para a substituicao do prontuario pelo nome do aluno, em custom.log
prontuarioArray=("sp3046711" "sp3039421" "sp3058123" "sp3035531" "sp3052737" "sp3047245" "sp146616x")
nomeArray=("Caique" "Henrique" "Irina" "Luis" "murilo" "Marcos" "welen")

#Caminhos relativos para arqs gerados e/ou consumidos
customLog="custom.log"
caption="caption.txt"
imagesPath="./Avatar"
gourcePpm="gource.ppm"
videoMp4="gource.mp4"

#Servira para checar se um arquivo existe ou nao.
checkFile()
{
    #<<$1>> eh o argumento de primeira posicao
    #assim como $2 eh o segundo argumento passado aa funcao 
    #checkFile() 
    if [ -f "$1" ];
    then
        echo "$1 exists."
    else
        echo "$1 is missing..."
        exit 0
    fi
}

#Se os arrays nao forem do mesmo tamanho ou ha nomes que 
#nao substituirao os seus prontuarios ou ha nomes de mais
checkIfArraysSameSize()
{
    if [ ${#prontuarioArray[@]} != ${#nomeArray[@]} ]
    then
	    echo "The name and prontuario arrays need to be of the same size!!!"
	    exit 0
    fi
}

#Melhor do que um ctrl+f
substituteProntuario()
{
    for i in ${!prontuarioArray[@]}; do
        sed -i "s/${prontuarioArray[$i]}/${nomeArray[$i]}/g" "${customLog}"
    done
}

createCustomLog()
{
    if gource --output-custom-log "${customLog}"
    then
        echo "${customLog} created."
    else
        echo "Gource didn't execute!!!"
        exit 0
    fi
}

#Se necessario usar --stop-date YYYY-MM-DD
createGourceArchive()
{
	
    if gource "${customLog}" --key --user-image-dir "${imagesPath}" --caption-file "${caption}" --caption-duration 4 --title "Clinitech - PI1A1" --max-file-lag -1 --hide filenames --seconds-per-day 2 --disable-auto-skip --no-vsync -1280x720 --output-framerate 25 --output-ppm-stream "${gourcePpm}"
    then
        echo "${gourcePpm} created."
    else
        echo "Gource didn't execute!!!"
        exit 0
    fi
}

createGourceVideo()
{
    if ffmpeg -y -r 25 -f image2pipe -vcodec ppm -i "${gourcePpm}" -preset medium -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 "${videoMp4}"
    then
        echo "${videoMp4} created."
    else
        echo "Ffmpeg didn't execute!!!"
        exit 0
    fi
}

#####################################################################

checkIfArraysSameSize

createCustomLog
checkFile "${customLog}"

substituteProntuario

checkFile "${caption}"
createGourceArchive
checkFile "${gourcePpm}"

createGourceVideo
checkFile "${videoMp4}"
