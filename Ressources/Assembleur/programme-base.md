# Programme de base

> L'assembleur utilisé est [NASM](https://nasm.us/) et les lieurs sont [ld](https://www.gnu.org/software/binutils/) (pour GNU/Linux) et [golink](http://godevtool.com/) (pour Windows)

## GNU/Linux

### 64 bits

```asm
bits 64

section .data
	message db 'Hello World !', 10

section .text
	global _start
	_start:
		mov rax, 1
		mov rdi, 1
		mov rsi, message
		mov rdx, 13+1
		syscall

		mov rax, 60
		mov rdi, 0
		syscall
```
```bash
$ nasm -f elf64 <file>.asm -o <file>.o
$ ld <file>.o -o <file>
```

### 32 bits

```asm
bits 32

section .data
	message db 'Hello World !', 10

section .text
	global _start
	_start:
		mov eax, 4
		mov ebx, 1
		mov ecx, message
		mov edx, 13+1
		int 0x80

		mov eax, 1
		mov ebx, 0
		int 0x80
```

## Windows

### 64 bits

```asm
bits 64

extern GetStdHandle
extern WriteConsoleA
extern ExitProcess

section .data
	message db 'Hello World !', 10

section .bss
	written resq 1

section .text
	global main
	main:
		mov rcx, -11
		call GetStdHandle

		sub rsp, 32
		sub rsp, 8

		mov rcx, rax
		mov rdx, message
		mov r8, 13
		mov r9, written
		mov qword [rsp+32], 0
		call WriteConsoleA

		add rsp, 32+8

		xor ecx, ecx
		call ExitProcess
```

### 32 bits

```asm
bits 32

extern _GetStdHandle@4
extern _WriteConsoleA@20
extern _ExitProcess@4

section .data
	message db 'Hello World !', 10

section .bss
	written resd 1

section .text
	global main
	main:
		push -11
		call _GetStdHandle@4

		push 0
		push written
		push 13
		push message
		push eax
		call _WriteConsoleA@20

		push 0
		call _ExitProcess@4
```
