# Conventions d'appel

> **SOMMAIRE**
> + [SystemV AMD64 ABI (x64)](#systemv-amd64-abi-x64)
> + [SystemV i386 ABI (x86)](#systemv-i386-abi-x86)
> + [Vectorcall (x64)](#vectorcall-x64)
> + [StdCall (x86)](#stdcall-x86)
> + [Autres conventions](#autres-conventions)

---

## SystemV AMD64 ABI (x64)

> [!NOTE]
> Cette convention d'appel est utilisée sur les systèmes GNU/Linux, MacOS, BSD ou encore Solaris, en 64 bits.

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9`
    + Flottants de 128 bits : `XMM0` à `XMM5`
    + Flottants de 256 bits : `YMM0` à `YMM5`
    + Flottants de 512 bits : `ZMM0` à `ZMM5`
+ <ins>Paramètres supplémentaires</ins>
    + pile (_de droite à gauche_)
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `RAX`
    + Entier de 128 bits : `RDX` + `RAX`
    + Flottant de 128 bits : `XMM0`
    + Flottant de 256 bits : `XMM0` + `XMM1`
+ <ins>Registres sauvegardés par l'appelé (_callee_)</ins>
    + `RBX`, `RBP`, `RSP`, `R12` à `R15`
+ <ins>Registres sauvegardés par l'appelant (_caller_)</ins>
    + `RAX`, `RCX`, `RDX`, `RSI`, `RDI`, `R8` à `R11`

## Vectorcall (x64)

> [!NOTE]
> Cette convention d'appel est utilisée sur les systèmes Windows en 64 bits.

---

## SystemV i386 ABI (x86)

> [!NOTE]
> Cette convention d'appel est utilisée sur les systèmes GNU/Linux, MacOS, BSD ou encore Solaris, en 32 bits.

## StdCall (x86)

> [!NOTE]
> Cette convention d'appel est utilisée sur les systèmes Windows en 32 bits.

---

## Autres conventions

+ [cdecl](https://learn.microsoft.com/en-us/cpp/cpp/cdecl)
+ [fastcall](https://learn.microsoft.com/en-us/cpp/cpp/fastcall)
+ [thiscall](https://learn.microsoft.com/en-us/cpp/cpp/thiscall)
