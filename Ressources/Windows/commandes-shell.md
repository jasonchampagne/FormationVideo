# Commandes Shell

> _Un **élément** peut être un répertoire, un fichier, un alias, une variable, une fonction, etc._

|COMMANDE_POWERSHELL|BATCH|DESCRIPTION|
|:--|:--|:--|
|[**Add-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/add-localgroupmember)|`algm`|Ajouter un utilisateur à un groupe local|
|[**Clear-DnsClientCache**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/clear-dnsclientcache)|-|Effacer le cache du client DNS|
|[**Clear-Host**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/clear-host)|`clear`, `cls`|Effacer le terminal|
|[**Copy-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/copy-item)|`copy`, `cp`, `cpi`|Copier un élément d'un emplacement à un autre|
|[**Disable-NetAdapter**](https://learn.microsoft.com/en-us/powershell/module/netadapter/disable-netadapter)|-|Désactiver une interface (carte) réseau|
|[**Disable-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/disable-netfirewallrule)|-|Désactiver une règle de pare-feu|
|[**Enable-NetAdapter**](https://learn.microsoft.com/en-us/powershell/module/netadapter/enable-netadapter)|-|Activer une interface (carte) réseau|
|[**Enable-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/enable-netfirewallrule)|-|Activer une règle de pare-feu|
|[**Get-Alias**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/get-alias)|`gal`|Récupérer les alias de commandes de la session active|
|[**Get-ChildItem**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/get-childitem)|`gci`, `ls`, `dir`|Lister ou rechercher des répertoires et fichiers|
|[**Get-Command**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/get-command)|`gcm`|Lister des commandes PowerShell|
|[**Get-Content**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content)|`cat`, `gc`, `type`|Récupérer le contenu d'un élément|
|[**Get-Date**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date)|-|Récupérer la date|
|[**Get-Disk**](https://learn.microsoft.com/en-us/powershell/module/storage/get-disk)|-|Lister les disques (physiques et virtuels)|
|[**Get-DnsClient**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/get-dnsclient)|-|Récupérer les détails des interfaces réseau configurées sur un ordinateur|
|[**Get-DnsClientGlobalSetting**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/get-dnsclientglobalsetting)|-|Récupérer les paramètres globaux du client DNS|
|[**Get-DnsClientServerAddress**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/get-dnsclientserveraddress)|-|Récupérer les adresses IP des serveurs DNS à partir des propriétés TCP/IP d'une interface|
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
|[**Get-NetAdapter**](https://learn.microsoft.com/en-us/powershell/module/netadapter/get-netadapter)|-|Récupérer les propriétés de base des interfaces (cartes) réseau|
|[**Get-NetConnectionProfile**](https://learn.microsoft.com/en-us/powershell/module/netconnection/get-netconnectionprofile)|-|Récupérer un profil de connexion réseau|
|[**Get-NetFirewallProfile**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/get-netfirewallprofile)|-|Afficher les paramètres appliqués aux profils du pare-feu|
|[**Get-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/get-netfirewallrule)|-|Récupérer les règles du pare-feu de l'ordinateur cible|
|[**Get-NetIPAddress**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netipaddress)|-|Récupérer la configuration de l'adresse IP|
|[**Get-NetIPConfiguration**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netipconfiguration)|`gip`|Récupérer la configuration du réseau IP|
|[**Get-NetIPInterface**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netipinterface)|-|Récupérer une interface IP|
|[**Get-NetIPv4Protocol**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netipv4protocol)|-|Récupérer les configurations de protocole IPv4|
|[**Get-NetIPv6Protocol**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netipv6protocol)|-|Récupérer les configurations de protocole IPv6|
|[**Get-NetRoute**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netroute)|-|Récupérer la table de routage IP|
|[**Get-NetTCPConnection**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-nettcpconnection)|-|Récupérer les connexions TCP|
|[**Get-NetTCPSetting**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-nettcpsetting)|-|Récupérer les informations sur les paramètres et la configuration TCP|
|[**Get-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/get-partition)|-|Lister les partitions|
|[**Get-PhysicalDisk**](https://learn.microsoft.com/en-us/powershell/module/storage/get-physicaldisk)|-|Lister les disques physiques|
|[**Get-Process**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process)|`gps`, `ps`|Lister les processus en cours d'exécution|
|[**Get-ScheduledTak**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/get-scheduledtask)|-|Obtenir la liste des tâches planifiées|
|[**Get-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-service)|`gsv`|Lister tous les services|
|[**Get-SmbShare**](https://learn.microsoft.com/en-us/powershell/module/smbshare/get-smbshare)|`gsmbs`|Récupérer les partages SMB sur l'ordinateur|
|[**Get-SmbShareAccess**](https://learn.microsoft.com/en-us/powershell/module/smbshare/get-smbshareaccess)|`gsmba`|Récupérer les droits du partage SMB|
|[**Get-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/get-volume)|-|Lister les volumes|
|[**Get-WinEvent**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/get-winevent)|-|Obtenir les événements des journaux sur les ordinateurs locaux et distants|
|[**Grant-SmbShareAccess**](https://learn.microsoft.com/en-us/powershell/module/smbshare/grant-smbshareaccess)|`grsmba`|Ajouter une entrée de contrôle d'accès pour un administrateur à un partage SMB|
|[**Invoke-Expression**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-expression)|`iex`|Exécuter des commandes ou des expressions|
|[**New-Alias**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/new-alias)|`nal`|Créer un nouvel alias de commande|
|[**New-Item**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item)|`ni`|Créer un nouvel élément|
|[**New-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localgroup)|`nlg`|Créer un groupe local|
|[**New-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser)|`nlu`|Créer un utilisateur local|
|[**New-NetIPAddress**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/new-netipaddress)|-|Créer et configurer une adresse IP|
|[**New-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/new-netfirewallrule)|-|Créer une nouvelle règle de pare-feu entrant ou sortant et l'ajouter à l'ordinateur cible|
|[**New-NetRoute**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/new-netroute)|-|Créer une route dans la table de routage IP|
|[**New-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/new-partition)|-|Créer une partition sur un disque|
|[**New-ScheduledTaskAction**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/new-scheduledtaskaction)|-|Créer une action pour une tâche planifiée|
|[**New-ScheduledTaskTrigger**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/new-scheduledtasktrigger)|-|Créer un déclencheur pour une tâche planifiée|
|[**New-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-service)|-|Créée un nouveau service|
|[**New-SmbMapping**](https://learn.microsoft.com/en-us/powershell/module/smbshare/new-smbmapping)|`nsmbm`|Créer un mappage SMB|
|[**New-SmbShare**](https://learn.microsoft.com/en-us/powershell/module/smbshare/new-smbshare)|`nsmbs`|Créer un partage SMB|
|[**New-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/get-partition)|-|Créer un volume avec un système de fichiers spécifique|
|[**New-WinEvent**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.diagnostics/new-winevent)|-|Créer un nouvel événement pour le fournisseur d'événements spécifié|
|[**Receive-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/receive-job)|`rcjb`|Récupérer les résultats des travaux en arrière-plan PowerShell dans la session active|
|[**Register-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/register-scheduledtask)|-|Enregistrer une tâche planifiée|
|[**Remove-Alias**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/remove-alias)|-|Supprimer un alias de commande de la session active|
|[**Remove-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/remove-item)|`del`, `erase`, `rd`, `ri`, `rm`, `rmdir`|Supprimer un élément|
|[**Remove-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/remove-job)|`rjb`|Supprimer un travail en arrière-plan PowerShell|
|[**Remove-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroup)|`rlg`|Supprimer un groupe local|
|[**Remove-LocalGroupMember**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localgroupmember)|`rlgm`|Retirer un utilisateur d'un groupe local|
|[**Remove-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser)|`rlu`|Supprimer un utilisateur local|
|[**Remove-NetIPAddress**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/remove-netipaddress)|-|Supprimer une adresse IP et sa configuration|
|[**Remove-NetFirewallRule**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/remove-netfirewallrule)|-|Supprimer une ou plusieurs règles du pare-feu|
|[**Remove-NetRoute**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/remove-netroute)|-|Supprimer des routes de la table de routage IP|
|[**Remove-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/remove-partition)|-|Supprimer une partition sur un disque et tous ses volumes|
|[**Remove-PhysicalDisk**](https://learn.microsoft.com/en-us/powershell/module/storage/remove-physicaldisk)|-|Supprimer un disque physique d'un pool de stockage|
|[**Remove-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-service)|-|Supprime un service|
|[**Remove-SmbMapping**](https://learn.microsoft.com/en-us/powershell/module/smbshare/remove-smbmapping)|`rsmbm`|Supprimer le mappage d'un partage SMB|
|[**Remove-SmbShare**](https://learn.microsoft.com/en-us/powershell/module/smbshare/remove-smbshare)|`rsmbs`|Supprimer les partages SMB spécifiés|
|[**Rename-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/rename-item)|`ren`, `rni`|Renommer un élément|
|[**Rename-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localgroup)|`rnlg`|Renommer un groupe local|
|[**Rename-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/rename-localuser)|`rnlu`|Renommer un utilisateur local|
|[**Rename-NetAdapter**](https://learn.microsoft.com/en-us/powershell/module/netadapter/rename-netadapter)|-|Renommer une interface (carte) réseau|
|[**Repair-FileIntegrity**](https://learn.microsoft.com/en-us/powershell/module/storage/repair-fileintegrity)|-|Réparer un fichier corrompu sur un volume NTFS ou ReFS|
|[**Repair-Volume**](https://learn.microsoft.com/en-us/powershell/module/storage/repair-volume)|-|Scanner et réparer un volume|
|[**Resize-Partition**](https://learn.microsoft.com/en-us/powershell/module/storage/resize-partition)|-|Redimensionner une partition|
|[**Resolve-DnsName**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/resolve-dnsname)|-|Effectuer une résolution de requête de nom DNS pour le nom spécifié|
|[**Restart-NetAdapter**](https://learn.microsoft.com/en-us/powershell/module/netadapter/restart-netadapter)|-|Redémarrer une interface (carte) réseau en la désactivant puis en la réactivant|
|[**Restart-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-service)|-|Stoppe puis démarre un ou plusieurs services|
|[**Resume-Service**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/resume-service)|-|Reprend un ou plusieurs services suspendus|
|[**Revoke-SmbShareAccess**](https://learn.microsoft.com/en-us/powershell/module/smbshare/revoke-smbshareaccess)|`rksmba`|Supprimer tous les contrôles d'accès autorisés d'un administrateur d'un partage SMB|
|[**Set-Alias**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/set-alias)|`sal`|Créer ou modifier un alias de commande pour la session PowerShell active|
|[**Set-DnsClient**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/set-dnsclient)|-|Définir les configurations du client DNS d'une interface de l'ordinateur|
|[**Set-DnsClientGlobalSetting**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/set-dnsclientglobalsetting)|-|Définir les paramètres globaux du client DNS (non spécifiques à une interface)|
|[**Set-DnsClientServerAddress**](https://learn.microsoft.com/en-us/powershell/module/dnsclient/set-dnsclientserveraddress)|-|Définir les adresses des serveurs DNS associées aux propriétés TCP/IP d'une interface|
|[**Set-Item**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-item)|`si`|Remplacer la valeur d'un élément|
|[**Set-ItemProperty**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-itemproperty)|`sp`|Créer ou modifier la valeur d'une propriété d'un élément|
|[**Set-LocalGroup**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localgroup)|`slg`|Modifier un groupe local|
|[**Set-LocalUser**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localuser)|`slu`|Modifier un utilisateur local|
|[**Set-Location**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-location)|`cd`, `chdir`, `sl`|Changer de répertoire|
|[**Set-NetConnectionProfile**](https://learn.microsoft.com/en-us/powershell/module/netconnection/set-netconnectionprofile)|-|Modifier la catégorie de réseau d'un profil de connexion|
|[**Set-NetIPAddress**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/set-netipaddress)|-|Modifier la configuration d'une adresse IP|
|[**Set-NetIPInterface**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/set-netipinterface)|-|Modifier une interface IP|
|[**Set-NetIPv4Protocol**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/set-netipv4protocol)|-|Modifier les informations de configuration du protocole IPv4|
|[**Set-NetIPv6Protocol**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/set-netipv6protocol)|-|Modifier les informations de configuration du protocole IPv6|
|[**Set-NetFirewallProfile**](https://learn.microsoft.com/en-us/powershell/module/netsecurity/set-netfirewallprofile)|-|Configurer les paramètres des profils du pare-feu|
|[**Set-NetRoute**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/set-netroute)|-|Modifier une ou plusieurs entrées de la table de routage IP|
|[**Set-NetTCPSetting**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/set-nettcpsetting)|-|Modifier les paramètres TCP|
|[**Set-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/set-scheduledtask)|-|Modifier une tâche planifiée|
|[**Set-Service**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/set-service)|-|Gérer un service et ses propriétés|
|[**Set-SmbShare**](https://learn.microsoft.com/en-us/powershell/module/smbshare/set-smbshare)|`ssmbs`|Modifier les propriétés d'un partage SMB|
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
|[**Test-Connection**](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/test-connection)|-|Envoyer des paquets de demande d'écho ICMP (ou pings) à un ou plusieurs ordinateurs|
|[**Test-NetConnection**](https://learn.microsoft.com/en-us/powershell/module/nettcpip/test-netconnection)|`tnc`|Afficher des informations de diagnostic pour une connexion|
|[**Test-Path**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.management/test-path)|-|Vérifier si tous les éléments d'un chemin d'accès existent|
|[**Unregister-ScheduledTask**](https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/unregister-scheduledtask)|-|Supprimer une tâche planifiée|
|[**Wait-Job**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.core/wait-job)|`wjb`|Attendre que l'un ou l'ensemble des travaux PowerShell en cours d'exécution dans la session soient à l'état de fin|
|[**Write-Debug**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-debug)|-|Écrire un message de débogage dans la console|
|[**Write-Error**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-error)|-|Écrire un objet dans le flux d'erreurs|
|[**Write-Host**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-host)|-|Écrire la sortie personnalisée sur un hôte|
|[**Write-Information**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-information)|-|Spécifier la gestion des données de flux d'informations pour une commande|
|[**Write-Output**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-output)|`echo`, `write`|Écrire les objets spécifiés dans le pipeline|
|[**Write-Verbose**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-verbose)|-|Écrire du texte dans le flux de message détaillé|
|[**Write-Warning**](https://learn.microsoft.com/fr-fr/powershell/module/microsoft.powershell.utility/write-warning)|-|Écrire un message d'avertissement|

## Commandes à éviter

Ces commandes ne sont pas sécurisées, plus maintenues et/ou devenues obsolètes :

+ append
+ bitsadmin
+ Clear-EventLog
+ debug
+ ftp
+ Get-EventLog
