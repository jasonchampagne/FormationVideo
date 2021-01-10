# Référence API

## GetStdHandle

Récupère un gestionnaire vers le périphérique standard spécifié (entrée standard, sortie standard ou erreur standard).

```c
HANDLE WINAPI GetStdHandle(_In_ DWORD nStdHandle);
```

### Paramètre :

|VALEUR|TAILLE|CODE|
|:--:|:--:|:--:|
|STD_INPUT_HANDLE|DWORD|-10|
|STD_OUTPUT_HANDLE|DWORD|-11|
|STD_ERROR_HANDLE|DWORD|-12|
