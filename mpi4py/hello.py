#!/usr/bin/env python 

from mpi4py import MPI

# Initialize MPI
comm = MPI.COMM_WORLD
rank = comm.Get_rank()  # Get the rank of the process
size = comm.Get_size()  # Get the total number of processes

# Print Hello World message from each process
print(f"Hello, World! I am process {rank} of {size}.")

