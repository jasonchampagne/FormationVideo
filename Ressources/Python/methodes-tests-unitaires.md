# Méthodes pour les tests unitaires

Quelques méthodes disponibles avec le [module unittest](https://docs.python.org/3/library/unittest.html#unittest.TestCase) de Python pour effectuer vos tests unitaires.

|Méthode|Vérification effectuée|
|:--|:--|
|assertEqual(a, b)|a == b|
|assertFalse(a)|bool(a) is False|
|assertIn(a, b)|a in b|
|assertIs(a, b)|a is b|
|assertIsInstance(a, b)|isinstance(a, b)|
|assertIsNone(a)|a is None|
|assertIsNot(a, b)|a is not b|
|assertIsNotNone(a)|a is not None|
|assertNotEqual(a, b)|a != b|
|assertNotIn(a, b)|a not in b|
|assertNotIsInstance(a, b)|no isinstance(a, b)|
|assertRaises(except_type, some_func, \*args, \*\*kwargs)|some_func(\*args, \*\*kwargs) génère une _except_type_|
|assertRaisesRegex(except_type, reg, some_func, \*args, \*\*kwargs)|some_func(\*args, \*\*kwargs) génère une _except_type_ et valide l'expression rationnelle _reg_|
|assertTrue(a)|bool(a) is True|
|assertWarns(warning, some_func, \*args, \*\*kwargs)|some_func(\*args, \*\*kwargs) génère un avertissement|
