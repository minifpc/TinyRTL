#!/bin/bash
echo "successfull change shell..."

BASEDIR=$(dirname "$0")
BASEDIR=$(cd "$BASEDIR" && pwd)

echo "seeding: ./units/fpc-rtl/system.s"
sed -i '/\tGLOBAL SYSTEM\$\_\$QSTRING\_\$\_\_\$\$\_CREATE\$PCHAR\$\$QSTRING/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$QSTRING\_\$\_\_\$\$\_DESTROY/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s

sed -i '/\tGLOBAL SYSTEM\$\_\$QSTRING\_\$\_\_\$\$\_APPEND\$PCHAR\$\$QSTRING/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$QSTRING\_\$\_\_\$\$\_APPEND\$QSTRING\$\$QSTRING/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s

sed -i '/\tGLOBAL SYSTEM\$\_\$QOBJECT\_\$\_\_\$\$\_CREATE$$QOBJECT/,/\t\tret/d'   $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$QOBJECT\_\$\_\_\$\$\_DESTROY/,/\t\tret/d'           $BASEDIR/units/fpc-rtl/system.s

sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_AFTERCONSTRUCTION/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_BEFOREDESTRUCTION/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_CREATE\$\$TOBJECT/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_DESTROY/,/\t\tret/d'           $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_FREE/,/\t\tret/d'              $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_FREEINSTANCE/,/\t\tret/d'      $BASEDIR/units/fpc-rtl/system.s

sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_SAFECALLEXCEPTION$TOBJECT\$POINTER\$\$SHORTDWORD/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/\tGLOBAL SYSTEM\$\_\$TOBJECT\_\$\_\_\$\$\_DEFAULTHANDLER\$formal/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s

sed -i '/SYSTEM\$\_.*\_fin/{:a;N;/\t\tret/!ba;d}' $BASEDIR/units/fpc-rtl/system.s

sed -i '/SYSTEM\$\_\$QSTRING\_\$\_\_\$\$\_CREATE\$\$QSTRING/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s
sed -i '/GLOBAL SYSTEM\$\_\$QSTRING\_\$\_\_\$\$\_CREATE\$QSTRING\$\$QSTRING/,/\t\tret/d' $BASEDIR/units/fpc-rtl/system.s

sed -i '0,/GLOBAL fpc_do_exit/s///' $BASEDIR/units/fpc-rtl/system.s
sed -i '0,/fpc_do_exit\:/s///' $BASEDIR/units/fpc-rtl/system.s

#echo -e "\nPress any key to close the MinGW-64 session."
#read -n 1 -s
