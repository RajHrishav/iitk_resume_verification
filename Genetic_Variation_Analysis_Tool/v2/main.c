#include<stdio.h>
#include<stdlib.h>
#include "kmeans_hdr.h"
int main()
{
	int n;//no of IP points
	int m;// no of features
	int n_c;// no of clusters
	
	scanf("%d %d %d",&n,&m,&n_c);

	int data[n][m];//ip data
	float centriod_cordinates[n_c][m];//coordinates of centriod
	int no_of_dimnsn = 3;
	FILE * output = fopen("output.txt", "w");
	int points[n_c][n]; // which point belongs to which centriod
	int no_of_elements_in_cluster[n_c];//will hold current index of points[n_c][n] for each centriod till which data is available
	int i, j;
	for(i = 0; i <= n_c - 1; i++) {
		for(j = 0; j<= m-1; j++ ) {
			scanf("%f",&centriod_cordinates[i][j]);
		}
	}

   
	/*
	//reading data from input file
	FILE *file_ip;
	file_ip = fopen("datafile.txt","r");
	for(int i = 0; i <= n-1; i++) {
		for(j = 0; j <= m-1;j++) {
			if(!fscanf(file_ip,"%d",&data[i][j])) break;
		}
	}*/
	
	//reading data
	for(int i = 0; i <= n-1; i++) {
		for(j = 0; j <= m-1;j++) {
			scanf("%d",&data[i][j]);
		}
	}
	
	
	kmeans(n,m,n_c,data,centriod_cordinates,points,no_of_elements_in_cluster);
	
	//generating data in output file
	for(i = 0; i <= n_c-1; i++) {
		for (j = 0; j <= no_of_dimnsn-1; j++) {
			fprintf(output, "%0.1f ", centriod_cordinates[i][j]);

		}
	fprintf(output, "%d\n", i+1);
	}
	fprintf(output, "\n\n");

	for(i = 0; i <= n - 1; i++) {
		for (j = 0; j <= no_of_dimnsn - 1; j++) {
			fprintf(output, "%d ", data[i][j]);
		}
		fprintf(output, "%d\n", find_cluster(n,i,points,n_c,no_of_elements_in_cluster)+1);
	}
	fprintf(output, "\n\n");

	
	//generating gnuplot
	FILE * gnupipe = NULL;
    char * Gnucommands[] = {
         "unset xrange",
         "unset yrange",
         "stats \'output.txt\' name \'info_data\'",
         "set xrange[info_data_min_x-5:info_data_max_x+5]",
         "set yrange[info_data_min_y-5:info_data_max_y+5]",
         "set border 127+256+512",
         "set grid",
         "set term gif animate delay 50 size 1280,720",
         "set output \'clusters.gif\'",
         "do for [i = 0:int(info_data_blocks-2):2]{splot \'output.txt\' index i using 1:2:3:4 ps 3 pt 12 lc variable lw 5 title \"Iteration Number\".(i/2),\'output.txt\' index i+1 using 1:2:3:4 ps 1 pt 7 lc variable title \'\'}"
        };

    gnupipe = popen("gnuplot", "w"); // opening a pipe. popen returns stream pointer(which points to the pipe)

    for(int i = 0; i < 10; i++) {
        fprintf(gnupipe, "%s\n", Gnucommands[i]); // in fprintf we pass the stream pointer & data which we want to pass to the stream
    }
	
	return 0;
	
}