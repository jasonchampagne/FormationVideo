# Instructions x86/x64

## ADD

## CALL

```asm
call WriteConsoleA ; Appelle la fonction WriteConsoleA
```

## CMP

## INT

```asm
int 0x80 ; Appelle l'interruption ayant pour code 80 (hexadécimal)
```

## JMP

## MOV

```asm
mov rax, 1               ; Copie la valeur 1 (décimale) dans le registre RAX
mov rbx, rax             ; Copie le contenu du registre RAX dans le registre RBX
mov rdx, MESSAGE_LENGTH  ; Copie la valeur de la constante "MESSAGE_LENGTH" dans le registre RDX
mov qword ptr [rdi], 155 ; Copie la valeur 123 à l'adresse mémoire contenue dans le registre RDI
mov rdx, [rdi]           ; Copie la valeur à l'adresse mémoire contenue dans le registre RDI dans le registre RDX
```

## SUB

## XOR

```asm
xor rax, rax ; Effectue un OU exclusif sur le registre RAX (affecte la valeur 0)
```
