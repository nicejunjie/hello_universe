
NVCC=nvcc
CFLAGS= -O2
DEPS = 
OBJ = hello.o

%.o: %.cu $(DEPS)
	$(NVCC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	$(NVCC) -o $@ $^ $(CFLAGS)



