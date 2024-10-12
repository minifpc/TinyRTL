#!/bin/bash

BASEDIR=$(dirname "$0")
BASEDIR=$(cd "$BASEDIR" && pwd)

sed -i '/\; Begin asmlist al_rtti/,/\; End asmlist al_rtti/d' $BASEDIR/tests/system.s
sed -i '/\; Begin asmlist al_dwarf_frame.*/,/\; End asmlist al_dwarf_frame.*/d' $BASEDIR/tests/system.s
sed -i '/\.\.\@.*strlab\:/,+3d' $BASEDIR/tests/system.s
sed -i '/\; Begin asmlist al_indirectglobals.*/,/\; End asmlist al_indirectglobals.*/d' $BASEDIR/tests/system.s
sed -i '/\; Begin asmlist al_globals.*/,/\; End asmlist al_globals.*/d' $BASEDIR/tests/system.s

sed -i '/\; Begin asmlist al_rtti/,/\; End asmlist al_rtti/d' $BASEDIR/tests/test1.s
sed -i '/\; Begin asmlist al_dwarf_frame.*/,/\; End asmlist al_dwarf_frame.*/d' $BASEDIR/tests/test1.s
sed -i '/\.\.\@.*strlab\:/,+3d' $BASEDIR/tests/test1.s
sed -i '/\; Begin asmlist al_indirectglobals.*/,/\; End asmlist al_indirectglobals.*/d' $BASEDIR/tests/test1.s
sed -i '/\; Begin asmlist al_globals.*/,/\; End asmlist al_globals.*/d' $BASEDIR/tests/test1.s

sed -i '/EXTERN\tfpc_initializeunits/{//d;}' $BASEDIR/tests/test1.s
sed -i '/EXTERN\tfpc_do_exit/{//d;}' $BASEDIR/tests/test1.s

sed -i '/\t\tcall\tfpc_initializeunits/{//d;}' $BASEDIR/tests/test1.s
sed -i '/\t\tcall\tfpc_do_exit/{//d;}' $BASEDIR/tests/test1.s