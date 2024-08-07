# Programme de base

> [Assembleur #2 - dis bonjour !](https://www.youtube.com/watch?v=22UPjfgyRzI)

L'assembleur utilisé est [NASM](https://nasm.us/) et les lieurs sont [ld](https://www.gnu.org/software/binutils/) (pour GNU/Linux) et [golink](http://godevtool.com/) (pour Windows)

## GNU/Linux

### 64 bits

```asm
bits 64

section .data
    message: db 'Hello World !', 10

section .text
    global _start
    _start:
        mov rax, 1       ; sys_write
        mov rdi, 1       ; unsigned int fd
        mov rsi, message ; const char* buf
        mov rdx, 13 + 1  ; size_t count
        syscall

        mov rax, 60      ; sys_exit
        mov rdi, 0       ; int error_code
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
    message: db 'Hello World !', 10

section .text
    global _start
    _start:
        mov eax, 4       ; sys_write
        mov ebx, 1       ; unsigned int fd
        mov ecx, message ; const char* buf
        mov edx, 13 + 1  ; size_t count
        int 0x80
        
        mov eax, 1       ; sys_exit
        mov ebx, 0       ; int error_code
        int 0x80
```
```bash
$ nasm -f elf32 <file>.asm -o <file>.o
$ ld <file>.o -o <file>
```

## Windows

### 64 bits

```asm
bits 64

extern GetStdHandle
extern WriteConsoleA
extern ExitProcess

section .data
    message: db 'Hello World !', 10

section .bss
    written: resq 1

section .text
    global main
    main:
        sub rsp, 40             ; Réservation du "Shadow Space"

        mov rcx, -11            ; _In_ DWORD nStdHandle
        call GetStdHandle

        mov rcx, rax            ; _In_ HANDLE hConsoleOutput
        mov rdx, message        ; _In_ const VOID* lpBuffer
        mov r8, 13              ; _In_ DWORD nNumberOfCharsToWrite
        mov r9, written         ; _Out_opt_ LPDWORD lpNumberOfCharsWritten
        mov qword [rsp + 32], 0 ; _Reserved_ LPVOID lpReserved
        call WriteConsoleA

        add rsp, 40             ; Libération du "Shadow Space"

        xor rcx, rcx            ; [in] UINT uExitCode
        call ExitProcess
```
```powershell
> nasm.exe -f win64 <file>.asm -o <file>.obj
> golink.exe <file>.obj /entry main /console kernel32.dll
```

### 32 bits

```asm
bits 32

extern _GetStdHandle@4
extern _WriteConsoleA@20
extern _ExitProcess@4

section .data
	message: db 'Hello World !', 10

section .bss
	written: resd 1

section .text
    global main
    main:
        push -11               ; _In_ DWORD nStdHandle
        call _GetStdHandle@4

        push 0                 ; _Reserved_ LPVOID lpReserved
        push written           ; _Out_opt_ LPDWORD lpNumberOfCharsWritten
        push 13                ; _In_ DWORD nNumberOfCharsToWrite
        push message           ; _In_ const VOID* lpBuffer
        push eax               ; _In_ HANDLE hConsoleOutput
        call _WriteConsoleA@20

        push 0                 ; [in] UINT uExitCode
        call _ExitProcess@4
```
```powershell
> nasm.exe -f win32 <file>.asm -o <file>.obj
> golink.exe <file>.obj /entry main /console kernel32.dll
```
