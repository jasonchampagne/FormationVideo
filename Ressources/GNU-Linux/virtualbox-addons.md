# Installation des addons invité pour VirtualBox

> Les additions invité VirtualBox (_vbox guest additions_) proposent des pilotes et applications pour optimiser le système virtualisé et offrir de meilleures performances. Cela inclut également la prise en charge du changement de résolution de l'interface.

+ Depuis le menu de la fenêtre du système virtualisé, aller dans **Périphériques** > **Insérer l'image CD des Additions invité**

<p align="center">
![Menu de VirtualBox](https://nsa40.casimages.com/img/2019/12/26/191226031630264577.png)
 </p>

+ Une fois le disque monté sur le système, ouvrir un terminal
+ Taper une à une les commandes suivantes (en **root**)

```bash
cd /dev/cdrom            # Accède à l'emplacement des fichiers des addons
./VBoxLinuxAdditions.run # Lancement du script d'installation
```

Une fois l'opération terminée, redémarrez le système virtualisé.
