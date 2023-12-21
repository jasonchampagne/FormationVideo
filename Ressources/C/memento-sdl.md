# Mémento SDL

## Fonctions abordées dans le cours

```c
int SDL_Init(Uint32 flags);
int SDL_InitSubSystem(Uint32 flags);
int SDL_AudioInit(const char* driver_name);
int SDL_VideoInit(const char* driver_name);

SDL_Window* SDL_CreateWindow(const char* title, int x, int y, int w, int h, Uint32 flags);
SDL_Renderer* SDL_CreateRenderer(SDL_Window* window, int index, Uint32 flags);
int SDL_CreateWindowAndRenderer(int width, int height, Uint32 window_flags, SDL_Window** window, SDL_Renderer** renderer);

int SDL_SetRenderDrawColor(SDL_Renderer* renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
int SDL_RenderDrawPoint(SDL_Renderer* renderer, int x, int y);
int SDL_RenderDrawLine(SDL_Renderer* renderer, int x1, int y1, int x2, int y2);
int SDL_RenderDrawRect(SDL_Renderer* renderer, const SDL_Rect* rect);
void SDL_RenderPresent(SDL_Renderer* renderer);

SDL_Surface* SDL_LoadBMP(const char* file);
SDL_Texture* SDL_CreateTextureFromSurface(SDL_Renderer* renderer, SDL_Surface* surface);
int SDL_QueryTexture(SDL_Texture* texture, Uint32* format, int* access, int* w, int* h);
int SDL_RenderCopy(SDL_Renderer* renderer, SDL_Texture* texture, const SDL_Rect* srcrect, const SDL_Rect* dstrect);

int SDL_PollEvent(SDL_Event* event);

void SDL_DestroyWindow(SDL_Window* window);
void SDL_DestroyRenderer(SDL_Renderer* renderer);
void SDL_DestroyTexture(SDL_Texture* texture);
void SDL_FreeSurface(SDL_Surface* surface);

void SDL_Quit(void);
void SDL_QuitSubSystem(Uint32 flags);
void SDL_AudioQuit(void);
void SDL_VideoQuit(void);

void SDL_Log(const char* format);
const char* SDL_GetError(void);

void SDL_Delay(Uint32 ms);
Uint32 SDL_GetTicks(void);
```

## Types abordés dans le cours

+ [SDL_bool](https://wiki.libsdl.org/SDL2/SDL_bool)
+ [SDL_Event](https://wiki.libsdl.org/SDL2/SDL_Event) et ses sous-évènements (keyboard, mouse, window, ...)
+ [SDL_Rect](https://wiki.libsdl.org/SDL2/SDL_Rect)
+ [SDL_Renderer](https://wiki.libsdl.org/SDL2/SDL_Renderer)
+ [SDL_RenderFlags](https://wiki.libsdl.org/SDL2/SDL_RendererFlags)
+ [SDL_Surface](https://wiki.libsdl.org/SDL2/SDL_Surface)
+ [SDL_Texture](https://wiki.libsdl.org/SDL2/SDL_Texture)
+ [SDL_version](https://wiki.libsdl.org/SDL2/SDL_version)
+ [SDL_Window](https://wiki.libsdl.org/SDL2/SDL_Window)
+ [SDL_WindowFlags](https://wiki.libsdl.org/SDL2/SDL_WindowFlags)

### Arguments (`SDL_WindowFlags`) pour la création de fenêtre

|NOM DRAPEAU (FLAG)|UTILISATION|
|:--|:--|
|SDL_WINDOW_ALLOW_HIGHDPI|Mode "High-DPI"|
|SDL_WINDOW_ALWAYS_ON_TOP|Fenêtre toujours au premier plan|
|SDL_WINDOW_BORDERLESS|Sans bordures|
|SDL_WINDOW_FOREIGN|Fenêtre non créée avec la SDL|
|SDL_WINDOW_FULLSCREEN|Plein écran|
|SDL_WINDOW_FULLSCREEN_DESKTOP|Plein écran (selon la résolution du bureau)|
|SDL_WINDOW_HIDDEN|Masquée (invisible)|
|SDL_WINDOW_INPUT_FOCUS|Indique l'activité de la fenêtre (depuis entrée)|
|SDL_WINDOW_INPUT_GRABBED|Garde la souris à l'intérieur de la fenêtre|
|SDL_WINDOW_MAXIMIZED|Affichée en grand (maximisée)|
|SDL_WINDOW_MINIMIZED|Réduite (minimisée)|
|SDL_WINDOW_MOUSE_CAPTURE|Capture du curseur de la souris|
|SDL_WINDOW_MOUSE_FOCUS|Indique si la souris survole la fenêtre (active ou non)|
|SDL_WINDOW_OPENGL|Utilisable dans un contexte OpenGL|
|SDL_WINDOW_POPUP_MENU|Devrait être traitée comme un menu contextuel|
|SDL_WINDOW_RESIZABLE|Redimensionnable|
|SDL_WINDOW_SHOWN|Affichée (visible)|
|SDL_WINDOW_SKIP_TASKBAR|Ne devrait pas être ajoutée à la barre des tâches|
|SDL_WINDOW_TOOLTIP|Devrait être traitée comme une info-bulle|
|SDL_WINDOW_UTILITY|Devrait être traitée comme une fenêtre utilitaiire|
|SDL_WINDOW_VULKAN|Utilisable dans une instance Vulkan|

### Arguments (`SDL_RenderFlags`) pour la création du rendu

|NOM DRAPEAU (FLAG)|UTILISATION|
|:--|:--|
|SDL_RENDERER_ACCELERATED|Utilise une solution logicielle|
|SDL_RENDERER_SOFTWARE|Utilise l'accélaration matérielle|
|SDL_RENDERER_PRESENTVSYNC|Active la synchronisation verticale|
|SDL_RENDERER_TARGETTEXTURE|Prend en charge du rendu vers la texture|
