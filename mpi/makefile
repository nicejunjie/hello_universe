
MY_FFLAGS = -xCore-AVX512 -O2 -std08 -check -g -traceback -warn all

all:

test: main.f90
	mpif90 -o a.out ${MY_FFLAGS} $<

.PHONY: clean run

run:
	mpirun -n 2 ./a.out


clean: 
	rm a.out

