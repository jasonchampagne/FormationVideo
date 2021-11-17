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

> 🔴 **Si vous ne savez pas quoi installer, commencez par le paquet trois-en-un (2019 + 2017 + 2015). Si vous avez toujours des erreurs de fonctionnement sur d'autres logiciels, passez à l'installation des versions plus anciennes (2013 et moins).**

|NOM_DU_PAQUET|32 BITS (x86)|64 BITS (x64)|ARM64|IA64|
|:--:|:--:|:--:|:--:|:--:|
|Visual C++ 2019<br>Visual C++ 2017<br>Visual C++ 2015<br>(tout-en-un)|[lien](https://aka.ms/vs/16/release/vc_redist.x86.exe)|[lien](https://aka.ms/vs/16/release/vc_redist.x64.exe)|[lien](https://aka.ms/vs/16/release/VC_redist.arm64.exe)|-|
|Visual C++ 2017|[lien](https://download.visualstudio.microsoft.com/download/pr/100349138/88b50ce70017bf10f2d56d60fcba6ab1/VC_redist.x86.exe)|[lien](https://download.microsoft.com/download/3/b/f/3bf6e759-c555-4595-8973-86b7b4312927/vc_redist.x64.exe)|-|-|
|Visual C++ 2015|[lien](https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x86.exe)|[lien](https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe)|-|-|
|Visual C++ 2013|[lien](http://download.microsoft.com/download/A/4/D/A4D9F1D3-6449-49EB-9A6E-902F61D8D14B/vcredist_x86.exe)|[lien](http://download.microsoft.com/download/A/4/D/A4D9F1D3-6449-49EB-9A6E-902F61D8D14B/vcredist_x64.exe)|[lien](http://download.microsoft.com/download/A/4/D/A4D9F1D3-6449-49EB-9A6E-902F61D8D14B/vcredist_arm.exe)|-|
|Visual C++ 2012|[lien](http://download.microsoft.com/download/D/3/B/D3B72629-7D95-49ED-A4EC-7FF105754124/VSU4/vcredist_x86.exe)|[lien](http://download.microsoft.com/download/D/3/B/D3B72629-7D95-49ED-A4EC-7FF105754124/VSU4/vcredist_x64.exe)|[lien](http://download.microsoft.com/download/D/3/B/D3B72629-7D95-49ED-A4EC-7FF105754124/VSU4/vcredist_arm.exe)|-|
|Visual C++ 2010|[lien](http://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x86.exe)|[lien](http://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_x64.exe)|-|[lien](http://download.microsoft.com/download/1/6/5/165255E7-1014-4D0A-B094-B6A430A6BFFC/vcredist_ia64.exe)|
|Visual C++ 2008|[lien](http://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe)|[lien](http://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe)|-|[lien](http://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_IA64.exe)|
|Visual C++ 2005|[lien](http://download.microsoft.com/download/5/D/A/5DA273D6-C1CB-4F1C-90C0-73B5263E0AC7/vcredist_x86.EXE)|[lien](http://download.microsoft.com/download/5/D/A/5DA273D6-C1CB-4F1C-90C0-73B5263E0AC7/vcredist_x64.EXE)|-|[lien](http://download.microsoft.com/download/5/D/A/5DA273D6-C1CB-4F1C-90C0-73B5263E0AC7/vcredist_IA64.EXE)|

|NOM DUNOM_DU_PAQUETPAQUET|DESCRIPTION|LIEN|
|:--|:--|:--:|
|Visual C++ Build Tools|Installe des outils de génération autonomes nécessaires à certains programmes et/ou modules à compiler (_par exemple, des [modules Python installés avec PIP](https://www.youtube.com/watch?v=MxvLhp9xJo4)_)|[lien](https://visualstudio.microsoft.com/fr/visual-cpp-build-tools/)|
