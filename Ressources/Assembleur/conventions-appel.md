# Conventions d'appel

## GNU/Linux

### 64 bits

> [SystemV AMD64 ABI](https://refspecs.linuxbase.org/elf/x86_64-abi-0.98.pdf)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9` (entiers)<br>`XMM0` à `XMM7` (flottants)|
|Paramètres supplémentaires|pile|
|Ordre sur la pile|droite à gauche|
|Valeur de retour|`RAX` (entier : 64 bits)<br>`RAX` + `RBX` (entier : 128 bits)<br>`XMM0`, `XMM1` (flottants)|
|Registres conservés|`RBX`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`|
|Registres volatiles|`RAX`, `RDI`, `RSI`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0` à `XMM15`|

---

## Windows

### 64 bits

> [Microsoft x64](https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`RCX`, `RDX`, `R8`, `R9` (entiers)<br>`XMM0`, `XMM1`, `XMM2`, `XMM3` (nombres à virgule flottante)|
|Paramètres supplémentaires|pile|
|Ordre sur la pile|gauche à droite|
|Valeur de retour|`RAX`|
|Registres conservés|`RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`<br>`XMM6` à `XMM15`|
|Registres volatiles|`RAX`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0` à `XMM5`|
