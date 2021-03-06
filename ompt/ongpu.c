#include <stdio.h>
#include <omp.h>

int main()
{

  int runningOnGPU = 0;
  /* Test if GPU is available using OpenMP4.5 */
#pragma omp target map(tofrom:runningOnGPU)
  {
    if (omp_is_initial_device() == 0)
      runningOnGPU = 1;
  }
  /* If still running on CPU, GPU must not be available */
  if (runningOnGPU)
    printf("### Yes, able to use the GPU! ### \n");
  else
    printf("### No, unable to use the GPU, using CPU! ###\n");

  return 0;
}


