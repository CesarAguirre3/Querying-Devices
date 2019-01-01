#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

int main()
{
	int count;
	cudaDeviceProp prop;

	cudaGetDeviceCount(&count);
	for (int i = 0; i < count; i++)
	{
		cudaGetDeviceProperties(&prop, i);
		printf("Infrmation of device %d\n", i);
		printf("Name: %s\n", prop.name);
		printf("Clock rate: %d\n", prop.clockRate);
		printf("Multiprocessor count: %d\n", prop.multiProcessorCount);
		printf("Max thread per block: %d\n", prop.maxThreadsPerBlock);
		printf("Max thread dimensions: (%d, %d, %d)\n", prop.maxThreadsDim[0], prop.maxThreadsDim[1], prop.maxThreadsDim[2]);
		printf("\n");
	}


    return 0;
}

