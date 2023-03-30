# Paquets redistribuables Visual C++

Pour fonctionner correctement, certains logiciels et jeux vidéo sur Windows demandent l'installation de _Visual C++ Redistribuable Packages_. Selon la version demandée, et l'architecture de votre machine, voici quelques liens (officiels) vers ces derniers.

Si vous ne connaissez pas l'architecture de votre système Windows, ouvrez un terminal (_cmd.exe ou Powershell depuis le menu Démarrer_), tapez la commande suivante et faîtes `Entrée` :

```bat
systeminfo
```

Cherchez la ligne **Type du système** :

+ Si elle indique **x86-based**, votre système est en 32-bits
+ Si elle indique **x64-based**, votre système est en 64-bits

---

> 🔴 _Installez de préférence le paquet 4 en 1 et redémarrez votre système. Si des erreurs persistent, installez les paquets des anciennes versions._

|NOM_DU_PAQUET_WINDOWS|32 BITS (x86)|64 BITS (x64)|ARM64|
|:--:|:--:|:--:|:--:|
|Visual C++ 2022<br>Visual C++ 2019<br>Visual C++ 2017<br>Visual C++ 2015<br>(_4 en 1_)|[🔽](https://aka.ms/vs/17/release/vc_redist.x86.exe)|[🔽](https://aka.ms/vs/17/release/vc_redist.x64.exe)|[🔽](https://aka.ms/vs/17/release/vc_redist.arm64.exe)|
|Visual C++ 2013|[🔽](https://aka.ms/highdpimfc2013x86enu)|[🔽](https://aka.ms/highdpimfc2013x64enu)|-|
|Visual C++ 2012|[🔽](https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe)|[🔽](https://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe)|-|
|Visual C++ 2010|[🔽](https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe)|[🔽](https://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe)|-|
|Visual C++ 2008|[🔽](https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe)|[🔽](https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe)|-|

|NOM_DU_PAQUET_WINDOWS|DESCRIPTION|LIEN|
|:--|:--|:--:|
|Visual C++ Build Tools|Installe des outils de génération autonomes nécessaires à certains programmes et/ou modules à compiler (_par exemple, des [modules Python installés avec PIP](https://www.youtube.com/watch?v=MxvLhp9xJo4)_)|[lien](https://visualstudio.microsoft.com/fr/visual-cpp-build-tools/)|
