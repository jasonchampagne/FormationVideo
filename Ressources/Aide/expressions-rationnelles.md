# Expressions rationnelles

> [AIDE - Expressions rationnelles](#)

## Délimiteurs

À venir...

## Métacaractères

|⌨|DESCRIPTION|
|:--:|:--|
|.|Tout caractère (sauf le retour à la ligne : \n)|
|^|Début de chaîne (ou ligne)|
|$|Fin de chaîne (ou ligne)|
|\[ ]|Début et fin de classe|
|( )|Début et fin de sous-masque|
|{ }|Début et fin de quantificateur d'intervalle|
|\||Valeur alternative|
|?|Quantificateur (0 ou 1)|
|\*|Quantificateur (0 ou plusieurs)|
|+|Quantificateur (1 ou plusieurs)|
|\\|Échappement de caractère d'une expression|

## Classes et séquences

|DESCRIPTION|PCRE|POSIX|
|:--|:--:|:--:|
|Lettres en minuscule||\[:lower:\]|
|Lettres en majuscule||\[:upper:\]|
|Lettres en minuscule et en majuscule||\[:alpha:\]|
|Chiffres||\[:digit:\]|
|Lettres et chiffres||\[:alnum:\]|
|Espaces et tabulations||\[:blank:\]|
|Caractères d'échappement||\[:space:\]|
|Ponctuations||\[:punct:\]|

## Options de recherche

+ g : traitement global (ne s'arrête pas au premier schéma trouvé)
+ i : insensible à la casse
+ m : traitement multiligne
+ s : le point remplace aussi le caractère de nouvelle ligne (\n)
+ U : mode "non gourmand" (s'arrête dès la fin de chaque motif rencontré)
+ u : traitement en UTF-8
+ x : caractères d'espacement ignorés

---

## Exemples de motifs

À venir...

---

## Exemples de code

> + [C](#c)
> + [C++](#c-1)
> + [CSharp](#csharp)
> + [D](#d)
> + [Dart](#dart)
> + [Go](#go)
> + [Java](#java)
> + [JavaScript](#javascript)
> + [Lua](#lua)
> + [PHP](#php)
> + [Python](#python)
> + [Ruby](#ruby)
> + [Rust](#rust)
> + [SQL](#sql)
> + [V](#v)
> + [Visual Basic](#visual-basic)

### C

```c
// NOTE : issu de la norme POSIX (n'est pas portable)
#include <stdio.h>
#include <stdlib.h>
#include <regex.h>

int main(void)
{
    char data[] = "tester-une-expression-rationnelle-avec-C";
    char pattern[] = "^[a-zA-Z-]+$";
    char buffer[128];
    regex_t regex;
    int exec_regex_code;
    
    if(regcomp(&regex, pattern, REG_EXTENDED))
    {
        fprintf(stderr, "ERREUR : Impossible de compiler le motif\n");
        exit(EXIT_FAILURE);
    }
    
    exec_regex_code = regexec(&regex, data, 0, NULL, 0);
        
    if(!exec_regex_code)
        printf("OK\n");
    else if(exec_regex_code == REG_NOMATCH)
        printf("PAS OK\n");
    else
    {
        regerror(exec_regex_code, &regex, buffer, sizeof(buffer));
        fprintf(stderr, "ERREUR : Echec du test de motif (%s)", buffer);
        exit(EXIT_FAILURE);
    }
    
    regfree(&regex);
    return 0;
}
```

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

### CSharp

```cs
using System;
using System.Text.RegularExpressions;

public class Program
{
	static void Main(string[] args)
	{
		string data = "tester-une-expression-rationnelle-avec-CSharp";
		Regex regex = new Regex("^[a-zA-Z-]+$");

		if(regex.IsMatch(data))
			Console.WriteLine("OK");
	}
}
```

### D

```d
import std.stdio, std.regex;

void main()
{
	string data = "tester-une-expression-rationnelle-avec-D";
	string pattern = r"^[a-zA-Z-]+$";
	
	if(matchFirst(data, pattern))
		writeln("OK");
}
```

### Dart

```dart
main()
{
    var data = "tester-une-expression-rationnelle-avec-Dart";
    RegExp regex = new RegExp(r"^[a-zA-Z-]+$");
    
    if(regex.hasMatch(data))
        print("OK");
}
```

### Go

```go
package main

import (
    "fmt"
    "regexp"
)

func main() {
    data := "tester-une-expression-rationnelle-avec-Go"
    regex := regexp.MustCompile("^[a-zA-Z-]+$")
    
    if regex.FindString(data) != "" {
        fmt.Println("OK")
    }
}
```

### Java

```java
import java.util.regex.Matcher;

public class Main
{
	public static void main(String[] args)
	{
		String data = "tester-une-expression-rationnelle-avec-Java";
		String pattern = "^[a-zA-Z-]+$";

		if(data.matches(pattern))
			System.out.println("OK");
	}
}
```

### JavaScript

```javascript
let data = "tester-une-expression-rationnelle-avec-JavaScript";
let pattern = "^[a-zA-Z-]+$";

if(data.match(pattern))
	document.write("OK");
```

### Lua

```lua
data = "tester-une-expression-rationnelle-avec-Lua"
pattern = "^[a-zA-Z-]+$"

if(data:match(pattern))
then
    print("OK")
end
```

### PHP

```php
<?php

$data = 'tester-une-expression-rationnelle-avec-PHP';
$pattern = '#^[a-zA-Z-]+$#';

if(preg_match($pattern, $data))
	echo 'OK';
```

### Python

```python
#coding:utf-8
import re

data = 'tester-une-expression-rationnelle-avec-Python'

# Possibilité
regex = re.compile('^[a-zA-Z-]+$')

if regex.match(data):
	print('OK')

# Autre possibilité
pattern = '^[a-zA-Z-]+$'

if re.search(pattern, data):
	print('OK')
```

### Ruby

```ruby
data = "tester-une-expression-rationnelle-avec-Ruby"
pattern = "#^[a-zA-Z-]+$#"

if data.scan(pattern)
    puts("OK")
end
```

### Rust

```rust
// Nécessite la bibliothèque regex
use regex::Regex;

fn main()
{
	let data = "tester-une-expression-rationnelle-avec-Rust";
	let regex = Regex::new(r"^[a-zA-Z-]+$").unwrap();

	if regex.is_match(data)
	{
		println!("OK");
	}
}
```

### SQL

```sql
SELECT REGEXP_INSTR('tester-une-expression-rationnelle-avec-SQL', '^[a-zA-Z-]+$');
```

### V

```v
import regex

fn main()
{
	data := "tester-une-expression-rationnelle-avec-V"
	pattern := r"^[-a-zA-Z]+$"
	
	mut reg := regex.new()
	reg.compile_opt(pattern) or { println(err) }

	start_index, end_index := reg.match_string(data)
    
	if start_index >= 0 && end_index > start_index
	{
		println("OK")
	}
}
```

### Visual Basic

```vb
Imports System.Text.RegularExpressions

Module Program
	Sub Main()
		Dim data As String = "tester-une-expression-rationnelle-avec-Rust"
		Dim regex As Regex = New Regex("^[a-zA-Z-]+$")

		If regex.Match(data).Success Then
			Console.WriteLine("OK")
		End If
	End Sub
End Module
```
