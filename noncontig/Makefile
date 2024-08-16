MPI_DIR="/home/isaiah/Documents/Riken2024/PMIO-LS/code/pmio-ls-ins"
# MPI_DIR="/home/isaiah/Documents/Riken2024/PMIO-LS/code/mpich-ins"

MERGER_INCLUDE_DIR="/home/isaiah/Documents/Riken2024/PMIO-LS/code/merger/"
MERGER_LIB_DIR="/home/isaiah/Documents/Riken2024/PMIO-LS/code/merger/out"


CC="${MPI_DIR}/bin/mpicc"
CXX="${MPI_DIR}/bin/mpic++"
CFLAGS=-Wall -g

noncontig: noncontig.o parse_cmdline.o
	${CXX} ${CFLAGS} -o noncontig noncontig.o parse_cmdline.o -I${MERGER_INCLUDE_DIR} -L${MERGER_LIB_DIR} -lmergeThread

noncontig.o:
	${CC} ${CFLAGS} -c noncontig.c -I${MERGER_INCLUDE_DIR}	

clean:
	rm -f *.o
