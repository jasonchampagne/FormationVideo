# Conventions d'appel

## GNU/Linux

### 64 bits

|/|DESCRIPTION|
|--:|:--|
|Paramères<br>(de droite à gauche)|`RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9` (entiers)<br>`XMM0`, `XMM1`, `XMM2`, `XMM3`, `XMM4`, `XMM5`, `XMM6`, `XMM7`(nombres à virgule flottante)|
|Paramètres supplémentaires|pile|
|Valeur de retour|`RAX` (64 bits)<br>`RAX` + `RBX` (128 bits)|
|Registres conservés|`RBX`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`|
|Registres volatiles|`RAX`, `RDI`, `RSI`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0` à `XMM15`|

---

## Windows

### 64 bits

|/|DESCRIPTION|
|--:|:--|
|Paramères<br>(de gauche à droite)|`RCX`, `RDX`, `R8`, `R9` (entiers)<br>`XMM0`, `XMM1`, `XMM2`, `XMM3` (nombres à virgule flottante)|
|Paramètres supplémentaires|pile|
|Valeur de retour|`RAX`|
|Registres conservés|`RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`<br>`XMM6` à `XMM15`|
|Registres volatiles|`RAX`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0` à `XMM5`|
