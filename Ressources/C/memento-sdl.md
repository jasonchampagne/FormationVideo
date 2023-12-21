# Mémento SDL

## Fonctions abordées dans le cours

```c
int SDL_Init(Uint32 flags);
int SDL_InitSubSystem(Uint32 flags);
int SDL_AudioInit(const char* driver_name);
int SDL_VideoInit(const char* driver_name);

SDL_Window* SDL_CreateWindow(const char* title, int x, int y, int w, int h, Uint32 flags);

void SDL_DestroyWindow(SDL_Window* window);

void SDL_Quit(void);
void SDL_QuitSubSystem(Uint32 flags);
void SDL_AudioQuit(void);
void SDL_VideoQuit(void);

void SDL_Log(const char* format);
const char* SDL_GetError(void);

void SDL_Delay(Uint32 ms);
```

## Types abordés dans le cours

+ [SDL_Rect](https://wiki.libsdl.org/SDL2/SDL_Rect)
+ [SDL_Renderer](https://wiki.libsdl.org/SDL2/SDL_Renderer)
+ [SDL_WindowFlags](https://wiki.libsdl.org/SDL2/SDL_WindowFlags)
+ [SDL_version](https://wiki.libsdl.org/SDL2/SDL_version)
+ [SDL_Window](https://wiki.libsdl.org/SDL2/SDL_Window)

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
