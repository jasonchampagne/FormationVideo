# Commandes Shell

> _Un **élément** peut être un répertoire, un fichier, un alias, une variable, une fonction, etc._

|POWERSHELL|BATCH|DESCRIPTION|
|:--:|:--:|:--|
|`Clear-Host`|`clear`, `cls`|Effacer le terminal|
|`Copy-Item`|`copy`, `cp`, `cpi`|Copier un ou plusieurs éléments d'un emplacement à un autre|
|`Get-ChildItem`|`gci`, `ls`, `dir`|Lister le contenu d'un répertoire|
|`Get-Content`|`cat`, `gc`, `type`|Récupérer le contenu d'un élément|
|`Remove-Item`|`del`, `erase`, `rd`, `ri`, `rm`, `rmdir`|Supprimer un élément (fichier, répertoire, variable, fonction, ...)|
|`Set-Location`|`cd`, `chdir`, `sl`|Changer de répertoire|
|`Write-Output`|`echo`, `write`|Afficher des messages ou activer/désactiver la fonction d'affichage des commandes|

## Commandes à éviter

Ces commandes ne sont pas sécurisées, plus maintenues et/ou devenues obsolètes :

+ append
+ bitsadmin
+ debug
+ ftp
