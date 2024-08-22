#!/bin/bash
#PJM -L "node=2"

MPI_DIR="/home/isaiah/Documents/Riken2024/PMIO-LS/code/pmio-ls-ins"
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
    -pmio_ls -skip_merge \
    -fname ${FNAME} \
    -${MODE} \
    -coll -timing \
    -veclen ${VECLEN} \
    -veccount ${VECCOUNT} \
    -elmtcount ${ELMTCOUNT} \
    -bufsize ${BUFSIZE} \
    -loops ${LOOPS} \
    -buffer_folder buffers \
    -data_buffer_size 131072


