#!/bin/sh

for i in "test_probe_rpminfo.xml" "test_probe_runlevel.xml"  "test_probe_filecontent.xml"
do
	echo "test_probes $i"
	./test_probes "${srcdir}/OVAL/$i"
	if [ $? -ne 0 ]
	then
		exit 1;
	fi
done

exit 0;

