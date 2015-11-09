#!/bin/sh

CHANNEL="teamcostanzo"

if [ $1 = "success" ]; then
  ICON_URL="http://static.blastingnews.com/media/photogallery/2013/11/5/275x270/39957_maurizio-costanzo-condizioni-di-salute-non-preoccupanti.jpg";
  MESSAGE="Ce lo abbiamo un micofono pe quetta bid vedde";
else
  ICON_URL="http://www.corrieredelcorsaro.it/wp-content/uploads/2014/06/costanzo.jpg"
  MESSAGE="Diamo una fixxe a quetta bid rotta... Consigli pe gli aqquitti";
fi

slackcli -u "Costanzo" -i $ICON_URL -m "$MESSAGE" -h $CHANNEL
