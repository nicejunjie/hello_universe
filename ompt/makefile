
CC=clang

CFLAGS_clang = -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda
CFLAGS_pgi = -mp=gpu -Minfo=mp
CFLAGS_xl = -O3 -qsmp=omp -qoffload -qtgtarch=auto

ifeq ($(CC), clang) 
  CFLAGS = $(CFLAGS_clang)
else ifeq ($(CC), pgcc)
  CFLAGS = $(CFLAGS_pgi)
else ifeq ($(CC), nvc)
  CFLAGS = $(CFLAGS_pgi)
else ifeq ($(CC), xl)
  CFLAGS = $(CFLAGS_xl)
endif

DEPS = 
OBJ = ongpu.o
EXE=ongpu

.phony: all run clean


all: $(EXE) run


$(EXE): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

run: 
	./$(EXE)

clean:
	rm *.o $(EXE)







