# Méthodes spéciales

En partie abordées sur [un tutoriel](https://www.youtube.com/watch?v=XxUasK8f-s0), les méthodes spéciales sont implicitements exécutées lors de traitements spécifiques en Python. Si l'on prend l'instanciation d'une classe (création d'un objet), l'instruction fera un appel à la méthode `__new__()`, qui fera elle-même appel à la méthode `__init__()`.

Si besoin, ces méthodes peuvent être redéfinies afin de les surcharger, pour permettre par exemple de faire la somme de deux objets d'un type personnalisé.

> ⛔ Tableau non terminé

|CATÉGORIE|MÉTHODES|
|:--|:--|
|Opérations|`__add__()` ou `__radd__()` : opérateur d'addition<br>`__sub__()` ou `__rsub__()` : opérateur de soustraction<br>`__mul__()` ou `__rmul__()` : opérateur de multiplication<br>`__truediv__()` ou `__rtruediv__()` : opérateur de division<br>`__floordiv__()` ou `__rfloordiv__()` : opérateur de division entière<br>`__mod__()` ou `__rmod__()` : opérateur de modulo<br>`__pow__()` ou `__rpow__()` : opérateur de puissance|
