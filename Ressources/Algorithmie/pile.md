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
namespace fv
{
    constexpr int STACK_CAPACITY = 16;

    class stack
    {
        public:
            bool empty() const
            {
                return _top == 0;
            };

            bool full() const
            {
                return _top == STACK_CAPACITY;
            };

            void print() const
            {
                if(empty())
                {
                    std::cerr << "Rien a afficher, la pile est vide." << std::endl;
                    return;
                }

                for(int i = _top - 1 ; i >= 0 ; --i)
                    std::cout << "[" << _values[i] << "]" << std::endl;
            };

            void push(const int value)
            {
                if(full())
                {
                    std::cerr << "Impossible d'ajouter une valeur, la pile est pleine." << std::endl;
                    return;
                }

                _values[_top] = value;
                _top++;
            };

            int pop()
            {
                if(empty())
                    throw std::out_of_range("Impossible de retirer une valeur, la pile est vide");

                int value{_values[_top - 1]};
                _top--;

                return value;
            };

            int top() const
            {
                if(empty())
                    throw std::out_of_range("Pas de sommet, la pile est vide.");

                return _values[_top - 1];
            };

            int size() const
            {
                return _top;
            };

            void clear()
            {
                while(!empty())
                    pop();
            };

        private:
            int _values[STACK_CAPACITY] = {0};
            int _top = 0;
    };
}
```

---

## C#

```csharp
public class Stack
{
    private const int STACK_CAPACITY = 16;
    private int[] _values = new int[STACK_CAPACITY];
    private int _top = 0;


    public bool Empty()
    {
        return _top == 0;
    }

    public bool Full()
    {
        return _top == STACK_CAPACITY;
    }

    public void Print()
    {
        if(Empty())
        {
            Console.WriteLine("Rien à afficher, la pile est vide.");
            return;
        }

        for(int i = _top - 1 ; i >= 0 ; --i)
            Console.WriteLine("[" + _values[i] + "]");
    }

    public void Push(int value)
    {
        if(Full())
        {
            Console.WriteLine("Impossible d'ajouter une valeur, la pile est pleine.");
            return;
        }

        _values[_top] = value;
        _top++;
    }

    public int Pop()
    {
        if(Empty())
            throw new InvalidOperationException("Impossible de retirer une valeur, la pile est vide.");

        int value = _values[_top - 1];
        _top--;

        return value;
    }

    public int Top()
    {
        if(Empty())
            throw new InvalidOperationException("Pas de sommet, la pile est vide.");

        return _values[_top - 1];
    }

    public int Size()
    {
        return _top;
    }

    public void Clear()
    {
        while(!Empty())
            Pop();
    }
}
```

---

## Java

```java
public class Stack
{
    private static final int STACK_CAPACITY = 16;
    private int[] _values = new int[STACK_CAPACITY];
    private int _top = 0;

    public boolean empty()
    {
        return _top == 0;
    }

    public boolean full()
    {
        return _top == STACK_CAPACITY;
    }

    public void print()
    {
        if(empty())
        {
            System.err.println("Rien à afficher, la pile est vide.");
            return;
        }

        for(int i = _top - 1 ; i >= 0 ; --i)
            System.out.println("[" + _values[i] + "]");
    }

    public void push(int value)
    {
        if(full())
        {
            System.err.println("Impossible d'ajouter une valeur, la pile est pleine.");
            return;
        }

        _values[_top] = value;
        _top++;
    }

    public int pop()
    {
        if(empty())
            throw new IllegalStateException("Impossible de retirer une valeur, la pile est vide.");

        int value = _values[_top - 1];
        _top--;

        return value;
    }

    public int top()
    {
        if(empty())
            throw new IllegalStateException("Pas de sommet, la pile est vide.");

        return _values[_top - 1];
    }

    public int size()
    {
        return _top;
    }

    public void clear()
    {
        while(!empty())
            pop();
    }
}

```

---

## JavaScript

```js
class Stack
{
    constructor()
    {
        this.STACK_CAPACITY = 16;
        this._values = new Array(this.STACK_CAPACITY);
        this._top = 0;
    }

    empty()
    {
        return this._top === 0;
    }

    full()
    {
        return this._top === this.STACK_CAPACITY;
    }

    print()
    {
        if(this.empty())
        {
            console.error("Rien à afficher, la pile est vide.");
            return;
        }

        for(let i = this._top - 1 ; i >= 0 ; --i)
            console.log("[" + this._values[i] + "]");
    }

    push(value)
    {
        if(this.full())
        {
            console.error("Impossible d'ajouter une valeur, la pile est pleine.");
            return;
        }

        this._values[this._top] = value;
        this._top++;
    }

    pop()
    {
        if(this.empty())
            throw new Error("Impossible de retirer une valeur, la pile est vide.");

        let value = this._values[this._top - 1];
        this._top--;

        return value;
    }

    top()
    {
        if(this.empty())
            throw new Error("Pas de sommet, la pile est vide.");

        return this._values[this._top - 1];
    }

    size()
    {
        return this._top;
    }

    clear()
    {
        while(!this.empty())
            this.pop();
    }
}
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
