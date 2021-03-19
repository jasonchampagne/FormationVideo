# Installation des addons invité pour VirtualBox

> [GNU/Linux #2 - installer système](https://www.youtube.com/watch?v=0i2WTmKktbE)

_Les additions invité VirtualBox (_vbox guest additions_) proposent des pilotes et applications pour optimiser le système virtualisé et offrir de meilleures performances. Cela inclut également la prise en charge du changement de résolution de l'interface._

---

+ Depuis le menu de la fenêtre du système virtualisé, aller dans **Périphériques** > **Insérer l'image CD des Additions invité**

<p align="center"><img src="https://nsa40.casimages.com/img/2019/12/26/191226031630264577.png" alt=""></p>

+ Une fois le disque monté sur le système, ouvrir un terminal
+ Taper une à une les commandes suivantes (en **root**)

```bash
cd /dev/cdrom            # Note : ce chemin peut être différent (ex : /media)
./VBoxLinuxAdditions.run # Lancement du script d'installation
```

Une fois l'opération terminée, redémarrez le système virtualisé.
