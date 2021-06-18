
NVCC=nvcc
CFLAGS= -O2
DEPS = 
OBJ = hello.o
EXE=hello

.phony: all run clean

all: $(EXE) run

%.o: %.cu $(DEPS)
	$(NVCC) -c -o $@ $< $(CFLAGS)

$(EXE): $(OBJ)
	$(NVCC) -o $@ $^ $(CFLAGS)

run: 
	./hello

clean:
	rm *.o $(EXE)






