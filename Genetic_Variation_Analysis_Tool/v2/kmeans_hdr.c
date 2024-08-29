#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include "kmeans_hdr.h"
void kmeans(int n,int m,int n_c,int data[n][m],float centriod_cordinates[n_c][m],int points[n_c][n],int no_of_elements_in_cluster[n_c]);
float find_dist(int no_of_fetaures,int clstr_no,float centriod_cordinates[][no_of_fetaures],int row_no,int data[][no_of_fetaures]);
int find_cluster(int n,int pt,int points[][n],int n_c,int no_of_elements_in_cluster[]);
int cmp_centroids_old_and_current(int R,int C,float arr1[][C],float arr2[][C]);
int find_min_dist_indx(float arr[],int n);

float find_dist(int no_of_fetaures,int clstr_no,float centriod_cordinates[][no_of_fetaures],int row_no,int data[][no_of_fetaures])
{
	float dist = 0;
	int i;
	for(i = 0; i <= no_of_fetaures-1; i++) {
		dist = dist + pow((centriod_cordinates[clstr_no][i] - data[row_no][i]),2);
	}

	dist = sqrt(dist);

	return dist;
}

int cmp_centroids_old_and_current(int R,int C,float arr1[][C],float arr2[][C])
{
	int i, j;
	for(i = 0; i <= R-1; i++) {
		for(j = 0; j <= C-1; j++) {
			if(arr1[i][j] != arr2[i][j]) {
				return 0;
			}
		}
	}
	return 1;
}

int find_min_dist_indx(float arr[],int n)
{
	int i;
	int min_indx = 0;
	for(i = 1; i<= n-1; i++) {
		if(arr[min_indx] > arr[i]) {
			min_indx = i;
		}
	}
	return min_indx;
}
int find_cluster(int n,int pt,int points[][n],int n_c,int no_of_elements_in_cluster[])
{
	int i,j;
	for(i = 0; i <= n-1; i++) {
		for(j = 0;j <= no_of_elements_in_cluster[i]-1; j++) {
			if(points[i][j] == pt)
				return i;
		}
	}
	return -1;
}

void kmeans(int n,int m,int n_c,int data[n][m],float centriod_cordinates[n_c][m],int points[n_c][n],int no_of_elements_in_cluster[n_c])
{
	/*
		n : no of IP points
		m : no of features
		n_c : no of clusters
		data[n][m] : ip data
		centriod_cordinates[n_c][m] : coordinates of centriod
	*/
	float centriod_cordinates_old[n_c][m];//centriod-coordinates of prev iteration
	//int points[n_c][n]; // which point belongs to which centriod
	int points_old[n_c][n];
	//int no_of_elements_in_cluster[n_c];//will hold current index of points[n_c][n] for each centriod till which data is available
	float dist[n_c];//distance of a point from diff centriods
	int min_dist_cluster_indx;//
	int no_of_iterations = 0;
	int max_no_of_iterations = 100;
	int i, j, k,sum = 0;
	int is_equal = 0; // to check two array have equal values or not
	int no_of_dimnsn = 3;
	//FILE * output = fopen("output.txt", "w");

	while(1==1) {

		if(no_of_iterations > max_no_of_iterations) {
            printf("\n%d iteration",no_of_iterations);
			break;
		}

		//step = 1 //comparing old centriod and current centriod
		//is_equal = cmp_centroids_old_and_current(n_c,m,centriod_cordinates_old,centriod_cordinates);
		//if(is_equal) {
			//break;
		//}

		//step = 2 //storing current centriod into another variable old_centriod

		/*for(i = 0; i <= n_c - 1; i++) {
            for(j = 0; j <= n-1; j++) {
                if(j > no_of_elements_in_cluster[i] - 1) {
                    break;
                }
                points_old[i][j] = points[i][j];
            }
        }*/

        for(i = 0; i<= n_c - 1; i++) {
			for(j = 0; j <= m - 1; j++) {
				centriod_cordinates_old[i][j] = centriod_cordinates[i][j];
			}
		}

		//step = 3 //resetting the number of points belonging to centriods
		for(i = 0; i<= n_c - 1; i++) {
			no_of_elements_in_cluster[i] = 0; //no. of elements in ith cluster
		}

		//step = 4 //assigning points to its corresponding cluster
		for(i = 0; i <= n-1; i++) {
			for(k = 0; k <= n_c-1; k++) {
				dist[k] = find_dist(m,k,centriod_cordinates,i,data);//centriod_cordinate[clstr_nbr][feature_nbr], data[row_nbr][feature_nbr]
			}
			min_dist_cluster_indx = find_min_dist_indx(dist,n_c);
			points[min_dist_cluster_indx][no_of_elements_in_cluster[min_dist_cluster_indx]] = i;
			no_of_elements_in_cluster[min_dist_cluster_indx]++;
		}

		/* step = 5
		first fix the cluster say c1
		then fix the feature say a
		then iterate through all the points(say p1,p2) which belongs to the cluster c1 for feature 'a'.
		sum the values of feature 'a' for the points(p1,p2)
		update the feature 'a' in centriod_cordinate array for cluster 'c1' as sum/no of points in cluster 'c1'
		*/
		for(i = 0; i <= n_c-1; i++) { //i is for centriod/cluster like i = 0 means1 c1, i = 1 means c2 in the array
			for(j = 0;j <= m-1; j++) { //j is for features
				for(k = 0, sum = 0; k <= no_of_elements_in_cluster[i]-1; k++) { //k is for getting the points which belongs to ith cluster
					sum = sum + data[points[i][k]][j]; //points[i][j] means kth point of ith cluster //points[i] will give the list of points belonging to cluster i
				}
				centriod_cordinates[i][j] = (float)sum / no_of_elements_in_cluster[i];
			}
		}

		no_of_iterations++;
	}

	//step 7 //generating output in console
	/*printf("\nno_of_iterations=%d\n",no_of_iterations);
	for(i = 0; i <= n_c - 1; i++) {
		printf("\n\n%dth cluster",i);
		for(j = 0; j <= n-1; j++) {
			if(j > no_of_elements_in_cluster[i] - 1) {
				break;
			}
			printf("%d \t",points[i][j]);
		}
	}*/

	
	
}
