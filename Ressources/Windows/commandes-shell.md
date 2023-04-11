# Commandes Shell

> _Un **élément** peut être un répertoire, un fichier, un alias, une variable, une fonction, etc._

|POWERSHELL|BATCH|DESCRIPTION|
|:--|:--|:--|
|[**Add-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember)|`algm`|Ajouter un utilisateur à un groupe local|
|[**Clear-Host**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/clear-host)|`clear`, `cls`|Effacer le terminal|
|[**Copy-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/copy-item)|`copy`, `cp`, `cpi`|Copier un élément d'un emplacement à un autre|
|[**Get-ChildItem**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-childitem)|`gci`, `ls`, `dir`|Lister le contenu d'un répertoire|
|[**Get-Content**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content)|`cat`, `gc`, `type`|Récupérer le contenu d'un élément|
|[**Get-Help**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/get-help)|`help`, `man`|Afficher des informations sur une commande|
|[**Get-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localgroup)|`glg`|Récupérer les groupes locaux|
|[**Get-LocalGroupMember**](https://learn.microsoft.com/th-th/powershell/module/microsoft.powershell.localaccounts/get-localgroupmember)|`glgm`|Récupérer les membres d'un groupe local spécifique|
|[**Get-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localuser)|`glu`|Récupérer les utilisateurs locaux|
|[**Get-Location**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-location)|`gl`, `pwd`|Récupérer le nom du répertoire courant|
|[**New-Item**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item)|`ni`|Créer un nouvel élément|
|[**New-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localgroup)|`nlg`|Créer un groupe local|
|[**New-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser)|`nlu`|Créer un utilisateur local|
|[**Remove-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/remove-item)|`del`, `erase`, `rd`, `ri`, `rm`, `rmdir`|Supprimer un élément|
|[**Remove-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroup)|`rlg`|Supprimer un groupe local|
|[**Remove-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroupmember)|`rlgm`|Retirer un utilisateur d'un groupe local|
|[**Remove-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser)|`rlu`|Supprimer un utilisateur local|
|[**Rename-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/rename-item)|`ren`, `rni`|Renommer un élément|
|[**Rename-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localgroup)|`rnlg`|Renommer un groupe local|
|[**Rename-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localuser)|`rnlu`|Renommer un utilisateur local|
|[**Set-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localgroup)|`slg`|Modifier un groupe local|
|[**Set-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localuser)|`slu`|Modifier un utilisateur local|
|[**Set-Location**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-location)|`cd`, `chdir`, `sl`|Changer de répertoire|
|[**Write-Debug**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-debug)|-|Écrire un message de débogage dans la console|
|[**Write-Error**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-error)|-|Écrire un objet dans le flux d'erreurs|
|[**Write-Host**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-host)|-|Écrire la sortie personnalisée sur un hôte|
|[**Write-Information**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-information)|-|Spécifier la gestion des données de flux d'informations pour une commande|
|[**Write-Output**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-output)|`echo`, `write`|Écrire les objets spécifiés dans le pipeline|
|[**Write-Verbos**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-verbose)|-|Écrire du texte dans le flux de message détaillé|
|[**Write-Warning**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-warning)|-|Écrire un message d'avertissement|

## Commandes à éviter

Ces commandes ne sont pas sécurisées, plus maintenues et/ou devenues obsolètes :

+ append
+ bitsadmin
+ debug
+ ftp
