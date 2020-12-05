# Expressions rationnelles

> AIDE - Expressions rationnelles (à venir)

## PHP

```php
$data = 'tester-une-expression-rationnelle-avec-PHP';
$pattern = '#^[a-zA-Z\-]+$#';

if(preg_match($pattern, $data))
  echo 'OK';
```

## Python

```python
import re

data = 'tester-une-expression-rationnelle-avec-Python'
pattern = '^[a-zA-Z\-]+$'

if re.search(pattern, data):
	print('OK')
```
