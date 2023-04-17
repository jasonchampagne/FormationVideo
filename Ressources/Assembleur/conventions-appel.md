# Conventions d'appel

## GNU/Linux

### 64 bits (System V AMD64)

+ Les paramètres des fonctions sont passés dans les registres RDI, RSI, RDX, RCX, R8, R9 (en ordre inverse)
+ Les éventuels paramètres supplémentaires sont passés sur la pile
    + ces derniers peuvent être modifiés par la fonction appelée
+ La valeur de retour est stockée dans RAX (si 64 bits) ou RAX + RBX (si 128 bits) 
+ Les registres conservés sont RBX, RSP, RBP, R12, R13, R14 et R15
+ Les registres non conservés (volatiles) sont RAX, RDI, RSI, RDX, RCX, R8, R9, R10 et R11

### 32 bits (System V i386)

+ Les paramètres des fonctions sont passés dans les registres EBX, ECX, EDX, ESI, EDI, EBP
+ La valeur de retour est stockée dans EAX

---

## Windows

### 64 bits (VectorCall)

### 32 bits (StdCall)
