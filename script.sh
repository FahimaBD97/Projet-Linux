#!/bin/bash

function monsite {
rm new.html
touch new.html
cat header.txt >>new.html

if [ -e "images/poney.jpeg" ]; then

echo "<div class='esponsive'>
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
</div> " >>  new.html
fi
firefox new.html

}

if [ $# -eq 0 ] ;then
monsite
fi

function help {
echo "mon help"
}
if [ $1 = "--help"  ] || [ $1 = "-h"  ]  ; then  
help

fi
 





