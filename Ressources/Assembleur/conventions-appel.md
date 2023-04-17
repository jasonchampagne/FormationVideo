# Conventions d'appel

## Windows

### 64 bits (Microsoft x64)

|/|DESCRIPTION|
|--:|:--|
|Paramères|De gauche à droite :<br>`RCX`, `RDX`, `R8`, `R9` (entiers)<br>`XMM0`, `XMM1`, `XMM2`, `XMM3` (virgule flottante)|
|Paramètres supplémentaires|Sur la pile|
|Valeur de retour|`RAX`|
|Registres conservés|`RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`<br>`XMM6`, `XMM7`, `XMM8`, `XMM9`, `XMM10`, `XMM11`, `XMM12`, `XMM13`, `XMM14`, `XMM15`|
|Registres volatiles|`RAX`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0`, `XMM1`, `XMM2`, `XMM3`, `XMM4`, `XMM5`|
