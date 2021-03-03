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

## Initialisation de la SDL

|NOM DRAPEAU (FLAG)|UTILISATION|
|:--|:--|
|SDL_WINDOW_FULLSCREEN|Plein écran|
|SDL_WINDOW_FULLSCREEN_DESKTOP|Plein écran (selon la résolution du bureau)|
|SDL_WINDOW_BORDERLESS|Sans contours|
|SDL_WINDOW_MINIMIZED|Réduite (minimisée)|
|SDL_WINDOW_MAXIMIZED|Affichée en grand (maximisée)|
|SDL_WINDOW_SHOWN|Affichée (visible)|
|SDL_WINDOW_HIDDEN|Masquée (invisible)|
|SDL_WINDOW_RESIZABLE|Redimensionnable|
|SDL_WINDOW_OPENGL|Utilisable dans un contexte OpenGL|
|SDL_WINDOW_INPUT_GRABBED|Garde la souris à l'intérieur de la fenêtre|
|SDL_WINDOW_INPUT_FOCUS|Indique l'activité de la fenêtre (depuis entrée)|
|SDL_WINDOW_MOUSE_FOCUS|Indique si la souris survole la fenêtre (active ou non)|
|SDL_WINDOW_ALLOW_HIGHDPI|Mode "High-DPI" (depuis SDL 2.0.1)|
|SDL_WINDOW_FOREIGN|Fenêtre non créée avec la SDL|

D'autres valeurs existent, **pour X11 seulement**, et à partir des versions 2.0.4 ou 2.0.5 comme :

• SDL_WINDOW_MOUSE_CAPTURE
• SDL_WINDOW_ALWAYS_ON_TOP
• SDL_WINDOW_SKIP_TASKBAR
• SDL_WINDOW_UTILITY
• SDL_WINDOW_TOOLTIP
• SDL_WINDOW_POPUP_MENU
