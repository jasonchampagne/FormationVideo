# Tri par insertion

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
#define STRING_SIZE 64


// Chiffrement
void vigenereCipherEncrypt(const char* message, const char* key, char* encryptedMessage)
{
    size_t messageLength = strlen(message);
    size_t keyLength = strlen(key);
    int keyIndex = 0;
    int shift = 0;

    for(size_t i = 0 ; i < messageLength ; ++i)
        if(isalpha(message[i]))
        {
            shift = toupper(key[keyIndex % keyLength]) - 'A';

            if(message[i] >= 'A' && message[i] <= 'Z')
                encryptedMessage[i] = ((message[i] - 'A' + shift) % 26) + 'A';
            else if(message[i] >= 'a' && message[i] <= 'z')
                encryptedMessage[i] = ((message[i] - 'a' + shift) % 26) + 'a';

            keyIndex++;
        }
        else
            encryptedMessage[i] = message[i];
}

// Déchiffrement
void vigenereCipherDecrypt(const char* encryptedMessage, const char* key, char* message)
{
    size_t encryptedMessageLength = strlen(encryptedMessage);
    size_t keyLength = strlen(key);
    int keyIndex = 0;
    int shift = 0;

    for(size_t i = 0 ; i < encryptedMessageLength ; ++i)
        if(isalpha(encryptedMessage[i]))
        {
            shift = toupper(key[keyIndex % keyLength]) - 'A';

            if(encryptedMessage[i] >= 'A' && encryptedMessage[i] <= 'Z')
                message[i] = ((encryptedMessage[i] - 'A' - shift + 26) % 26) + 'A';
            else if(encryptedMessage[i] >= 'a' && encryptedMessage[i] <= 'z')
                message[i] = ((encryptedMessage[i] - 'a' - shift + 26) % 26) + 'a';

            keyIndex++;
        }
        else
            message[i] = encryptedMessage[i];
}
```

---

## C++

```cpp
à venir...
```

---

## C#

```csharp
à venir...
```

---

## Java

```java
à venir...
```

---

## JavaScript

```js
à venir...
```

---

## PHP

```php
à venir...
```

---

## Python

```python
à venir...
```
