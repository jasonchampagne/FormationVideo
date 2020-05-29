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

Vérifie `a is b` :

```python
assertIs(a, b)
```

Vérifie `a is not b` :

```python
assertIsNot(a, b)
```

Vérifie `a is None` :

```python
assertIsNone(a, b)
```

Vérifie `a is not None` :

```python
assertIsNotNone(a, b)
```

Vérifie `a in b` :

```python
assertIn(a, b)
```

Vérifie `a not in b` :

```python
assertNotIn(a, b)
```

Vérifie `isinstance(a, ClassName)` :

```python
assertIsInstance(a, ClassName)
```

Vérifie `not isinstance(a, ClassName)` :

```python
assertNotIsInstance(a, ClassName)
```

---

## Exceptions et avertissements

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
