# Référence API

> [**WINDOWS API REFERENCE**](https://docs.microsoft.com/en-us/windows/console/console-reference)

## GetStdHandle

Récupère un gestionnaire vers le périphérique standard spécifié (entrée standard, sortie standard ou erreur standard).

```c
HANDLE GetStdHandle(_In_ DWORD nStdHandle);
```

Valeurs pour _nStdHandle_ :

|VALEUR|TAILLE|CODE|
|:--:|:--:|:--:|
|**STD_INPUT_HANDLE**|DWORD|-10|
|**STD_OUTPUT_HANDLE**|DWORD|-11|
|**STD_ERROR_HANDLE**|DWORD|-12|

## WriteConsole

Écrit une chaîne de caractères dans une mémoire tampon d'écran de la console en commençant à l'emplacement actuel du curseur.

```c
BOOL WriteConsole(HANDLE hConsoleOutput, const VOID *lpBuffer, DWORD nNumberOfCharsToWrite, LPDWORD lpNumberOfCharsWritten, LPVOID lpReserved);
```
