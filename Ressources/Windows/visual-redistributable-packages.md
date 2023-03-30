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

|NOM_DU_PAQUET_WINDOWS|32 BITS (x86)|64 BITS (x64)|ARM64|
|:--:|:--:|:--:|:--:|
|Visual C++ 2022<br>Visual C++ 2019<br>Visual C++ 2017<br>Visual C++ 2015<br>(_4 en 1_)|[lien](https://aka.ms/vs/17/release/vc_redist.x86.exe)|[lien](https://aka.ms/vs/17/release/vc_redist.x64.exe)|[lien](https://aka.ms/vs/17/release/vc_redist.arm64.exe)|

|NOM_DU_PAQUET_WINDOWS|DESCRIPTION|LIEN|
|:--|:--|:--:|
|Visual C++ Build Tools|Installe des outils de génération autonomes nécessaires à certains programmes et/ou modules à compiler (_par exemple, des [modules Python installés avec PIP](https://www.youtube.com/watch?v=MxvLhp9xJo4)_)|[lien](https://visualstudio.microsoft.com/fr/visual-cpp-build-tools/)|
