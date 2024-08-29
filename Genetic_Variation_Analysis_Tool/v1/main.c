#include<stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#define        CHROM   0
#define        POS     1
#define        ID      2
#define        REF     3
#define        ALT     4
#define        QUAL    5
#define        FILTER  6
#define        INFO    7
#define        FORMAT  8

unsigned long linesToDelete[65000000] ;
int do_validation(char * );
float calcmutn(char* );
int main(int argc,char* argv[])
{
        if(argc!=5)
        {
                return -1;
        }

        int chromnbr_ip ;
        char FILENAME[500];
        float minmutn_ip ;
        float maxmutn_ip ;

        chromnbr_ip = atoi(argv[1]);
        strcpy(FILENAME,argv[2]);
        minmutn_ip = atof(argv[3]);
        maxmutn_ip = atof(argv[4]);

        char *line_buf = NULL;
        size_t line_buf_size = 0;
        //int line_count = 0;
        ssize_t line_size;
		char tmpCharptr1[20000];
		int is_valid;
		char * piece;
		int chromnbr;
		float mutn;
		unsigned long result_count;
		//i=0;
		result_count=0;

        FILE *fp = fopen(FILENAME, "rb");
        if (!fp)        {
                fprintf(stderr, "Error opening file '%s'\n", FILENAME);
                return 1;
        }
        line_size = getline(&line_buf, &line_buf_size, fp);
        while(*line_buf == '#'){
            line_size = getline(&line_buf, &line_buf_size, fp);
        }
        while (line_size >= 0) {
                //i++;
                //printf("\ni: %d\n",i);
                strcpy(tmpCharptr1,line_buf);
                is_valid = do_validation(tmpCharptr1);
                if(is_valid == 1)	{
                    piece = strtok(tmpCharptr1,"    ");
                    chromnbr = atoi(piece);
                    if(chromnbr == chromnbr_ip){
                        mutn = calcmutn(line_buf);
                        //printf("\nmutn%f",mutn);
                        if((mutn >= minmutn_ip) && (mutn <= maxmutn_ip )){
                            result_count++;
                        }
                    }
                }
			line_size = getline(&line_buf, &line_buf_size, fp);
        }//1st while i.e while(line_size>0)
        free(line_buf);
        line_buf = NULL;
        fclose(fp);

        printf("\n%lu\n",result_count);

        return 0;
}//main method


int do_validation(char * tmpCharptr)
{
	static unsigned long line_count = 0;
	static unsigned long i= 0;
	int tab_count, j, flg;

	line_count++;
	tab_count = 0;

    if(*tmpCharptr=='#'){
        linesToDelete[i++]=line_count;//storing line numbers that needs to be deleted.
			return 0;
    }
	else{
			//chrom column Integer check
			if(tab_count==CHROM){
					flg=0;
					while(*tmpCharptr!='\t'){
							if(*tmpCharptr<'0' ||  *tmpCharptr>'9'){
									linesToDelete[i++]=line_count;
									flg=1;
									//break;
									return 0;
							}
							tmpCharptr++;
					}
					if(flg==0){
							while(tab_count!=REF){
									if(*tmpCharptr=='\t'){
											tab_count++;
									}
									tmpCharptr++;
							}
					}
			}
			if(tab_count==REF){
					flg=0;
					while(*tmpCharptr!='\t'){
							//REF not belongs to set {A,T,G,C}
							if((*tmpCharptr!='A') && (*tmpCharptr!='T') && (*tmpCharptr!='G') && (*tmpCharptr!='C')){
									linesToDelete[i++]=line_count;
									flg=1;
									//break;
									return 0;
							}
							//more than one character in REF
							else if(*(tmpCharptr+1)!='\t'){
									linesToDelete[i++]=line_count;
									flg=1;
									//break;
									return 0;
							}
							tmpCharptr++;
					}
					if(flg==0){
							while(tab_count!=ALT){
									if(*tmpCharptr=='\t'){
											tab_count++;
									}
									tmpCharptr++;
							}
					}
			}
			if(tab_count==ALT){
					flg=0;
					j=1;
					while(*tmpCharptr!='\t'){
							if((j%2==1) && ((*tmpCharptr!='A') && (*tmpCharptr!='T') && (*tmpCharptr!='G') && (*tmpCharptr!='C'))){
									linesToDelete[i++]=line_count;
                                    flg=1;
									//break;
									return 0;
							}
							else if((j%2==0) && (*tmpCharptr!=',')){
									linesToDelete[i++]=line_count;
									flg=1;
									//break;
									return 0;
							}
							else if((j%2==0) && (*(tmpCharptr+1)=='\t') && (*tmpCharptr==',')){
											linesToDelete[i++]=line_count;
											flg=1;
											//break;
											return 0;
											}
							j++;
							tmpCharptr++;
					}
					if(flg==0){
							while(tab_count!=FILTER){
									if(*tmpCharptr=='\t'){
											tab_count++;
									}
									tmpCharptr++;
							}

					}
			}

			if(tab_count==FILTER){
					if(*tmpCharptr != 'P'){
						linesToDelete[i++]=line_count;
						return 0;
					}
			}

	}//1st else
	return 1;
}

float calcmutn(char* line_buf)
{
	int tab_count, mutn00_count,totalmutn_count;
	char tmpCharptr[20000];
	strcpy(tmpCharptr,line_buf);
	mutn00_count = 0;
	totalmutn_count = 0;
	tab_count = 0;

	char * piece = strtok(tmpCharptr,"	");
	while(piece != NULL) {
		if(tab_count > FORMAT){// format means 8
			if(strlen(piece) >= 3 && *(piece + 1) == '|'){
				if(*piece == '0' && *(piece + 2) == '0'){
					mutn00_count++;
				}
				totalmutn_count++;
			}
		}
		piece = strtok(NULL,"	");
		tab_count++;
	}
	return ((float)(totalmutn_count - mutn00_count)/totalmutn_count) * 100;
}


