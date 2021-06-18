program test
  use mpi_f08
  nnum = 1 
  call mpi_init(ierr)
  call mpi_comm_rank(mpi_comm_world,ipe,ierr)
  call mpi_comm_size(mpi_comm_world,npe,ierr)
  ival = ipe 
  call mpi_allreduce(ival,isum,nnum,MPI_INT,MPI_SUM,mpi_comm_world,ierr)
  print '(" pe#",i5," local =",i5," isum =",i5)', &
          ipe, ival, isum
  call mpi_finalize(ierr)
end program
