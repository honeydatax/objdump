#include <stdio.h>
#include <stdlib.h>

extern int adds(int a,int b);

int main(int argc,char *argv[]){
	if(argc>2) printf("%d\r\n",adds(atoi(argv[1]),atoi(argv[2])));
	return 0;
} 
