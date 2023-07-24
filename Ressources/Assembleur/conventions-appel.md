# Conventions d'appel

📛 **Veillez à vérifier les conventions d'appel qui sont prises en charge par votre compilateur et/ou votre environnement de développement**

## GNU/Linux

### 64 bits

> [SystemV AMD64 ABI](https://refspecs.linuxbase.org/elf/x86_64-abi-0.98.pdf)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9` (entiers)<br>`XMM0` à `XMM7` (flottants)|
|Paramètres supplémentaires|pile (_de droite à gauche_)|
|Valeur de retour|`RAX` (entier : 64 bits)<br>`RAX` + `RBX` (entier : 128 bits)<br>`XMM0`, `XMM1` (flottants)|
|Registres conservés|`RBX`, `RBP`, `RSP`, `R12` à `R15`|
|Registres volatiles|`RAX`, `RDI`, `RSI`, `RCX`, `RDX`, `R8` à `R11`<br>`XMM0` à `XMM15`|

### 32 bits

|/|DESCRIPTION|
|--:|:--|
|Paramères||
|Paramètres supplémentaires||
|Valeur de retour||
|Registres conservés||
|Registres volatiles||

---

## Windows

### 64 bits

> [Microsoft x64 Calling Convention](https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`RCX`, `RDX`, `R8`, `R9` (entiers)<br>`XMM0` à `XMM3` (flottants)|
|Paramètres supplémentaires|pile (_de droite à gauche_)|
|Valeur de retour|`RAX` (64 bits)<br>`XMM0` (128 bits)|
|Registres conservés|`RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12` à `R15`<br>`XMM6` à `XMM15`|
|Registres volatiles|`RAX`, `RCX`, `RDX`, `R8` à `R11`<br>`XMM0` à `XMM5`|

### 32 bits

> [stdcall](https://learn.microsoft.com/en-us/cpp/cpp/stdcall)

|/|DESCRIPTION|
|--:|:--|
|Paramères|pile (_de droite à gauche_)|
|Valeur de retour|`EAX`|
