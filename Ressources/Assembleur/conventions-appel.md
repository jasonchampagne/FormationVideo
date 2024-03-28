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
    + Entiers de 64 bits : `rdi`, `rsi`, `rdx`, `rcx`, `r8`, `r9`
    + Flottants de 128 bits : `xmm0`, `xmm1`, `xmm2`, `xmm3`, `xmm4`, `xmm5`, `xmm6`, `xmm7`
    + Flottants de 256 bits : `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`
    + Flottants de 512 bits : `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`
+ <ins>Paramètres supplémentaires</ins>
    + pile (_de droite à gauche_)
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `rax`
    + Entier de 128 bits : `rax`, `rdx`
    + Flottant de 128 bits : `xmm0`
    + Flottant de 256 bits : `xmm0`, `xmm1`
+ <ins>Registres sauvegardés par l'appelé</ins>
    + `rbx`, `rbp`, `rsp`, `r12`, `r13`, `r14`, `r15`
+ <ins>Registres sauvegardés par l'appelant</ins>
    + `rax`, `rcx`, `rdx`, `rsi`, `rdi`, `r8`, `r9`, `r10`, `r11`
    + `xmm0`, `xmm1`, `xmm2`, `xmm3`, `xmm4`, `xmm5`, `xmm6`, `xmm7`, `xmm8`, `xmm9`, `xmm10`, `xmm11`, `xmm12`, `xmm13`, `xmm14`, `xmm15`
    + `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`, `ymm8`, `ymm9`, `ymm10`, `ymm11`, `ymm12`, `ymm13`, `ymm14`, `ymm15`
    + `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`, `zmm8`, `zmm9`, `zmm10`, `zmm11`, `zmm12`, `zmm13`, `zmm14`, `zmm15`

---

## [Microsoft Vectorcall (x64)](https://learn.microsoft.com/en-us/cpp/cpp/vectorcall)

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `rcx`, `rdx`, `r8`, `r9`
    + Flottants de 128 bits : `xmm0`, `xmm1`, `xmm2`, `xmm3`
+ <ins>Paramètres supplémentaires</ins>
    + pile (_de droite à gauche_)
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `rax`
    + Flottant de 128 bits : `xmm0`
+ <ins>Registres sauvegardés par l'appelé</ins>
    + `rbx`, `rbp`, `rsp`, `rsi`, `rdi`, `r12`, `r13`, `r14`, `r15`
    + `xmm6`, `xmm7`, `xmm8`, `xmm9`, `xmm10`, `xmm11`, `xmm12`, `xmm13`, `xmm14`, `xmm15`
+ <ins>Registres sauvegardés par l'appelant</ins>
    + `rax`, `rcx`, `rdx`, `r8`, `r9`, `r10`, `r11`
    + `xmm0`, `xmm1`, `xmm2`, `xmm3`, `xmm4`, `xmm5`
    + `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`, `ymm8`, `ymm9`, `ymm10`, `ymm11`, `ymm12`, `ymm13`, `ymm14`, `ymm15`<br>(_seulement la partie supérieure : 128 bits de poids fort_)
    + `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`, `zmm8`, `zmm9`, `zmm10`, `zmm11`, `zmm12`, `zmm13`, `zmm14`, `zmm15`<br>(_seulement la partie supérieure : 256 bits de poids fort_)

---

## [SystemV i386 ABI (x86)](https://uclibc.org/docs/psABI-i386.pdf)

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `ebx`, `ecx`, `edx`, `esi`, `edi`, `ebp`
+ <ins>Paramètres supplémentaires</ins>
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `eax`
    + Entier de 128 bits : `eax` + `edx`
+ <ins>Registres sauvegardés par l'appelé</ins>
+ <ins>Registres sauvegardés par l'appelant</ins>

---

## [Microsoft StdCall (x86)](https://learn.microsoft.com/en-us/cpp/cpp/stdcall)

+ <ins>Paramètres</ins>
+ <ins>Paramètres supplémentaires</ins>
+ <ins>Valeur de retour</ins>
+ <ins>Registres sauvegardés par l'appelé</ins>
+ <ins>Registres sauvegardés par l'appelant</ins>

---

## Autres conventions

> 📛 Les conventions __fortran, __pascal, ou __syscall sont obsolètes

+ [cdecl](https://learn.microsoft.com/en-us/cpp/cpp/cdecl)
+ [clrcall](https://learn.microsoft.com/en-us/cpp/cpp/clrcall)
+ [fastcall](https://learn.microsoft.com/en-us/cpp/cpp/fastcall)
+ [thiscall](https://learn.microsoft.com/en-us/cpp/cpp/thiscall)
