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
class VigenereCipher
{
    // Chiffrement
    public static string Encrypt(string message, string key)
    {
        StringBuilder encryptedMessage = new StringBuilder(message);
        key = key.ToUpper();
        int messageLength = message.Length;
        int keyLength = key.Length;
        int keyIndex = 0;
        int shift = 0;

        for(int i = 0 ; i < messageLength ; ++i)
            if(char.IsLetter(message[i]))
            {
                shift = key[keyIndex % keyLength] - 'A';

                if(char.IsUpper(message[i]))
                    encryptedMessage[i] = (char)(((message[i] - 'A' + shift) % 26) + 'A');
                else
                    encryptedMessage[i] = (char)(((message[i] - 'a' + shift) % 26) + 'a');

                keyIndex++;
            }

        return encryptedMessage.ToString();
    }

    // Déchiffrement
    public static string Decrypt(string encryptedMessage, string key)
    {
        StringBuilder message = new StringBuilder(encryptedMessage);
        key = key.ToUpper();
        int encryptedMessageLength = message.Length;
        int keyLength = key.Length;
        int keyIndex = 0;
        int shift = 0;

        for(int i = 0 ; i < encryptedMessageLength ; ++i)
            if(char.IsLetter(encryptedMessage[i]))
            {
                shift = key[keyIndex % keyLength] - 'A';

                if(char.IsUpper(encryptedMessage[i]))
                    message[i] = (char)(((encryptedMessage[i] - 'A' - shift + 26) % 26) + 'A');
                else
                    message[i] = (char)(((encryptedMessage[i] - 'a' - shift + 26) % 26) + 'a');

                keyIndex++;
            }

        return message.ToString();
    }
}
```

---

## Java

```java
public class VigenereCipher
{
    // Chiffrement
    public static String encrypt(String message, String key)
    {
        StringBuilder encryptedMessage = new StringBuilder();
        key = key.toUpperCase();
        int messageLength = message.length();
        int keyLength = key.length();
        int keyIndex = 0;
        int shift = 0;

        for(int i = 0 ; i < messageLength ; ++i)
        {
            char messageCharacter = message.charAt(i);

            if(Character.isLetter(messageCharacter))
            {
                shift = key.charAt(keyIndex % keyLength) - 'A';

                if(Character.isUpperCase(messageCharacter))
                    encryptedMessage.append((char)(((messageCharacter - 'A' + shift) % 26) + 'A'));
                else
                    encryptedMessage.append((char)(((messageCharacter - 'a' + shift) % 26) + 'a'));

                keyIndex++;
            }
            else
                encryptedMessage.append(messageCharacter);
        }

        return encryptedMessage.toString();
    }

    // Déchiffrement
    public static String decrypt(String encryptedMessage, String key)
    {
        StringBuilder message = new StringBuilder();
        key = key.toUpperCase();
        int encryptedMessageLength = encryptedMessage.length();
        int keyLength = key.length();
        int keyIndex = 0;
        int shift = 0;

        for(int i = 0 ; i < encryptedMessageLength ; ++i)
        {
            char encryptedMessageCharacter = encryptedMessage.charAt(i);

            if(Character.isLetter(encryptedMessageCharacter))
            {
                shift = key.charAt(keyIndex % keyLength) - 'A';

                if(Character.isUpperCase(encryptedMessageCharacter))
                    message.append((char)(((encryptedMessageCharacter - 'A' - shift + 26) % 26) + 'A'));
                else
                    message.append((char)(((encryptedMessageCharacter - 'a' - shift + 26) % 26) + 'a'));

                keyIndex++;
            }
            else
                message.append(encryptedMessageCharacter);
        }

        return message.toString();
    }
}
```

---

## JavaScript

```js
// Chiffrement
function vigenereCipherEncrypt(message, key)
{
    let encryptedMessage = '';
    key = key.toUpperCase();
    const messageLength = message.length;
    const keyLength = key.length;
    let keyCharacter = 0;
    let keyIndex = 0;
    let shift = 0;

    for(let i = 0 ; i < messageLength ; ++i)
        if(/[a-zA-Z]/.test(message[i]))
        {
            keyCharacter = key[keyIndex % keyLength];
            shift = keyCharacter.charCodeAt(0) - 'A'.charCodeAt(0);

            if(/[A-Z]/.test(message[i]))
                encryptedMessage += String.fromCharCode(((message[i].charCodeAt(0) - 'A'.charCodeAt(0) + shift) % 26) + 'A'.charCodeAt(0));
            else
                encryptedMessage += String.fromCharCode(((message[i].charCodeAt(0) - 'a'.charCodeAt(0) + shift) % 26) + 'a'.charCodeAt(0));

            keyIndex++;
        }
        else
            encryptedMessage += message[i];

    return encryptedMessage;
}

// Déchiffrement
function vigenereCipherDecrypt(encryptedMessage, key)
{
    let message = '';
    key = key.toUpperCase();
    const encryptedMessageLength = encryptedMessage.length;
    const keyLength = key.length;
    let keyCharacter = 0;
    let keyIndex = 0;
    let shift = 0;

    for(let i = 0 ; i < encryptedMessageLength ; ++i)
        if(/[a-zA-Z]/.test(encryptedMessage[i]))
        {
            keyCharacter = key[keyIndex % keyLength];
            shift = keyCharacter.charCodeAt(0) - 'A'.charCodeAt(0);

            if(/[A-Z]/.test(encryptedMessage[i]))
                message += String.fromCharCode(((encryptedMessage[i].charCodeAt(0) - 'A'.charCodeAt(0) - shift + 26) % 26) + 'A'.charCodeAt(0));
            else
                message += String.fromCharCode(((encryptedMessage[i].charCodeAt(0) - 'a'.charCodeAt(0) - shift + 26) % 26) + 'a'.charCodeAt(0));

            keyIndex++;
        }
        else
            message += encryptedMessage[i];

    return message;
}
```

---

## PHP

```php
// Chiffrement
function vigenereCipherEncrypt(string $message, string $key): string
{
    $encryptedMessage = '';
    $key = strtoupper($key);
    $keyLength = strlen($key);
    $keyIndex = 0;
    $shift = 0;

    for($i = 0 ; $i < strlen($message) ; ++$i)
        if(ctype_alpha($message[$i]))
        {
            $shift = ord($key[$keyIndex % $keyLength]) - ord('A');

            if(ctype_upper($message[$i]))
                $encryptedMessage .= chr(((ord($message[$i]) - ord('A') + $shift) % 26) + ord('A'));
            else
                $encryptedMessage .= chr(((ord($message[$i]) - ord('a') + $shift) % 26) + ord('a'));

            $keyIndex++;
        }
        else
            $encryptedMessage .= $message[$i];

    return $encryptedMessage;
}

// Déchiffrement
function vigenereCipherDecrypt(string $encryptedMessage, string $key): string
{
    $message = '';
    $key = strtoupper($key);
    $keyLength = strlen($key);
    $keyIndex = 0;
    $shift = 0;

    for($i = 0 ; $i < strlen($encryptedMessage) ; ++$i)
        if(ctype_alpha($encryptedMessage[$i]))
        {
            $shift = ord($key[$keyIndex % $keyLength]) - ord('A');

            if(ctype_upper($encryptedMessage[$i]))
                $message .= chr(((ord($encryptedMessage[$i]) - ord('A') - $shift + 26) % 26) + ord('A'));
            else
                $message .= chr(((ord($encryptedMessage[$i]) - ord('a') - $shift + 26) % 26) + ord('a'));

            $keyIndex++;
        }
        else
            $message .= $encryptedMessage[$i];

    return $message;
}
```

---

## Python

```python
# Chiffrement
def vigenere_cipher_encrypt(message, key):
    encrypted_message = []
    key = key.upper()
    key_length = len(key)
    key_index = 0
    shift = 0

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
    message = []
    key = key.upper()
    key_length = len(key)
    key_index = 0
    shift = 0

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
