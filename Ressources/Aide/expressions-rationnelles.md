# Expressions rationnelles

> AIDE - Expressions rationnelles (à venir)

## Exemples de code

### C++

```cpp
#include <iostream>
#include <regex>
#include <string>

int main()
{
	std::string data = "tester-une-expression-rationnelle-avec-CPP";
	std::string pattern = "^[a-zA-Z-]+$";

	if(std::regex_match(data, std::regex(pattern)))
		std::cout << "OK" << std::endl;

	return 0;
}
```

### PHP

```php
<?php

$data = 'tester-une-expression-rationnelle-avec-PHP';
$pattern = '#^[a-zA-Z\-]+$#';

if(preg_match($pattern, $data))
	echo 'OK';
```

### Python

```python
#coding:utf-8
import re

data = 'tester-une-expression-rationnelle-avec-Python'
pattern = '^[a-zA-Z-]+$'

if re.search(pattern, data):
	print('OK')
```
