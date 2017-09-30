#!/bin/bash
# ./mhp1.sh main -i '/home/friker/tmp/www/examples/demo/mhp_B.abs' -v 2  -l -mode complete -cc_pt_len 2 -bool_awaits no -type_mhp reduced -interproc_mhp no

EI_TMP=$1/_ei_tmp
. envisage/envisage_settings.sh
. misc/parse_params.sh

#export COSTABSHOME=/home/friker/Systems/costa/costabs

PROGRAM=/home/friker/Systems/costa/costabs/src/interfaces/mhp/shell/mhp_shell 

${PROGRAM} $@ 



