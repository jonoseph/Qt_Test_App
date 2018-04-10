#!/bin/bash 
# -x

today=`date '+%Y_%m_%d_%H_%M_%S'`;
mkdir -p ~/Qt_Testapp_Output/$today/

function add_math {

	argname="Math"

	FILE=QT_File_${argname}.csv

	echo "[Beginning Test]"
        echo "[Beginning Test]" >> $FILE

	./testapp_backend Math File=$FILE

	echo ""
	echo "[Test Complete]"
	echo "[Test Complete]" >> $FILE

	mv -f $FILE ~/Qt_Testapp_Output/$today/

}
