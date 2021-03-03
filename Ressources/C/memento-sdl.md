# Mémento SDL

## Prototypes fonctions

```c
int SDL_Init(Uint32 flags);
int SDL_InitSubSystem(Uint32 flags);
int SDL_AudioInit(const char* driver_name);
int SDL_VideoInit(const char* driver_name);

SDL_Window* SDL_CreateWindow(const char* title, int x, int y, int w, int h, Uint32 flags);

void SDL_Quit(void);
void SDL_QuitSubSystem(Uint32 flags);
void SDL_AudioQuit(void);
void SDL_VideoQuit(void);

void SDL_Log(const char* format);
const char* SDL_GetError(void);

void SDL_Delay(Uint32 ms);
```
