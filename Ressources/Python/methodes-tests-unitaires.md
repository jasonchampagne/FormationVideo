# Méthodes pour les tests unitaires

Quelques méthodes disponibles avec le [module unittest](https://docs.python.org/3/library/unittest.html#unittest.TestCase) de Python pour effectuer vos tests unitaires.

## Comparaisons

Vérifie `a is True` :

```python
assertTrue(a)
```

Vérifie `a is False` :

```python
assertFalse(a)
```

Vérifie `a == b` :

```python
assertEqual(a, b)
```

Vérifie `a != b` :

```python
assertNotEqual(a, b)
```

## Exceptions et avertissements

|Méthode|Vérification effectuée|
|:--|:--|
|assertIn(a, b)|a in b|
|assertIs(a, b)|a is b|
|assertIsInstance(a, b)|isinstance(a, b)|
|assertIsNone(a)|a is None|
|assertIsNot(a, b)|a is not b|
|assertIsNotNone(a)|a is not None|
|assertNotIn(a, b)|a not in b|
|assertNotIsInstance(a, b)|no isinstance(a, b)|
|assertRaises(exc, func, \*args, \*\*kwargs)|la fonction génère exception|
|assertRaisesRegex(exc, reg, func, \*args, \*\*kwargs)|la fonction génère une exception + valide l'expression rationnelle|
|assertWarns(war, func, \*args, \*\*kwargs)|la fonction génère un avertissement|
