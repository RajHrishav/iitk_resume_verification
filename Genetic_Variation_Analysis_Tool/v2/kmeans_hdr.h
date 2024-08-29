void kmeans(int n,int m,int n_c,int data[n][m],float centriod_cordinates[n_c][m],int points[n_c][n],int no_of_elements_in_cluster[n_c]);
float find_dist(int no_of_fetaures,int clstr_no,float centriod_cordinates[][no_of_fetaures],int row_no,int data[][no_of_fetaures]);
int find_cluster(int n,int pt,int points[][n],int n_c,int no_of_elements_in_cluster[]);
int cmp_centroids_old_and_current(int R,int C,float arr1[][C],float arr2[][C]);
int find_min_dist_indx(float arr[],int n);
