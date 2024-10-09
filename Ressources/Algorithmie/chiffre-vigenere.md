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
# Chiffrement
def vigenere_cipher_encrypt(message, key):
    key = key.upper()
    key_length = len(key)
    key_index = 0
    shift = 0

    encrypted_message = []

    for character in message:
        if character.isalpha():
            shift = ord(key[key_index % key_length]) - ord('A')

            if character.isupper():
                encrypted_message.append(chr((ord(character) - ord('A') + shift) % 26 + ord('A')))
            else:
                encrypted_message.append(chr((ord(character) - ord('a') + shift) % 26 + ord('a')))

            key_index += 1
        else:
            encrypted_message.append(character)

    return ''.join(encrypted_message)

# Déchiffrement
def vigenere_cipher_decrypt(encrypted_message, key):
    key = key.upper()
    key_length = len(key)
    key_index = 0
    shift = 0

    message = []

    for character in encrypted_message:
        if character.isalpha():
            shift = ord(key[key_index % key_length]) - ord('A')

            if character.isupper():
                message.append(chr((ord(character) - ord('A') - shift + 26) % 26 + ord('A')))
            else:
                message.append(chr((ord(character) - ord('a') - shift + 26) % 26 + ord('a')))

            key_index += 1
        else:
            message.append(character)

    return ''.join(message)
```
