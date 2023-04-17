# Conventions d'appel

## GNU/Linux

### 64 bits (System V AMD64)

+ Les paramètres des fonctions sont passés (de droite à gauche) dans les registres `RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9`.
+ Les paramètres supplémentaires sont poussés sur la pile.
    + ces derniers peuvent être modifiés par la fonction appelée.
+ La valeur de retour est stockée dans `RAX` (si 64 bits) ou `RAX` + `RBX` (si 128 bits).
+ Les registres conservés sont `RBX`, `RSP`, `RBP`, `R12`, `R13`, `R14` et `R15`.
+ Les registres non conservés (volatiles) sont `RAX`, `RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9`, `R10` et `R11`.

### 32 bits (System V i386)

+ Les paramètres des fonctions sont passés (de gauche à droite) dans les registres `EBX`, `ECX`, `EDX`, `ESI`, `EDI`, `EBP`.
+ La valeur de retour est stockée dans `EAX`.

---

## Windows

### 64 bits (Microsoft x64)

+ Les paramètres des fonctions sont passés (de gauche à droite) dans les registres `RCX`, `RDX`, `R8`, `R9`.
+ Les paramètres supplémentaires sont poussés sur la pile.
+ La valeur de retour est stockée dans `RAX`.
+ Les registres conservés sont :
    + `RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`
    + `XMM6`, `XMM7`, `XMM8`, `XMM9`, `XMM10`, `XMM11`, `XMM12`, `XMM13`, `XMM14`, `XMM15`
+ Les registres non conservés (volatiles) sont :
    + `RAX`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`.
    + `XMM0`, `XMM1`, `XMM2`, `XMM3`, `XMM4`, `XMM5`

### 32 bits (StdCall)

+ Les paramètres des fonctions sont poussés (de gauche à droite) sur la pile.
+ La valeur de retour est stockée dans `EAX`.
