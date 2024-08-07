#!/bin/bash
#PJM -L "node=2"

MPI_DIR="/vol0001/ra000004/keeganih/PMIO-LS/mpich-ins"
export LD_LIBRARY_PATH="${MPI_DIR}/lib"
MPIEXEC="${MPI_DIR}/bin/mpiexec"

if [[ ! -e $1 ]]; then
    echo "missing config file \"$1\""
    exit
fi

echo "LOGGING CONFIG"
cat $1

. $1

${MPIEXEC} -n ${NPROCS} ./noncontig \
    -fname ${FNAME} \
    -${MODE} \
    -coll -timing \
    -veclen ${VECLEN} \
    -veccount ${VECCOUNT} \
    -elmtcount ${ELMTCOUNT} \
    -bufsize ${BUFSIZE} \
    -loops ${LOOPS}


