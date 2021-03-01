#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	FILE *datafile = fopen("data_big.txt", "r");

	if(datafile == NULL)
		exit(1);

	FILE *potifile = fopen("data_big.poti", "w");

	if(potifile == NULL)
		exit(1);

	//-----------------------------------------------------------

	char character, last_character;
	int count = 0;

	printf("Compression en cours...");

	if((last_character = fgetc(datafile)) != EOF)
	{
		count++;

		while((character = fgetc(datafile)) != EOF)
		{
			if(character == last_character)
				count++;
			else
			{
				fprintf(potifile, "%c%d", last_character, count);
				last_character = character;
				count = 1;
			}
		}

		fprintf(potifile, "%c%d", last_character, count);
	}

	printf("OK\n");

	//-----------------------------------------------------------
	
	fclose(datafile);
	fclose(potifile);

	return 0;
}
