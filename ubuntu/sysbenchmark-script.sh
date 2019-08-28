#!/bin/bash

# sudo apt install sysbench
# or
# docker pull severalnines/sysbench
docker="docker run --rm severalnines/sysbench" 

echo "----------------------------------------------------------------"
echo "- cpu test -----------------------------------------------------"
echo ""

$docker sysbench --test=cpu run

echo "----------------------------------------------------------------"
echo "- memory test --------------------------------------------------"
echo ""

$docker sysbench --test=memory run

echo "----------------------------------------------------------------"
echo "- I/O test -----------------------------------------------------"
echo ""

$docker sysbench --test=fileio --file-test-mode=seqwr run


