# Parcours séquentiel

> **SOMMAIRE**
> + [C](#c)
> + [C++](#c-1)
> + [C#](#c-2)
> + [Java](#java)
> + [JavaScript](#javascript)
> + [PHP](#php)
> + [Python](#python)

---

## C

```c
// code...
```

---

## C++

```cpp
// code...
```

---

## C#

```csharp
// code...
```

---

## Java

```java
// code...
```

---

## JavaScript

```javascript
// code...
```

---

## PHP

```php
$collection = [1, 2, 3, 4, 5];
$collectionSize = count($collection);
$i = 0;

//--------------------------------------------------------

// Parcours par indice
while($i < $collectionSize)
{
    echo $collection[$i].'<br>';
    $i += 1;
}

// Parcours par indice (auto-incrémenté)
for($i = 0 ; $i < $collectionSize ; ++$i)
    echo $collection[$i].'<br>';

// Parcours avec variable temporaire d'itération
foreach($collection as $value)
    echo $value.'<br>';
```

---

## Python

```python
collection = [1, 2, 3, 4, 5]
collection_size = len(collection)
i = 0

#--------------------------------------------------------

# Parcours par indice
while i < collection_size:
    print(collection[i])
    i += 1

# Parcours par indice (auto-incrémenté)
for i in range(collection_size):
    print(collection[i])

# Parcours avec variable temporaire d'itération
for value in collection:
    print(value)
```
