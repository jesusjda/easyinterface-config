#!/bin/bash

### A wrapper script for SACO's MHP analysis
###
###

EI_TMP=$1/_ei_tmp
shift
# execute envisage_settings.sh to set some environment variables needed by
# costabs, etc.
#
. envisage/envisage_settings.sh
. misc/parse_params.sh

PROGRAM=/home/friker/Systems/costa/costabs/src/interfaces/mhp/shell/mhp_shell

# Execute mh_shell, we add '-ei_version 2' to the parameters since now


${PROGRAM} $@ -ei_version 2 -dot $EI_TMP/graph.dot -highlight '/dev/null' &> /tmp/mhp.stderr



# If costabs exit with exit-code 0 we just print the output to the
# stdout, otherwise we print an error message to the stdout as well.
#
if [ $? == 0 ]; then
    echo "<eiout>"
    echo "<eicommands>"
    if [ -f $EI_TMP/graph.dot ]; then
	sed -i -e "s/border=0,//g" $EI_TMP/graph.dot 
	dot -Tsvg < $EI_TMP/graph.dot > $EI_TMP/graph.svg
	echo "<printonconsole consoleid='Graph'>"
	echo "<content format='svg'>"
	echo "<svg width='1000pt' height='500pt' "
	tail -n +8 $EI_TMP/graph.svg
	echo "</content>"
	echo "</printonconsole>"
	echo ""
    fi
    tail -n +4 /tmp/costabs/output.xml


else
    echo "<eiout>"
    echo "<eicommands>"
    echo "<printonconsole consoleid='Error'>"
    echo "<content format='text'>"
    cat /tmp/mhp.stderr
    echo "</content>"
    echo "</printonconsole>"
    echo "<dialogbox boxtitle='Execution Error' boxwidth='400'>"
    echo "<content format='html'>"
    echo "<span style='color:red;' >Error occurred while executing May-Happen-in-Parallel analysis:</span>"
    echo "</content>"
    echo "</dialogbox>"
    echo "</eicommands>"
    echo "</eiout>"
fi

\rm -f /tmp/mhp.stderr
#rm -f /tmp/costabs/output.xml

