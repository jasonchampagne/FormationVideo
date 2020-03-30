# Méthodes spéciales

En partie abordées sur [un tutoriel](https://www.youtube.com/watch?v=XxUasK8f-s0), les méthodes spéciales sont implicitements exécutées lors de traitements spécifiques en Python. Si l'on prend l'instanciation d'une classe (création d'un objet), l'instruction fera un appel à la méthode `__new__()`, qui fera elle-même appel à la méthode `__init__()`.

Si besoin, ces méthodes peuvent être redéfinies afin de les surcharger, pour permettre par exemple de faire la somme de deux objets d'un type personnalisé.

> ⛔ Tableau non terminé

|CATÉGORIE|MÉTHODES|SYNTAXE
|:--:|:--|:--:|
|Opérations|`__add__()` ou `__radd__()` : addition<br>`__sub__()` ou `__rsub__()` : soustraction<br>`__mul__()` ou `__rmul__()` : multiplication<br>`__truediv__()` ou `__rtruediv__()` : division<br>`__floordiv__()` ou `__rfloordiv__()` : division entière<br>`__mod__()` ou `__rmod__()` : modulo<br>`__pow__()` ou `__rpow__()` : puissance<br>`__iadd__()` : incrémentation<br>`__isub__()` : décrémentation|A + B<br>A - B<br>A \* B<br>A / B<br>A // B<br>A % B<br>A \*\* B<br>A += B<br>A -= B|
|Comparaisons|`__eq__()` : égalité<br>`__neq__()` : inégalité<br>`__lt__()` : strictement inférieur<br>`__gt__()` : strictement supérieur<br>`__le__()` : inférieur ou égal<br>`__ge__()` : supérieur ou égal|A == B<br>A != B<br>A \< B<br>A \> B<br>A \<= B<br>A \>= B|
|Conversions|`__int__()` : entier<br>`__float__()` : flottant<br>`__bool__()` : booléen|int(A)<br>float(A)<br>bool(A)|
