# Conventions d'appel

> **SOMMAIRE**
> + [SystemV AMD64](#systemv-amd64)
> + [SystemV i386](#systemv-i386)
> + [Windows x64](#windows-x64)
> + [Windows StdCall](#windows-stdcall)

> [!NOTE]
> |REGISTRE|À QUI APPARTIENT-IL ?|QUI DOIT LE CONSERVER ?|
> |--:|:--:|:--:|
> |Conservé|appelant (_caller_)|appelé (_callee_)|
> |Volatile|appelé (_callee_)|appelant (_caller_)|

---

## [SystemV AMD64](https://cs61.seas.harvard.edu/site/pdf/x86-64-abi-20210928.pdf)

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `rdi`, `rsi`, `rdx`, `rcx`, `r8`, `r9`
    + Flottants de 128 bits : `xmm0`, `xmm1`, `xmm2`, `xmm3`, `xmm4`, `xmm5`, `xmm6`, `xmm7`
    + Flottants de 256 bits : `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`
    + Flottants de 512 bits : `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`
+ <ins>Paramètres supplémentaires</ins>
    + pile (_de droite à gauche_)
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `rax`
    + Entier de 128 bits : `rdx:rax`
    + Flottant de 128 bits : `xmm0`
    + Flottant de 256 bits : `xmm1:xmm0`
+ <ins>Registres sauvegardés par l'appelé</ins>
    + `rbx`, `rbp`, `rsp`, `r12`, `r13`, `r14`, `r15`
+ <ins>Registres sauvegardés par l'appelant</ins>
    + `rax`, `rcx`, `rdx`, `rsi`, `rdi`, `r8`, `r9`, `r10`, `r11`
    + `xmm0`, `xmm1`, `xmm2`, `xmm3`, `xmm4`, `xmm5`, `xmm6`, `xmm7`, `xmm8`, `xmm9`, `xmm10`, `xmm11`, `xmm12`, `xmm13`, `xmm14`, `xmm15`
    + `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`, `ymm8`, `ymm9`, `ymm10`, `ymm11`, `ymm12`, `ymm13`, `ymm14`, `ymm15`
    + `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`, `zmm8`, `zmm9`, `zmm10`, `zmm11`, `zmm12`, `zmm13`, `zmm14`, `zmm15`

---

## [Windows x64](https://learn.microsoft.com/en-us/cpp/build/x64-software-conventions)

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
    + `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`, `ymm8`, `ymm9`, `ymm10`, `ymm11`, `ymm12`, `ymm13`, `ymm14`, `ymm15`<br>(_uniquement les 128 bits de poids faible_)
    + `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`, `zmm8`, `zmm9`, `zmm10`, `zmm11`, `zmm12`, `zmm13`, `zmm14`, `zmm15`<br>(_uniquement les 256 bits de poids faible_)
+ <ins>Registres sauvegardés par l'appelant</ins>
    + `rax`, `rcx`, `rdx`, `r8`, `r9`, `r10`, `r11`
    + `xmm0`, `xmm1`, `xmm2`, `xmm3`, `xmm4`, `xmm5`
    + `ymm0`, `ymm1`, `ymm2`, `ymm3`, `ymm4`, `ymm5`, `ymm6`, `ymm7`, `ymm8`, `ymm9`, `ymm10`, `ymm11`, `ymm12`, `ymm13`, `ymm14`, `ymm15`<br>(_uniquement les 128 bits de poids fort_)
    + `zmm0`, `zmm1`, `zmm2`, `zmm3`, `zmm4`, `zmm5`, `zmm6`, `zmm7`, `zmm8`, `zmm9`, `zmm10`, `zmm11`, `zmm12`, `zmm13`, `zmm14`, `zmm15`<br>(_uniquement les 256 bits de poids fort_)
    + `xmm16`, `xmm17`, `xmm18`, `xmm19`, `xmm20`, `xmm21`, `xmm22`, `xmm23`, `xmm24`, `xmm25`, `xmm26`, `xmm27`, `xmm28`, `xmm29`, `xmm30`, `xmm31`
    + `ymm16`, `ymm17`, `ymm18`, `ymm19`, `ymm20`, `ymm21`, `ymm22`, `ymm23`, `ymm24`, `ymm25`, `ymm26`, `ymm27`, `ymm28`, `ymm29`, `ymm30`, `ymm31`
    + `zmm16`, `zmm17`, `zmm18`, `zmm19`, `zmm20`, `zmm21`, `zmm22`, `zmm23`, `zmm24`, `zmm25`, `zmm26`, `zmm27`, `zmm28`, `zmm29`, `zmm30`, `zmm31`

---

## [SystemV i386](https://uclibc.org/docs/psABI-i386.pdf)

+ <ins>Paramètres</ins>
    + Entiers de 64 bits : `ebx`, `ecx`, `edx`, `esi`, `edi`, `ebp`
+ <ins>Paramètres supplémentaires</ins>
+ <ins>Valeur de retour</ins>
    + Entier de 64 bits : `eax`
    + Entier de 128 bits : `eax` + `edx`
+ <ins>Registres sauvegardés par l'appelé</ins>
+ <ins>Registres sauvegardés par l'appelant</ins>

---

## [Windows StdCall](https://learn.microsoft.com/en-us/cpp/cpp/stdcall)

+ <ins>Paramètres</ins>
    + pile (_de droite à gauche_)
+ <ins>Valeur de retour</ins>
+ <ins>Registres sauvegardés par l'appelé</ins>
+ <ins>Registres sauvegardés par l'appelant</ins>
