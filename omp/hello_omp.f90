program add 

integer, parameter :: m=10000,n=100000

real(8) :: a(m,n),b(m,n),c(m,n)

!$omp parallel do
do i=1,m
  do j=1,n
    b(i,j)=(i+j)*10.00
    c(i,j)=(i+j)*0.01
  enddo
enddo
!$omp end parallel do


!$omp parallel do collapse(2)
 do i=1,m
   do j=1,n
     a(i,j)=sin(b(i,j))+cos(c(i,j)) 
   enddo
enddo
!$omp end parallel do

print '(2(E10.3,2x))', a(1,1), a(m,n)

end program add
