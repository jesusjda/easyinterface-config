#!/bin/bash

EI_TMP=$1/_ei_tmp
. envisage/envisage_settings.sh
. misc/parse_params.sh

PROGRAM=/home/friker/Systems/costa/costabs/src/interfaces/mhp/shell/mhp_shell

echo ""
${PROGRAM} 'main' $@ 

