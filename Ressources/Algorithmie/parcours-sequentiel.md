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
#define COLLECTION_SIZE 5

//--------------------------------------------------------

int collection[COLLECTION_SIZE] = {1, 2, 3, 4, 5};
int i = 0;

//--------------------------------------------------------

// Parcours par indice
while(i < COLLECTION_SIZE)
{
    printf("%d\n", collection[i]);
    i += 1;
}

// Parcours par indice (auto-incrémenté)
for(i = 0 ; i < COLLECTION_SIZE ; ++i)
    printf("%d\n", collection[i]);
```

---

## C++

```cpp
std::array<int, 5> collection{1, 2, 3, 4, 5};
std::size_t collectionSize{collection.size()};
auto i = 0;

//--------------------------------------------------------

// Parcours par indice
while(i < collectionSize)
{
    std::cout << collection[i] << "\n";
    i += 1;
}

// Parcours par indice (auto-incrémenté)
for(i = 0 ; i < collectionSize ; ++i)
    std::cout << collection[i] << "\n";

// Parcours avec variable temporaire d'itération
for(auto& value : collection)
    std::cout << value << "\n";
```

---

## C#

```csharp
int[] collection = {1, 2, 3, 4, 5};
int collectionSize = collection.Length;
int i = 0;

//--------------------------------------------------------

// Parcours par indice
while(i < collectionSize)
{
    Console.WriteLine(collection[i]);
    i += 1;
}

// Parcours par indice (auto-incrémenté)
for(i = 0 ; i < collectionSize ; ++i)
    Console.WriteLine(collection[i]);

// Parcours avec variable temporaire d'itération
foreach(int value in collection)
    Console.WriteLine(value);
```

---

## Java

```java
int[] collection = {1, 2, 3, 4, 5};
int collectionSize = collection.length;
int i = 0;

//--------------------------------------------------------

// Parcours par indice
while(i < collectionSize)
{
    System.out.println(collection[i]);
    i += 1;
}

// Parcours par indice (auto-incrémenté)
for(i = 0 ; i < collectionSize ; ++i)
    System.out.println(collection[i]);

// Parcours avec variable temporaire d'itération
for(int value : collection)
    System.out.println(value);
```

---

## JavaScript

```javascript
let collection = [1, 2, 3, 4, 5];
let collectionSize = collection.length;
let i = 0;

//--------------------------------------------------------

// Parcours par indice
while(i < collectionSize)
{
    console.log(collection[i]);
    i += 1;
}

// Parcours par indice (auto-incrémenté)
for(i = 0 ; i < collectionSize ; ++i)
    console.log(collection[i]);

// Parcours avec variable temporaire d'itération
collection.forEach(value =>
{
    console.log(value);
});
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
