# Installation des addons invité pour VirtualBox

> [GNU/Linux #2 - installer système](https://www.youtube.com/watch?v=0i2WTmKktbE)

_Les additions invité VirtualBox (_vbox guest additions_) proposent des pilotes et applications pour optimiser le système virtualisé et offrir de meilleures performances. Cela inclut également la prise en charge du changement de résolution de l'interface._

> **DEUX POSSIBILITÉS D'INSTALLATION**
> + [1. Depuis le disque optique virtuel](#1-depuis-le-disque-optique-virtuel)
> + [2. Depuis la ligne de commandes](#2-depuis-la-ligne-de-commandes)

---

## 1. Depuis le disque optique virtuel

+ Depuis le menu de la fenêtre du système virtualisé, aller dans **Périphériques** > **Insérer l'image CD des Additions invité**

<p align="center"><img src="https://nsa40.casimages.com/img/2019/12/26/191226031630264577.png" alt=""></p>

+ Une fois le disque monté sur le système, ouvrir un terminal
+ Taper une à une les commandes suivantes (en **root**)

```bash
cd /dev/cdrom            # ⚠ : ce chemin peut être différent (ex : dans /media)
./VBoxLinuxAdditions.run # Lancement du script d'installation
```

## 2. Depuis la ligne de commandes

Si vous ne parvenez pas à monter le disque optique virtuel, ouvrez un terminal sur votre système GNU/Linux et copiez/collez cette commande (à adapter si vous utilisez un autre système qu'Ubuntu) :

```bash
sudo apt update && sudo apt install 
```

Une fois l'opération terminée, redémarrez le système virtualisé.
