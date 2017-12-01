#!/bin/bash

EI_HOME=~/Systems/easyinterface
INSTALL_EI=false
basedir=$(dirname "$(readlink -f "$0" )")
EX_HOME=~/tmp/examples
EX_REMOTE=/tmp/examples
examples=false
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
	--examples=* )
	    examples="${i#*=}"
	    shift
	    ;;
	--ex-home=* )
	    EX_HOME="${i#*=}"
	    shift
	    ;;
	--ex-remote=* )
	    EX_REMOTE="${i#*=}"
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

    --examples=[PATH] )
        Script wich install examples

    --ex-home=[PATH] )
        Local path were remote examples will be download

    --ex-remote=[PATH] )
        server path where the examples will be accesible from


EOF
	    exit -1
            # unknown option
	    ;;
    esac
done


install_ei(){
    mkdir -p $EI_HOME
    git clone https://github.com/abstools/easyinterface.git $EI_HOME
    echo -e "Alias /ei \""$EI_HOME"\"\n\
\n\
<Directory \""$EI_HOME"\">\n\
   Options FollowSymlinks MultiViews Indexes IncludesNoExec\n\
   AllowOverride All\n\
   Require all granted\n\
</Directory>\n" > /etc/apache2/sites-available/easyinterface-site.conf
    chmod -R 755 $EI_HOME
    echo "RUN: \
    a2ensite easyinterface-site \
    service apache2 reload \
    a2enmod headers \
    service apache2 restart"
}

install_ex(){
    mkdir -p $EX_HOME
    $examples $EX_HOME $EX_REMOTE > $basedir/config/examples_remote.cfg
    echo -e "Alias "$EX_REMOTE" \""$EX_HOME"\"\n\
\n\
<Directory \""$EX_HOME"\">\n\
   Options FollowSymlinks MultiViews Indexes IncludesNoExec\n\
   AllowOverride All\n\
   Require all granted\n\
</Directory>\n" > /etc/apache2/sites-available/example-site.conf
    chmod -R 755 $EX_HOME
    echo "RUN: \
    a2ensite easyinterface-site \
    service apache2 reload \
    a2enmod headers \
    service apache2 restart"
}
if [ "$INSTALL_EI" == "true" ]; then
    install_ei
fi

if [ "$example" != "false" ]; then
    install_ex
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


