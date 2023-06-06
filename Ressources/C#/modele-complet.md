# Modèle complet

> Ce changement apporté à **dotnet** est expliqué en détails dans la [séance n°21 de C#](https://www.youtube.com/watch?v=rM5BbdxR9pk), mais je fais ce petit guide pour celles et ceux qui débutent tout juste le cours.

Vous suivez les premières vidéos, créez votre premier projet C# en console, ouvrez le fichier source `Program.cs`, qui contient ce code :

```csharp
// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");
```

Alors que vous devriez avoir ce code (correspondant à celui montré en vidéo) :

```csharp
using System;

namespace Main
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
```

Ce changement est due à un nouveau modèle (_template_) utilisé à partir de .NET 6, et un système d'**inclusions implicites**. En d'autres termes, les espaces de noms principaux sont inclus implicitement dans le programme et n'ont plus besoin d'être écrits par le développeur.

Mais, pour les besoins du cours, vous pouvez créer un projet avec cette commande légèrement modifiée (l'argument `--use-program-main` va permettre de générer le code complet du fichier où se trouve la méthode `Main()`) :

```powershell
dotnet new console --use-program-main -o Main
```
