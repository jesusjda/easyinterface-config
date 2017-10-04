#!/bin/bash

EI_HOME=~/Systems/easyinterface
INSTALL_EI=false
basedir=$(dirname "$(readlink -f "$0" )")

for i in "$@"; do
    case $i in
	--ei-home=*)
	    EI_HOME="${i#*=}"
	    shift 
	    ;;
	--install-ei)
	    INSTALL_EI=true
	    shift 
	    ;;
	*)
	    >&2 cat  <<EOF 
ERROR: easyinterface-config/install.sh [OPTIONS]

[OPTIONS]

    --ei-home=[PATH] )
        Path to easyinterface. Default: ~/Systems/easyinterface

    --install-ei )
        Install easyinterface with personal config.

EOF
	    exit -1
            # unknown option
	    ;;
    esac
done


install_ei(){
    echo $EI_HOME
    mkdir -p $EI_HOME
    git clone https://github.com/abstools/easyinterface.git $EI_HOME
    echo "hi"$EI_HOME
    echo -e "Alias /ei \""$EI_HOME"\"\n\
\n\
<Directory \""$EI_HOME"\">\n\
   Options FollowSymlinks MultiViews Indexes IncludesNoExec\n\
   AllowOverride All\n\
   Require all granted\n\
</Directory>\n" > /etc/apache2/sites-available/easyinterface-site.conf
    cat /etc/apache2/sites-available/easyinterface-site.conf
    chmod -R 755 $EI_HOME
    a2ensite easyinterface-site
    service apache2 reload
    a2enmod headers
    service apache2 restart
}
if [ "$INSTALL_EI" == "true" ]; then
    install_ei
fi


if [ ! -L "$EI_HOME/server/config/jesusjda" ] ; then
	ln -s $basedir/config $EI_HOME/server/config/jesusjda
fi

if [ ! -L "$EI_HOME/server/bin/jesusjda" ] ; then
        ln -s $basedir/bin $EI_HOME/server/bin/jesusjda
fi

RND=$(date +%s)
if [ -f "$EI_HOME/server/config/eiserver.cfg" ] ; then
	mv $EI_HOME/server/config/eiserver.cfg $EI_HOME/server/config/eiserver_old_$RND.cfg
fi

if [ -f "$EI_HOME/clients/web/webclient.cfg" ] ; then
        mv $EI_HOME/clients/web/webclient.cfg $EI_HOME/clients/web/webclient_old_$RND.cfg
fi
RND=""

cp $basedir/server.cfg $EI_HOME/server/config/eiserver.cfg
cp $basedir/web.cfg $EI_HOME/clients/web/webclient.cfg


