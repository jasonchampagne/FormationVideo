#include <stdio.h>
#include <stdlib.h>

#define ON_CHAR 254
#define OFF_CHAR ' '

int main(void)
{
	// Chargement et allocation des ressources
	//...
	
	// Parcours du fichier et remplissage du tableau
	//...
	
	// Affichage
	for(i = 0 ; i < rows ; i++)
	{
		for(j = 0 ; j < columns ; j++)
			printf("%c ", matrix[i][j]);

		printf("\n");
	}
	
	// Libération des ressources
	//...
	
	return 0;
}
