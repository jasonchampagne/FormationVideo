# Conventions d'appel

> [!NOTE]
> + Les **registres conservés** doivent être sauvegardés par la fonction appelée avant leur modification (_callee-saved_)
> + Les **registres volatiles** doivent être sauvegardés par la fonction appelante avant leur modification (_caller-saved_)

## GNU/Linux

### 64 bits

> [SystemV AMD64](https://www.uclibc.org/docs/psABI-x86_64.pdf)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`RDI` `RSI` `RDX` `RCX` `R8` `R9` : entiers<br>`XMM0` `XMM1` `XMM2` `XMM3` `XMM4` `XMM5` `XMM6` `XMM7` : flottants|
|Paramètres supplémentaires|pile (_de droite à gauche_)|
|Valeur de retour|`RAX` : entier de 64 bits<br>`RAX` `RDX` : entier de 128 bits<br>`XMM0` `XMM1` : flottant|
|Registres conservés<br>_(callee-saved)_|`RBX` `RBP` `RSP` `R12` `R13` `R14` `R15`|
|Registres volatiles<br>_(caller-saved)_|`RAX` `RCX` `RDX` `RDI` `RSI` `R8` `R9` `R10` `R11`<br>`XMM0` `XMM1` `XMM2` `XMM3` `XMM4` `XMM5` `XMM6` `XMM7`<br>`XMM8` `XMM9` `XMM10` `XMM11` `XMM12` `XMM13` `XMM14` `XMM15`|

### 32 bits

> [SystemV Intel386](https://www.sco.com/developers/devspecs/abi386-4.pdf)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`EBX`, `ECX`, `EDX`, `ESI`, `EDI`, `EBP`|
|Valeur de retour|`EAX` (entier : 32 bits)<br>`EAX` + `EDX` (entier : 64 bits)|
|Registres volatiles<br>_(caller-saver)_|`EAX`, `EBX`, `ECX`, `EDX`, `ESI`, `EDI`, `EBP`|

---

## Windows

### 64 bits

> [Microsoft x64](https://learn.microsoft.com/en-us/cpp/build/x64-calling-convention)

|/|DESCRIPTION|
|--:|:--|
|Paramères|`RCX`, `RDX`, `R8`, `R9` (entiers)<br>`XMM0`, `XMM1`, `XMM2`, `XMM3` (flottants)|
|Paramètres supplémentaires|pile (_de droite à gauche_)|
|Valeur de retour|`RAX` (entier : 64 bits)<br>`XMM0` (flottant : 128 bits)|
|Registres conservés<br>_(callee-saved)_|`RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`<br>`XMM6`, `XMM7`, `XMM8`, `XMM9`, `XMM10`, `XMM11`, `XMM12`, `XMM13`, `XMM14`, `XMM15`|
|Registres volatiles<br>_(caller-saved)_|`RAX`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0`, `XMM1`, `XMM2`, `XMM3`, `XMM4`, `XMM5`|

### 32 bits

> [Microsoft StdCall](https://learn.microsoft.com/en-us/cpp/cpp/stdcall)

|/|DESCRIPTION|
|--:|:--|
|Paramères|pile (_de droite à gauche_)|
|Valeur de retour|`EAX`|
