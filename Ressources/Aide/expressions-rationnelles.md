# Expressions rationnelles

> AIDE - Expressions rationnelles (à venir)

## PHP

```php
<?php

$str = 'tester-une-expression-rationnelle-avec-PHP';
$pattern = '#([a-zA-Z0-9\-]+)#';

if(preg_match($pattern, $str))
  echo 'OK';
```
