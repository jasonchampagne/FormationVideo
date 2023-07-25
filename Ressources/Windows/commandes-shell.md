# Commandes Shell

> _Un **élément** peut être un répertoire, un fichier, un alias, une variable, une fonction, etc._

|POWERSHELL|BATCH|DESCRIPTION|
|:--|:--|:--|
|[**Add-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember)|`algm`|Ajouter un utilisateur à un groupe local|
|[**Clear-Host**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/clear-host)|`clear`, `cls`|Effacer le terminal|
|[**Copy-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/copy-item)|`copy`, `cp`, `cpi`|Copier un élément d'un emplacement à un autre|
|[**Get-ChildItem**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-childitem)|`gci`, `ls`, `dir`|Lister ou rechercher des répertoires et fichiers|
|[**Get-Content**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content)|`cat`, `gc`, `type`|Récupérer le contenu d'un élément|
|[**Get-Disk**](https://learn.microsoft.com/en-us/powershell/module/storage/get-disk?view=windowsserver2022-ps)|-|Lister les disques (physiques et virtuels)|
|[**Get-Help**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/get-help)|`help`, `man`|Afficher des informations sur une commande|
|[**Get-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localgroup)|`glg`|Récupérer les groupes locaux|
|[**Get-LocalGroupMember**](https://learn.microsoft.com/th-th/powershell/module/microsoft.powershell.localaccounts/get-localgroupmember)|`glgm`|Récupérer les membres d'un groupe local spécifique|
|[**Get-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localuser)|`glu`|Récupérer les utilisateurs locaux|
|[**Get-Location**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-location)|`gl`, `pwd`|Récupérer le nom du répertoire courant|
|[**Get-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/get-partition?view=windowsserver2022-ps)|-|Lister les partitions|
|[**Get-PhysicalDisk**](https://learn.microsoft.com/en-us/powershell/module/storage/get-physicaldisk?view=windowsserver2022-ps)|-|Lister les disques physiques|
|[**Get-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process)|`gps`, `ps`|Lister les processus en cours d'exécution|
|[**Get-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-service)|`gsv`|Lister tous les services|
|[**Get-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/get-volume?view=windowsserver2022-ps)|-|Lister les volumes|
|[**New-Item**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item)|`ni`|Créer un nouvel élément|
|[**New-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localgroup)|`nlg`|Créer un groupe local|
|[**New-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser)|`nlu`|Créer un utilisateur local|
|[**New-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/new-partition?view=windowsserver2022-ps)|-|Créer une partition sur un disque|
|[**New-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-service)|-|Créée un nouveau service|
|[**New-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/get-partition?view=windowsserver2022-ps)|-|Créer un volume avec un système de fichiers spécifique|
|[**Remove-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/remove-item)|`del`, `erase`, `rd`, `ri`, `rm`, `rmdir`|Supprimer un élément|
|[**Remove-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroup)|`rlg`|Supprimer un groupe local|
|[**Remove-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroupmember)|`rlgm`|Retirer un utilisateur d'un groupe local|
|[**Remove-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser)|`rlu`|Supprimer un utilisateur local|
|[**Remove-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/remove-partition?view=windowsserver2022-ps)|-|Supprimer une partition sur un disque et tous ses volumes|
|[**Remove-PhysicalDisk**](https://learn.microsoft.com/en-us/powershell/module/storage/remove-physicaldisk)|-|Supprimer un disque physique d'un pool de stockage|
|[**Rename-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/rename-item)|`ren`, `rni`|Renommer un élément|
|[**Rename-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localgroup)|`rnlg`|Renommer un groupe local|
|[**Rename-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localuser)|`rnlu`|Renommer un utilisateur local|
|[**Repair-FileIntegrity**](https://learn.microsoft.com/en-us/powershell/module/storage/repair-fileintegrity?view=windowsserver2022-ps)|-|Réparer un fichier corrompu sur un volume NTFS ou ReFS|
|[**Repair-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/repair-volume?view=windowsserver2022-ps)|-|Scanner et réparer un volume|
|[**Resize-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/resize-partition?view=windowsserver2022-ps)|-|Redimensionner une partition|
|[**Restart-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-service)|-|Stoppe puis démarre un ou plusieurs services|
|[**Resume-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/resume-service)|-|Reprend un ou plusieurs services suspendus|
|[**Set-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localgroup)|`slg`|Modifier un groupe local|
|[**Set-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localuser)|`slu`|Modifier un utilisateur local|
|[**Set-Location**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-location)|`cd`, `chdir`, `sl`|Changer de répertoire|
|[**Set-Service**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-service)|-|Gérer un service et ses propriétés|
|[**Sort-Object**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/sort-object)|`sort`|Trier des éléments|
|[**Start-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-process)|`saps`, `start`|Démarre un ou plusieurs processus|
|[**Start-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-service)|`sasv`|Démarrer un ou plusieurs services stoppés|
|[**Stop-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process)|`kill`, `spps`|Stoppe un ou plusieurs processus en cours d'exécution|
|[**Stop-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-service)|`spsv`|Stoppe un ou plusieurs services en cours d'exécution|
|[**Suspend-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/suspend-service)|-|Met en pause un ou plusieurs services en cours d'exécution|
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
