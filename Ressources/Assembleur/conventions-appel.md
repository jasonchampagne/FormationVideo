# Conventions d'appel

> **SOMMAIRE**
> + [SystemV AMD64 ABI (x64)](#systemv-amd64-abi-x64)
> + [SystemV i386 ABI (x86)](#systemv-i386-abi-x86)
> + [Vectorcall (x64)](#microsoft-vectorcall-x64)
> + [StdCall (x86)](#microsoft-stdcall-x86)
> + [Autres conventions](#autres-conventions)

> [!NOTE]
> |REGISTRE|À QUI APPARTIENT-IL ?|QUI DOIT LE CONSERVER ?|
> |--:|:--:|:--:|
> |Conservé|appelant (_caller_)|appelé (_callee_)|
> |Volatile|appelé (_callee_)|appelant (_caller_)|

---

## [SystemV AMD64 ABI (x64)](https://cs61.seas.harvard.edu/site/pdf/x86-64-abi-20210928.pdf)

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9`
    + Flottants de 128 bits : `XMM0` à `XMM5`
    + Flottants de 256 bits : `YMM0` à `YMM5`
    + Flottants de 512 bits : `ZMM0` à `ZMM5`
+ <ins>Paramètres supplémentaires</ins>
    + pile (_de droite à gauche_)
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `RAX`
    + Entier de 128 bits : `RAX` + `RDX`
    + Flottant de 128 bits : `XMM0`
    + Flottant de 256 bits : `XMM0` + `XMM1`
+ <ins>Registres sauvegardés par l'appelé</ins>
    + `RBX`, `RBP`, `RSP`, `R12` à `R15`
+ <ins>Registres sauvegardés par l'appelant</ins>
    + `RAX`, `RCX`, `RDX`, `RSI`, `RDI`, `R8` à `R11`
    + `XMM0` à `XMM15`
    + `YMM0` à `YMM15`
    + `ZMM0` à `ZMM15`

## [Microsoft Vectorcall (x64)](https://learn.microsoft.com/en-us/cpp/cpp/vectorcall)

---

## [SystemV i386 ABI (x86)](https://uclibc.org/docs/psABI-i386.pdf)

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `EBX`, `ECX`, `EDX`, `ESI`, `EDI`, `EBP`
+ <ins>Paramètres supplémentaires</ins>
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `EAX`
    + Entier de 128 bits : `EAX` + `EDX`
+ <ins>Registres sauvegardés par l'appelé</ins>
+ <ins>Registres sauvegardés par l'appelant</ins>

## [Microsoft StdCall (x86)](https://learn.microsoft.com/en-us/cpp/cpp/stdcall)

---

## Autres conventions

> 📛 Les conventions __fortran, __pascal, ou __syscall sont obsolètes

+ [cdecl](https://learn.microsoft.com/en-us/cpp/cpp/cdecl)
+ [clrcall](https://learn.microsoft.com/en-us/cpp/cpp/clrcall)
+ [fastcall](https://learn.microsoft.com/en-us/cpp/cpp/fastcall)
+ [thiscall](https://learn.microsoft.com/en-us/cpp/cpp/thiscall)
