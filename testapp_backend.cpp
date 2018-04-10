#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <iostream>

#include <fstream>
using namespace std;

int main( int argc, char *argv[] )
{

	printf( "\nHello World\n" );

	int i = 0;
	int x;
	char * dest;

	if( argc <= 1 )
	{

		printf( "\nNo args\n" );
	
	}

	for( i = 1; i < argc; i++ )
   	{
   
      		char * arg = argv[i];
      
      		if( strcmp( arg, "Math" ) == 0 )
      		{

			printf( "\n2 + 2 = %d\n", x=2+2);
		
		}

		else if( strncmp( arg, "File,", 4 ) == 0 )
      		{

         		dest = strchr( arg, '=' ) + 1;
         
         		if( dest == ( char * ) (1) || *dest == 0 )
         		{

           		
           			printf( "\nNo Filename given.\n" );
         
         		}
         
         		else
         		{

            			printf( "\nSelected Filename: %s\n", dest );
				
				FILE *file = fopen( dest, "w+" );

				fprintf(file, "2+2 = %d\n", x);

         		}

		}

	}

	return 0;

}
