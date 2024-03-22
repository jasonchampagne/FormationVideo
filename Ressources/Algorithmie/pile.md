# Pile

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
#define STACK_CAPACITY 16


struct Stack
{
    int values[STACK_CAPACITY];
    int top;
};


struct Stack new_stack(void)
{
    struct Stack st = {{0}, 0};
    return st;
}

bool empty_stack(struct Stack* st)
{
    return (st->top == 0);
}

bool full_stack(struct Stack* st)
{
    return (st->top == STACK_CAPACITY - 1);
}

void print_stack(struct Stack* st)
{
    if(empty_stack(st))
    {
        fprintf(stderr, "Rien a afficher, la pile est vide.\n");
        return;
    }

    for(int i = st->top - 1 ; i >= 0 ; --i)
        printf("[%d]\n", st->values[i]);
}

void push_stack(struct Stack* st, int value)
{
    if(full_stack(st))
    {
        fprintf(stderr, "Impossible d'ajouter une valeur, la pile est pleine.\n");
        return;
    }

    st->values[st->top] = value;
    st->top++;
}

int pop_stack(struct Stack* st)
{
    if(empty_stack(st))
    {
        fprintf(stderr, "Impossible de retirer une valeur, la pile est vide.\n");
        return;
    }

    int value = st->values[st->top - 1];
    st->top--;

    return value;
}

int top_stack(struct Stack* st)
{
    if(empty_stack(st))
    {
        fprintf(stderr, "Pas de sommet, la pile est vide.\n");
        exit(1);
    }

    return st->values[st->top - 1];
}

int size_stack(struct Stack* st)
{
    return st->top;
}

void clear_stack(struct Stack* st)
{
    while(!empty_stack(st))
        pop_stack(st);
}
```

---

## C++

```cpp
// À venir...
```

---

## C#

```csharp
// À venir...
```

---

## Java

```java
// À venir...
```

---

## JavaScript

```js
// À venir...
```

---

## PHP

```php
// À venir...
```

---

## Python

```python
# À venir...
```
