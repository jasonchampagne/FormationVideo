# Code de César

Les conditions d'usage de cet algorithme :

+ L'alphabet doit être codé (a-z et A-Z)

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
static const int ALPHABET_SIZE = 26;

void caesarCipherEncrypt(char* message, int shift)
{
    shift %= ALPHABET_SIZE;

    if(shift < 0)
        shift += ALPHABET_SIZE;

    for(int i = 0 ; message[i] != '\0' ; ++i)
        if(isalpha(message[i]))
        {
            char base = (message[i] >= 'a') ? 'a' : 'A';
            message[i] = (message[i] - base + shift) % ALPHABET_SIZE + base;
        }

}

void caesarCipherDecrypt(char* message, int shift)
{
    caesarCipherEncrypt(message, ALPHABET_SIZE - shift);
}
```

---

## C++

---

## C#

---

## Java

---

## JavaScript

---

## PHP

---

## Python
