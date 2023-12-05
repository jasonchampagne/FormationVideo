/*
EXERCICE JAVA #2
[Révision : jusqu'aux conditions]

> Exprimer via du code les formulations données.

> Indication :
    - écrire l'ensemble du code des exercices dans la méthode main()
    - ce qui est entre crochets doit être mémorisé dans une variable (nommée explicitement et de préférence en anglais, voir exemple donné plus bas)

*/
public class Main
{
    public static void main(String[] args)
    {
        // EXEMPLE : Si l'[âge du chien] est de 5 ans, alors afficher "Oui !"
        int dogAge = 5;

        if(dogAge == 5)
            System.out.println("Oui !");

        System.out.println("------------------------------------------------");

        // 1. Si le [solde] est inférieur au [montant], afficher le message "Solde insuffisant"

        System.out.println("------------------------------------------------");

        // 2. Si le [solde] est inférieur au [montant], afficher le [message] "Solde insuffisant",
        //    sinon afficher un [autre message] "Achat validé !"

        System.out.println("------------------------------------------------");

        // 3. Si l'on a une [carte bancaire] et un [solde], alors l'[achat] est validé
        //    et est signalé par un message (de votre choix)

        System.out.println("------------------------------------------------");

        // 4. Soit un cercle de 24,5cm de [diamètre] et une valeur de [Pi] arrondie à 3.14,
        //    calculer l'[aire] du cercle puis l'afficher

        System.out.println("------------------------------------------------");

        // 5. Si [a] est égal à 10, alors
        //       - afficher "Gagné \o/" si [b] est supérieur à 0 ou [c] supérieur à 1
        //       - sinon :
        //           - afficher "Perdu" si [b] est égal à 5
        //           - sinon si [d] est compris entre 2 (inclus) et 4 (inclus), afficher
        //             le message "Alors peut-être..."
        //           - sinon afficher le message "Pas de chance :("
        int a = 10;
        int b = -3;
        int c = -4;
        int d = 3;
    }
}
