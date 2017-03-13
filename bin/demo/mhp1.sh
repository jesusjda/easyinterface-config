#!/bin/bash

$EI_TMP=$1/_ei_tmp
MHP_HOME=/home/friker/Systems/costa/costabs/src/interfaces/mhp/shell



$MHP_HOME/mhp_shell main -i '../examples/PeerToPeer.abs' -v 2  -l -dot $EI_TMP/graph.dot -ei_version 2
$MHP_HOME/mhp_shell main -i '../examples/PeerToPeer.abs' -v 1  -l -dot $EI_TMP/graph.dot


