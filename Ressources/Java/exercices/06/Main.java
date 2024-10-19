/*

EXERCICE JAVA #6
[Révision : exceptions]

> On vous a confié un programme qui ne gère aucune exception potentielle et que vous devez améliorer pour traiter
  les différents cas d'erreur (quand cela est pertinent)

> Indications :
    - il y a forcément du code que vous ne connaissez pas (encore), consultez la documentation
    - réfléchissez à l'endroit où gérer les erreurs et à d'éventuels remaniements du code
    - l'exercice peut être réalisé sans même compiler et exécuter le programme

*/
import java.io.BufferedReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;


public class Main
{

    public static void main(String[] args) throws IOException
    {
        // Importation de l'inventaire
        Path file = Paths.get("products.txt");
        BufferedReader reader = Files.newBufferedReader(file);

        Map<String, Integer> inventory = new HashMap<>();
        String line = null;

        while((line = reader.readLine()) != null)
        {
            String[] product = line.split(";");
            String name = product[0];
            int quantity = Integer.parseInt(product[1]);

            inventory.put(name, quantity);
        }

        // Affichage de quelques produits
        System.out.println("Café : " + inventory.get("Café"));
        System.out.println("Oeufs : " + inventory.get("Oeufs"));
        System.out.println("Noix de cajou : " + inventory.get("Noix de cajou"));

        // Moyenne des quantités de l'inventaire
        int totalProducts = inventory.size();
        int totalQuantities = 0;

        for(int quantity : inventory.values())
            totalQuantities += quantity;

        int averageQuantity = totalQuantities / totalProducts;
        System.out.println("En moyenne, nous avons un stock de " + averageQuantity + " produits.");

        // Ajout d'un produit à l'inventaire
        Scanner scanner = new Scanner(System.in);

        System.out.print("[AJOUT D'UN PRODUIT]\nNom : ");
        String productNameInput = scanner.nextLine();

        System.out.print("Quantite : ");
        int productQuantityInput = scanner.nextInt();

        inventory.put(productNameInput, productQuantityInput);
        System.out.print("Produit ajoute : " + productNameInput + "(" + productQuantityInput + ")");

        // Fermeture du fichier des produits
        reader.close();
    }
}
