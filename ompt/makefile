
CC=clang
CFLAGS= -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda
DEPS = 
OBJ = ongpu.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

ongpu: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

