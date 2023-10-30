# Commandes Shell

> _Un **élément** peut être un répertoire, un fichier, un alias, une variable, une fonction, etc._

|POWERSHELL|BATCH|DESCRIPTION|
|:--|:--|:--|
|[**Add-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember)|`algm`|Ajouter un utilisateur à un groupe local|
|[**Clear-Host**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/clear-host)|`clear`, `cls`|Effacer le terminal|
|[**Copy-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/copy-item)|`copy`, `cp`, `cpi`|Copier un élément d'un emplacement à un autre|
|[**Disable-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/disable-netfirewallrule)|-|Désactiver une règle de pare-feu|
|[**Enable-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/enable-netfirewallrule)|-|Activer une règle de pare-feu|
|[**Get-ChildItem**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-childitem)|`gci`, `ls`, `dir`|Lister ou rechercher des répertoires et fichiers|
|[**Get-Command**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/get-command)|`gcm`|Lister des commandes PowerShell|
|[**Get-Content**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content)|`cat`, `gc`, `type`|Récupérer le contenu d'un élément|
|[**Get-Date**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date)|-|Récupérer la date|
|[**Get-Disk**](https://learn.microsoft.com/en-us/powershell/module/storage/get-disk?view=windowsserver2022-ps)|-|Lister les disques (physiques et virtuels)|
|[**Get-Help**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/get-help)|`help`, `man`|Afficher des informations sur une commande|
|[**Get-Host**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-host)|-|Récupérer le programme hôte actuel|
|[**Get-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-item)|`gi`|Obtenir l'élément d'un emplacement spécifié|
|[**Get-ItemProperty**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-itemproperty)|`gp`|Obtenir les propriétés de l'élément spécifié|
|[**Get-ItemPropertyValue**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-itempropertyvalue)|`gpv`|Obtenir la valeur des propriétés d'un élément spécifié|
|[**Get-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/get-job)|`gjb`|Récupérer les travaux en arrière-plan PowerShell en cours d’exécution|
|[**Get-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localgroup)|`glg`|Récupérer les groupes locaux|
|[**Get-LocalGroupMember**](https://learn.microsoft.com/th-th/powershell/module/microsoft.powershell.localaccounts/get-localgroupmember)|`glgm`|Récupérer les membres d'un groupe local spécifique|
|[**Get-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/get-localuser)|`glu`|Récupérer les utilisateurs locaux|
|[**Get-Location**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-location)|`gl`, `pwd`|Récupérer le nom du répertoire courant|
|[**Get-NetFirewallProfile**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/get-netfirewallprofile)|-|Afficher les paramètres appliqués aux profils du pare-feu|
|[**Get-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/get-netfirewallrule)|-|Récupèrer les règles du pare-feu de l'ordinateur cible|
|[**Get-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/get-partition?view=windowsserver2022-ps)|-|Lister les partitions|
|[**Get-PhysicalDisk**](https://learn.microsoft.com/en-us/powershell/module/storage/get-physicaldisk?view=windowsserver2022-ps)|-|Lister les disques physiques|
|[**Get-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process)|`gps`, `ps`|Lister les processus en cours d'exécution|
|[**Get-ScheduledTak**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/get-scheduledtask)|-|Obtenir la liste des tâches planifiées|
|[**Get-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-service)|`gsv`|Lister tous les services|
|[**Get-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/get-volume?view=windowsserver2022-ps)|-|Lister les volumes|
|[**Get-WinEvent**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent)|-|Obtenir les événements des journaux sur les ordinateurs locaux et distants|
|[**Invoke-Expression**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-expression)|`iex`|Exécuter des commandes ou des expressions|
|[**New-Item**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item)|`ni`|Créer un nouvel élément|
|[**New-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localgroup)|`nlg`|Créer un groupe local|
|[**New-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser)|`nlu`|Créer un utilisateur local|
|[**New-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/new-netfirewallrule)|-|Créer une nouvelle règle de pare-feu entrant ou sortant et l'ajouter à l'ordinateur cible|
|[**New-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/new-partition?view=windowsserver2022-ps)|-|Créer une partition sur un disque|
|[**New-ScheduledTaskAction**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/new-scheduledtaskaction)|-|Créer une action pour une tâche planifiée|
|[**New-ScheduledTaskTrigger**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/new-scheduledtasktrigger)|-|Créer un déclencheur pour une tâche planifiée|
|[**New-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-service)|-|Créée un nouveau service|
|[**New-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/get-partition?view=windowsserver2022-ps)|-|Créer un volume avec un système de fichiers spécifique|
|[**New-WinEvent**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/new-winevent)|-|Créer un nouvel événement pour le fournisseur d'événements spécifié|
|[**Receive-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/receive-job)|`rcjb`|Récupérer les résultats des travaux en arrière-plan PowerShell dans la session active|
|[**Register-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/register-scheduledtask)|-|Enregistrer une tâche planifiée|
|[**Remove-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/remove-item)|`del`, `erase`, `rd`, `ri`, `rm`, `rmdir`|Supprimer un élément|
|[**Remove-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/remove-job)|`rjb`|Supprimer un travail en arrière-plan PowerShell|
|[**Remove-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroup)|`rlg`|Supprimer un groupe local|
|[**Remove-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroupmember)|`rlgm`|Retirer un utilisateur d'un groupe local|
|[**Remove-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser)|`rlu`|Supprimer un utilisateur local|
|[**Remove-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/remove-netfirewallrule)|-|Supprimer une ou plusieurs règles du pare-feu|
|[**Remove-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/remove-partition?view=windowsserver2022-ps)|-|Supprimer une partition sur un disque et tous ses volumes|
|[**Remove-PhysicalDisk**](https://learn.microsoft.com/en-us/powershell/module/storage/remove-physicaldisk)|-|Supprimer un disque physique d'un pool de stockage|
|[**Remove-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-service)|-|Supprime un service|
|[**Rename-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/rename-item)|`ren`, `rni`|Renommer un élément|
|[**Rename-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localgroup)|`rnlg`|Renommer un groupe local|
|[**Rename-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localuser)|`rnlu`|Renommer un utilisateur local|
|[**Repair-FileIntegrity**](https://learn.microsoft.com/en-us/powershell/module/storage/repair-fileintegrity?view=windowsserver2022-ps)|-|Réparer un fichier corrompu sur un volume NTFS ou ReFS|
|[**Repair-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/repair-volume?view=windowsserver2022-ps)|-|Scanner et réparer un volume|
|[**Resize-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/resize-partition?view=windowsserver2022-ps)|-|Redimensionner une partition|
|[**Restart-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-service)|-|Stoppe puis démarre un ou plusieurs services|
|[**Resume-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/resume-service)|-|Reprend un ou plusieurs services suspendus|
|[**Set-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-item)|`si`|Remplacer la valeur d'un élément|
|[**Set-ItemProperty**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-itemproperty)|`sp`|Créer ou modifier la valeur d'une propriété d'un élément|
|[**Set-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localgroup)|`slg`|Modifier un groupe local|
|[**Set-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localuser)|`slu`|Modifier un utilisateur local|
|[**Set-Location**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-location)|`cd`, `chdir`, `sl`|Changer de répertoire|
|[**Set-NetFirewallProfile**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/set-netfirewallprofile)|-|Configurer les paramètres des profils du pare-feu|
|[**Set-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/set-scheduledtask)|-|Modifier une tâche planifiée|
|[**Set-Service**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-service)|-|Gérer un service et ses propriétés|
|[**Sort-Object**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/sort-object)|`sort`|Trier des éléments|
|[**Start-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/start-job)|`sajb`|Démarrer un travail en arrière-plan PowerShell|
|[**Start-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-process)|`saps`, `start`|Démarre un ou plusieurs processus|
|[**Start-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/start-scheduledtask)|-|Démarrer une ou plusieurs instances d'une tâche planifiée|
|[**Start-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-service)|`sasv`|Démarrer un ou plusieurs services stoppés|
|[**Start-Sleep**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/start-sleep)|`sleep`|Suspendre l'activité dans un script ou une session pendant une période spécifiée|
|[**Stop-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/stop-job)|`spjb`|Arrêter un travail en arrière-plan PowerShell|
|[**Stop-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process)|`kill`, `spps`|Stopper un ou plusieurs processus en cours d'exécution|
|[**Stop-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/stop-scheduledtask)|-|Arrêter toutes les instances en cours d'exécution d'une tâche planifiée|
|[**Stop-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-service)|`spsv`|Stopper un ou plusieurs services en cours d'exécution|
|[**Suspend-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/suspend-service)|-|Mettre en pause un ou plusieurs services en cours d'exécution|
|[**Test-Path**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/test-path)|-|Vérifie si tous les éléments d'un chemin d'accès existent|
|[**Unregister-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/unregister-scheduledtask)|-|Supprimer une tâche planifiée|
|[**Wait-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/wait-job)|`wjb`|Attendre que l’un ou l’ensemble des travaux PowerShell en cours d’exécution dans la session soient à l’état de fin|
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
+ Clear-EventLog
+ debug
+ ftp
+ Get-EventLog
