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


struct Stack newStack(void)
{
    struct Stack st = {{0}, 0};
    return st;
}

bool emptyStack(struct Stack* st)
{
    return (st->top == 0);
}

bool fullStack(struct Stack* st)
{
    return (st->top == STACK_CAPACITY - 1);
}

void printStack(struct Stack* st)
{
    if(emptyStack(st))
    {
        fprintf(stderr, "Rien a afficher, la pile est vide.\n");
        return;
    }

    for(int i = st->top - 1 ; i >= 0 ; --i)
        printf("[%d]\n", st->values[i]);
}

void pushStack(struct Stack* st, int value)
{
    if(fullStack(st))
    {
        fprintf(stderr, "Impossible d'ajouter une valeur, la pile est pleine.\n");
        return;
    }

    st->values[st->top] = value;
    st->top++;
}

int popStack(struct Stack* st)
{
    if(emptyStack(st))
    {
        fprintf(stderr, "Impossible de retirer une valeur, la pile est vide.\n");
        return;
    }

    st->top--;
    return st->values[st->top - 1];
}

int topStack(struct Stack* st)
{
    if(emptyStack(st))
    {
        fprintf(stderr, "Pas de sommet, la pile est vide.\n");
        exit(1);
    }

    return st->values[st->top - 1];
}

int sizeStack(struct Stack* st)
{
    return st->top;
}

void clearStack(struct Stack* st)
{
    while(!emptyStack(st))
        popStack(st);
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

                _top--;
                return _values[_top];
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

        _top--;
        return _values[_top];
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

        _top--;
        return _values[_top];
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

        this._top--;
        return this._values[this._top];
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
namespace fv;


class Stack
{
    private const STACK_CAPACITY = 16;
    private $_values = [];
    private $_top = 0;


    public function empty(): bool
    {
        return $this->_top === 0;
    }

    public function full(): bool
    {
        return $this->_top == self::STACK_CAPACITY;
    }

    public function print(): void
    {
        if($this->empty())
        {
            echo 'Rien à afficher, la pile est vide.'.PHP_EOL;
            return;
        }

        for($i = $this->_top - 1 ; $i >= 0 ; --$i)
            echo '['.$this->_values[$i].']'.PHP_EOL;
    }

    public function push(int $value): void
    {
        if($this->full())
        {
            echo 'Impossible d\'ajouter une valeur, la pile est pleine.'.PHP_EOL;
            return;
        }

        $this->_values[$this->_top] = $value;
        $this->_top++;
    }

    public function pop(): int|null
    {
        if($this->empty())
        {
            echo 'Impossible de retirer une valeur, la pile est vide.'.PHP_EOL;
            return null;
        }

        $this->_top--;
        return $this->_values[$this->_top];
    }

    public function top(): int
    {
        if($this->empty())
            throw new Exception("Pas de sommet, la pile est vide");

        return $this->_values[$this->_top - 1];
    }

    public function size(): int
    {
        return $this->_top;
    }

    public function clear(): void
    {
        while(!$this->empty())
            $this->pop();
    }
}
```

---

## Python

```python
class Stack:
    STACK_CAPACITY = 16

    def __init__(self):
        self._values = [0] * self.STACK_CAPACITY
        self._top = 0

    def empty(self):
        return self._top == 0

    def full(self):
        return self._top == self.STACK_CAPACITY

    def print(self):
        if self.empty():
            print("Rien à afficher, la pile est vide.")
            return

        for i in range(self._top - 1, -1, -1):
            print("[{self._values[i]}]")

    def push(self, value):
        if self.full():
            print("Impossible d'ajouter une valeur, la pile est pleine.")
            return

        self._values[self._top] = value
        self._top += 1

    def pop(self):
        if self.empty():
            print("Impossible de retirer une valeur, la pile est vide.")
            return

        self._top -= 1
        return self._values[self._top]

    def top(self):
        if self.empty():
            raise IndexError("Pas de sommet, la pile est vide.")

        return self._values[self._top - 1]

    def size(self):
        return self._top

    def clear(self):
        while not self.empty():
            self.pop()
```
