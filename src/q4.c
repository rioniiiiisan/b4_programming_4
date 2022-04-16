#include <stdio.h>
#include <math.h>
#include "../include/header.h"
#define MIN 0.0
#define MAX 2.0 * M_PI
#define D_X 0.001

int main(){
	FILE *fp;
	if((fp = fopen("data.dat","w")) == NULL){
		printf("Error: failed to open the data file.(-1)\n");
		return -1;
	}
	for(double x = MIN; x <= MAX; x += D_X){
		fprintf(fp, "%lf %lf\n", x, f(x));
	}
	fclose(fp);
	return 0;
}
