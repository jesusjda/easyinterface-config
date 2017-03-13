#!/bin/bash


EI_HOME=~/Systems/easyinterface

if [ ! -L "$EI_HOME/server/config/jesusjda" ] ; then
	ln ./config $EI_HOME/server/config/jesusjda
fi

if [ ! -L "$EI_HOME/server/bin/jesusjda" ] ; then
        ln ./bin $EI_HOME/server/bin/jesusjda
fi

if [ -f "$EI_HOME/server/config/eiserver.cfg" ] ; then
	RND=$(date +%s)
	mv $EI_HOME/server/config/eiserver.cfg $EI_HOME/server/config/eiserver_old_$RND.cfg
fi

if [ -f "$EI_HOME/clients/web/webclient.cfg" ] ; then
        RND=$(date +%s)
        mv $EI_HOME/clients/web/webclient.cfg $EI_HOME/clients/web/webclient_old_$RND.cfg
fi


cp ./server.cfg $EI_HOME/server/config/eiserver.cfg
cp ./web.cfg $EI_HOME/clients/web/webclient.cfg


