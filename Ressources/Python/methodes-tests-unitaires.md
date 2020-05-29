# Méthodes pour les tests unitaires

Quelques méthodes disponibles avec le [module unittest](https://docs.python.org/3/library/unittest.html#unittest.TestCase) de Python pour effectuer vos tests unitaires.

```python
assertTrue(a) # a is True
assertFalse(a) # a is False

assertEqual(a, b) # a == b
assertNotEqual(a, b) # a != b

assertIs(a, b) # a is b
assertIsNot(a, b) # a is not b

assertIsNone(a) # a is None
assertIsNotNone(a) # a is not None

assertIn(a, b) # a in b
assertNotIn(a, b) # a not in b

assertIsInstance(a, ClassName) # isinstance(a, ClassName)
assertNotIsInstance(a, ClassName) # not isinstance(a, ClassName)
```
---

Vérifie que l'appel à la fonction génère une exception :

```python
assertRaises(exception, function, *args, **kwargs)
```

Vérifie que l'appel à la fonction génère une exception + valide l'expression rationnelle :

```python
assertRaisesRegex(exception, regex, function, *args, **kwargs)
```

Vérifie que l'appel à la fonction génère un avertissement :

```python
assertWarns(warning, function, *args, **kwargs)
```

Vérifie que l'appel à la fonction génère un avertissement + valide l'expression rationnelle :

```python
assertWarnsRegex(exception, regex, function, *args, **kwargs)
```
