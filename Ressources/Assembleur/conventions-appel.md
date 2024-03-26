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
    + Entiers 64 bits : `RDI`, `RSI`, `RDX`, `RCX`, `R8`, `R9`

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

<!--
> [!NOTE]
> + Les **registres conservés** (_callee-saved_) doivent être sauvegardés par la fonction appelée avant leur modification.
> + Les **registres volatiles** (_caller-saved_) doivent être sauvegardés par la fonction appelante avant leur modification.

## GNU/Linux

### 64 bits

> [SystemV AMD64](https://cs61.seas.harvard.edu/site/pdf/x86-64-abi-20210928.pdf)

|/|DESCRIPTION|
|--:|:--|
|Paramères<br>_(dans l'ordre)_|<ins>Entiers 64 bits</ins> :<br>1<sup>er</sup> : `RDI`<br>2<sup>e</sup> : `RSI`<br>3<sup>e</sup> : `RDX`<br>4<sup>e</sup> : `RCX`<br>5<sup>e</sup> : `R8`<br>6<sup>e</sup> : `R9`|
|Paramètres supplémentaires|pile (_de droite à gauche_)|
|Valeur de retour|`RAX` ou `RDX` + `RAX`<br><br>`XMM0` `XMM1`|
|Registres conservés<br>_(callee-saved)_|`RBX` `RBP` `RSP` `R12` `R13` `R14` `R15`|
|Registres volatiles<br>_(caller-saved)_|`RAX` `RCX` `RDX` `RSI` `RDI` `R8` `R9` `R10` `R11`<br><br>`XMM0` `XMM1` `XMM2` `XMM3` `XMM4` `XMM5` `XMM6` `XMM7`<br>`XMM8` `XMM9` `XMM10` `XMM11` `XMM12` `XMM13` `XMM14` `XMM15`<br><br>`YMM0` `YMM1` `YMM2` `YMM3` `YMM4` `YMM5` `YMM6` `YMM7`<br>`YMM8` `YMM9` `YMM10` `YMM11` `YMM12` `YMM13` `YMM14` `YMM15`<br><br>`ZMM0` `ZMM1` `ZMM2` `ZMM3` `ZMM4` `ZMM5` `ZMM6` `ZMM7`<br>`ZMM8` `ZMM9` `ZMM10` `ZMM11` `ZMM12` `ZMM13` `ZMM14` `ZMM15`|

### 32 bits

> [SystemV Intel386](https://www.sco.com/developers/devspecs/abi386-4.pdf)

|/|DESCRIPTION|
|--:|:--|
|Paramères<br>_(dans l'ordre)_|`EBX` `ECX` `EDX` `ESI` `EDI` `EBP`|
|Valeur de retour|`EAX` ou `EDX` + `EAX`|
|Registres conservés<br>_(callee-saved)_||
|Registres volatiles<br>_(caller-saver)_||

---

## Windows

### 64 bits

> [Microsoft x64 vectorcall](https://learn.microsoft.com/en-us/cpp/cpp/vectorcall)

|/|DESCRIPTION|
|--:|:--|
|Paramères<br>_(dans l'ordre)_|`RCX` `RDX` `R8` `R9` : entiers de 64 bits<br>`XMM0` `XMM1` `XMM2` `XMM3` `XMM4` `XMM5` : flottants de 128 bits<br>`YMM0` `YMM1` `YMM2` `YMM3` `YMM4` `YMM5` : flottants de 256 bits|
|Paramètres supplémentaires|pile (_de droite à gauche_)|
|Valeur de retour|`RAX` (entier : 64 bits)<br>`XMM0` (flottant : 128 bits)|
|Registres conservés<br>_(callee-saved)_|`RBX`, `RDI`, `RSI`, `RBP`, `RSP`, `R12`, `R13`, `R14`, `R15`<br>`XMM6`, `XMM7`, `XMM8`, `XMM9`, `XMM10`, `XMM11`, `XMM12`, `XMM13`, `XMM14`, `XMM15`|
|Registres volatiles<br>_(caller-saved)_|`RAX`, `RCX`, `RDX`, `R8`, `R9`, `R10`, `R11`<br>`XMM0`, `XMM1`, `XMM2`, `XMM3`, `XMM4`, `XMM5`|

### 32 bits

> [Microsoft StdCall](https://learn.microsoft.com/en-us/cpp/cpp/stdcall)

|/|DESCRIPTION|
|--:|:--|
|Paramères<br>_(dans l'ordre)_|pile (_de droite à gauche_)|
|Valeur de retour|`EAX`|
-->
