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

// Chiffrement
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

// Déchiffrement
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

```python
ALPHABET_SIZE = 26

# Chiffrement
def caesar_cipher_encrypt(message, shift):
    shift %= ALPHABET_SIZE

    if shift < 0:
        shift += ALPHABET_SIZE

    encrypted_message = ""

    for character in message:
        if character.isalpha():
            base = ord('A') if character.isupper() else ord('a')
            c = chr((ord(character) - base + shift) % ALPHABET_SIZE + base)
            encrypted_message += c
        else:
            encrypted_message += character

    return encrypted_message

# Déchiffrement
def caesar_cipher_decrypt(message, shift):
    return caesar_cipher_encrypt(message, ALPHABET_SIZE - shift)
```
