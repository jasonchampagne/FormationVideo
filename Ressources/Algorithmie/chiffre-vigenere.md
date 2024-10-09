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
    char messageCharacter = 0;
    char keyCharacter = 0;
    int keyIndex = 0;
    int shift = 0;

    for(size_t i = 0 ; i < messageLength ; ++i)
    {
        messageCharacter = message[i];

        if(isalpha(messageCharacter))
        {
            keyCharacter = key[keyIndex % keyLength];
            shift = toupper(keyCharacter) - 'A';

            if(messageCharacter >= 'A' && messageCharacter <= 'Z')
                encryptedMessage[i] = ((messageCharacter - 'A' + shift) % 26) + 'A';
            else if(messageCharacter >= 'a' && messageCharacter <= 'z')
                encryptedMessage[i] = ((messageCharacter - 'a' + shift) % 26) + 'a';

            keyIndex++;
        }
        else
            encryptedMessage[i] = messageCharacter;
    }
}

// Déchiffrement
void vigenereCipherDecrypt(const char* encryptedMessage, const char* key, char* message)
{
    size_t encryptedMessageLength = strlen(encryptedMessage);
    size_t keyLength = strlen(key);
    char encryptedMessageCharacter = 0;
    char keyCharacter = 0;
    int keyIndex = 0;
    int shift = 0;

    for(size_t i = 0 ; i < encryptedMessageLength ; ++i)
    {
        encryptedMessageCharacter = encryptedMessage[i];

        if(isalpha(encryptedMessageCharacter))
        {
            keyCharacter = key[keyIndex % keyLength];
            shift = toupper(keyCharacter) - 'A';

            if(encryptedMessageCharacter >= 'A' && encryptedMessageCharacter <= 'Z')
                message[i] = ((encryptedMessageCharacter - 'A' - shift + 26) % 26) + 'A';
            else if(encryptedMessageCharacter >= 'a' && encryptedMessageCharacter <= 'z')
                message[i] = ((encryptedMessageCharacter - 'a' - shift + 26) % 26) + 'a';

            keyIndex++;
        }
        else
            message[i] = encryptedMessageCharacter;
    }
}
```

---

## C++

```cpp
...
```

---

## C#

```csharp
...
```

---

## Java

```java
...
```

---

## JavaScript

```js
...
```

---

## PHP

```php
...
```

---

## Python

```python
...
```
