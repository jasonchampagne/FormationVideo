/*

EXERCICE JAVA #4
[Révision : jusqu'aux tableaux]


> Écrire un programme affichant une grille où l'utilisateur peut ajouter des "points" comme s'il
  brodait sur une toile. Il est invité à saisir des commandes pour interagir avec la grille jusqu'à
  quitter le programme.

> Indications :
    - Définir une classe "Grid" qui permet d'initialiser un tableau à deux dimensions, ces dernières
      étant passées en argument au constructeur.

    - La grille aura ce format :

            +----------------------+   +----------------------+  +----------------------+
            |                      |   | ooooooooo  o       o |  |oooooooooooooooooooooo|
            |                      |   | o           o     o  |  |oooooooooooooooooooooo|
            |                      |   | ooooo        o   o   |  |oooooooooooooooooooooo|
            |                      |   | o             o o    |  |oooooooooooooooooooooo|
            |                      |   | o              o     |  |oooooooooooooooooooooo|
            +----------------------+   +----------------------+  +----------------------+
            (Dans cet exemple, il s'agit d'une grille de dimensions : lignes = 5, colonnes = 22)
            (Quand la grille est vide, elle contient des espaces vides)

    - Implémenter les méthodes suivantes, entre autres :
            -> print (affiche la grille)
            -> addPoint (ajoute le caractère 'o' aux coordonnées x;y)
            -> deletePoint (supprime le caractère aux coordonnées x;y)
            -> clear (supprime l'ensemble des caractères de la grille)
            -> containsPoint (vérifie si une coordonnée contient déjà un point)
            -> isFull (vérifie si la grille est pleine)
            -> accesseurs/modificateurs, SI nécessaires...

    - Créez une classe de constantes publiques pour les paramètres de votre programme :
            -> GRID_LINES (nombre de lignes de la grille)
            -> GRID_MIN_LINES (nombre minimal de lignes)
            -> GRID_MAX_LINES (nombre maximal de lignes)
            -> GRID_COLUMNS (nombre de colonnes de la grille)
            -> GRID_MIN_COLUMNS (nombre minimal de colonnes)
            -> GRID_MAX_COLUMNS (nombre maximal de colonnes)
            -> GRID_POINT (caractère dessiné sur la grille)

    - La partie "saisie des coordonnées" est déjà écrite et est fournie dans le programme. Les commandes
      valides sont les suivantes :

            add <x> <y> -> ajoute un point aux coordonnées x;y
            del <x> <y> -> supprime un point aux coordonnées x;y
                  clear -> efface toute la grille
                   quit -> met fin au programme

    - Dans la méthode main() de la classe Main, votre programme exécute une boucle infinie jusqu'à ce
      que l'utilisateur ait entré la commande "quit".

    - N'oubliez pas de gérer les cas où :
            -> les dimensions de la grille sont incorrectes
            -> les dimensions pour l'ajout/suppression d'un point sont incorrectes
            -> quand la grille est pleine (lors d'un ajout)
            -> quand un point existe déjà aux coordonnées saisies
            -> quand il n'y a pas de point à supprimer aux coordonnées saisies

    - Pour quitter le programme en cas d'erreur, utilisez : System.exit(1)
*/
import java.util.Scanner;


public class Main
{
    public static void main(String[] args)
    {
        // 1. Initilisation de la grille
        // ...

        // 2. Boucle principale
        Scanner scanner = new Scanner(System.in);

        while(true)
        {
            grid.print(); // Appelle la méthode print() de Grid (à implémenter)

            System.out.print("COMMANDE >> ");
            String command = scanner.next();

            switch(command)
            {
                case "add":
                    int addX = scanner.nextInt();
                    int addY = scanner.nextInt();

                    // Ici, appeler la méthode d'ajout d'un point
                    // ...

                    break;

                case "del":
                    int delX = scanner.nextInt();
                    int delY = scanner.nextInt();

                    // Ici, appeler la méthode de suppression d'un point
                    // ...

                    break;

                case "clear":
                    // Ici, appeler la méthode de nettoyage de la grille
                    // ...

                    break;

                case "quit":
                    System.out.println("Fin du programme...");
                    System.exit(0);

                default:
                    System.out.println("Commande non reconnue.");
            }
        }
    }
}
