# Méthodes spéciales

En partie abordées sur [un tutoriel](https://www.youtube.com/watch?v=XxUasK8f-s0), les méthodes spéciales sont implicitements exécutées lors de traitements spécifiques en Python. Si l'on prend l'instanciation d'une classe (création d'un objet), l'instruction fera un appel à la méthode `__new__()`, qui fera elle-même appel à la méthode `__init__()`.

Si besoin, ces méthodes peuvent être redéfinies afin de les surcharger, pour permettre par exemple de faire la somme de deux objets d'un type personnalisé.

> ⛔ Tableau non terminé

|CATÉGORIE|MÉTHODES|UTILISATION|
|:--:|:--|:--:|
|Opérations|`object.__add__(self, other)`|addition|
