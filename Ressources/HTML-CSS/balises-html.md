# Balises HTML

Voici un mémento des balises que vous pouvez utiliser en HTML ([valides W3C](https://www.w3.org/TR/html52/)) et qui sont correctement prises en charge par les navigateurs standards (Chrome, Edge, Firefox, Opera, Safari).

## Balises valides W3C

### \<!-- --\>

```html
<!-- Ceci est un commentaire -->

<!-- Ceci est un commentaire
de plusieurs lignes -->
```

### \<a\>

```html
<a href="https://jasonchampagne.fr">Site personnel de Jason</a>
<a href="#maSection">Aller vers maSection</a>
<a href="http://lien.com" title="Description">UnLien</a>
<a href="https://youtube.com" target="_blank">Ouverture nouvel onglet</a>
<a href="mailto:chuck@norris.com">Envoyer un e-mail</a>
```

### \<abbr\>

```html
Créer une page web en <abbr title="Hypertext Markup Language">HTML</abbr>
```

### \<address\>

```html
<address>
   Chuck NORRIS
   8 Rue des potiers
   75000 PARIS
</address>
```

### \<article\>

```html
<article>
   <header>
      <h2>Un premier titre</h2>
   </header>
   <section>
      <p>bla bla bla...</p>
   </section>
</article>
```

### \<aside\>

```html
<aside>
    <p>Contenu non lié au document...</p>
</aside>
```

### \<audio\>

```html
<audio src="fichier.mp3" controls>
    Merci de mettre à jour votre navigateur pour lire le son
</audio>

<audio controls autoplay muted>
    <source src="fichier.ogg" type="audio/ogg">
</audio>
```

### \<b\>

```html
Une mise <b>en évidence</b> d'un peu de texte
```

### \<bdi\>

```html
Ce texte sera <bdi>écrit dans le sens déduit</bdi>
```

### \<bdo\>

```html
Ce texte <bdo dir="rtl">écrit de droite à gauche</bdo>
Ce texte <bdo dir="ltr">ehcuag à etiord ed tircé</bdo>
```

### \<blockquote\>

```html
<blockquote cite="http://lien_de_la_source">
    <p>Une longue citation dans un bloc...</p>
</blockquote>
```

### \<br\>

```html
La première ligne du texte<br>
et la seconde ligne.
```

### \<button\>

```html
<button type="button">Cliquez ICI</button>
```

### \<cite\>

```html
Dans la série <cite>Charmed</cite>, trois soeurs chassent des démons...
```

### \<code\>

```html
Code machine : <code>printf("Bonjour tout le monde !\n");</code>
```

### \<del\>

```html
Dans quelques jours sortira un <del>nouvel article</del> nouveau comparatif.
```

### \<details\>

```html
<details>
    Ce texte sera masqué par défaut tant que l'utilisateur n'aura pas cliqué sur le bloc.
</details>
```

## Balises obsolètes

> ⛔ Ces balises ne sont pas à utiliser !

+ `<acronym>`
+ `<applet>`
+ `<basefont>`
+ `<big>`
+ `<center>`
+ `<command>`
+ `<dir>`
+ `<font>`
+ `<frame>`
+ `<frameset>`
+ `<hgroup>`
+ `<keygen>`
+ `<noframes>`
+ `<strike>`
+ `<tt>`
+ `<u>`
+ `<xmp>`
