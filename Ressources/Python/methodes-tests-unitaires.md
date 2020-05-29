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

```python
assertRaises(exception, function, *args, **kwargs) # fonction génère exception
assertRaisesRegex(exception, regex, function, *args, **kwargs) # fonction génère exception + valide regex

assertWarns(warning, function, *args, **kwargs) # fonction génère avertissement
assertWarnsRegex(exception, regex, function, *args, **kwargs) # fonction génère avertissement + valide regex
```
