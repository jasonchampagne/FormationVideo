# Instructions x86/x64

|NOM|DESCRIPTION|USAGE(S)|
|--:|:--|:--|
|`ADD`|Additionne deux entiers|```asm
add rbx, 2```|
|`CALL`|Appelle une procédure/fonction|`call WriteConsoleA`|
|`CMP`|Compare deux entiers||
|`INT`|Appelle une interruption|`int 0x80`|
|`JMP`|Saut (inconditionnel) vers une étiquette||
|`MOV`|Déplace une donnée dans un emplacement (adresse mémoire, registre, ...)|`mov rax, 1`|
|`SUB`|Soustrait deux entiers|`sub rsp, 40`|
|`SYSCALL`|Appelle une fonction système Linux|-|
|`XOR`|Effectue un OU logique exclusif|`xor rax, rax`|
