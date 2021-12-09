#!/bin/bash
#recuperation des images
function monsite {
rm new.html
touch new.html
cat header.txt >> new.html

if [ -e "images/poney.jpeg" ]; then
echo "<div class='responsive'>
  <div class='gallery'>
    <a target='_blank' href='images/poney.jpeg' >
      <img src='images/poney.jpeg' alt=''  >
    </a>
    <div class='desc'>image poney</div>
  </div> " >> new.html
fi

if [ -e "images/cafe.jpeg" ]; then
echo "<div class='responsive'>
 <div class='gallery'>
 <a target='_blank' href='images/cafe.jpeg'>
      <img src='images/cafe.jpeg' alt=''  >
    </a>
    <div class='desc'>image cafe</div>
  </div>
</div> " >> new.html
fi

if [ -e "images/capybara.jpeg" ]; then

echo "<div class='responsive'>
  <div class='gallery'>
    <a target='_blank' href='images/capybara.jpeg'>
      <img src="images/capybara.jpeg" >
    </a>
    <div class='desc'>image capybara</div>
  </div>
</div>" >> new.html
fi


if [ -e "images/corse.png" ]; then

echo "<div class='responsive'>
  <div class='gallery'>
    <a target='_blank' href='images/corse.png'>
      <img src='images/corse.png' alt=''  >
    </a>
    <div class='desc'>geo corsica</div>
  </div>
</div> " >>  new.htm
fi
cat footer.txt >> new.html

firefox new.html

}

#la fonction help

function help {
echo "--help "
echo "--build  /taper le chemain du dossier ou copier votre le script"
echo "--build  /taper le chemain du dossier ou copier votre le script"
echo " build --debug   pour créer un fichier qui vous affiche les lignes de l'executable "
echo " connect  pour vous authentifier "
}
if [ $1 = "--help"  ] || [ $1 = "-h"  ]  ; then  
help
fi

# fonction pour deplacer les fichier du projet vers un nouveau dossier 

function --build {

cp script.sh "$1"
cp header.txt "$1"
cp new.html "$1"
cp footer.txt "$1"
cp -r images "$1"
cp vitrin.html "$1"
cd "$1"

wget -q --spider http://google.com

if [ $? -eq 0 ];then
 monsite

else
 echo "veuiller verifier votre connexion"
fi

#debaugage 

exec 5 > command.txt
BASH_XTRACEFD= "5"
set -x

}

if [ "$1" = "--build" ]; then
--build "$2"
fi

if [ "$1" = "build --debug" ]; then
command.txt 
fi 

#authentification 

function connect{

echo  "$entrez votre nom "

read "$nom_utilisateur : " 
echo "$entre votre mot de passe"

read "$mot de passe : "
}

if [ "$1" = " connect" ]; then
connect
fi
}

#appel à la fonction monsite s'il n'y a plus de paramétres 
if [ $# -eq 0 ] ;then
monsite
fi




