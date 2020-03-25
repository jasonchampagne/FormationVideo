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

### \<dfn\>

```html
<dfn>HTML</dfn> est le langage informatique pour faire des pages web
```

### \<dl\>, \<dt\>, \<dd\>

```html
<dl>
   <dt>Mot 1</dt>
      <dd>Définition de mot1</dd>
   <dt>Mot 2</dt>
      <dd>Définition de mot2</dd>
   <dt>Mot 3</dt>
      <dt>Mot 4</dt>
   <dd>Définition de mot3 et mot4</dd>
</dl>
```

### \<dialog\>

> [voir JavaScript](https://github.com/jasonchampagne/FormationVideo/tree/master/Ressources/JavaScript)

### \<em\>

```html
On veut insister <em>sur cet extrait du texte</em> et pas le reste !
```

### \<fieldset\>, \<legend\>

```html
<fieldset>
   <legend>Section</legend>
   <!-- champs de formulaire... -->
</fieldset>
```

### \<figure\>, \<figcaption\>

```html
<figure>
    <img src="une-image.png" alt="Texte alternatif">
    <figcaption>Légende de l'image</figcaption>
</figure>
```

### \<form\>

```html
<form method="get|post" action="mapage.php" autocomplete="off">
    <!-- champs de saisie, soumission, etc. -->
</form>
```

### \<footer\>

```html
<footer>
    <p>Copyright &copy; 2020</p>
</footer>
```

### \<h1\>, \<h2\>, \<h3\>, \<h4\>, \<h5\>, \<h6\>

```html
<h1>Un titre en H1</h1>
<h2>Un titre en H2</h2>
...
<h6>Un titre en H6</h6>
```

### \<header\>

```html
<header>
    <h1>Mon Site Web</h1>
    <img src="logo.png" alt="logo de MonSiteWeb">
</header>
```

### \<hr\>

```html
Un premier contenu.
<hr>
L'autre contenu après le séparateur.
```

### \<i\>

```html
<p>Dans un texte, je peux avoir une partie bien à part <i>comme cela</i> sans que ça n'ai d'importance pour la globalité du contenu.</p>
```

### \<img\>

```html
<img src="http://lien-vers-image.jpg" alt="Texte alternatif si l'image ne s'affiche pas">
```

### \<input\>

```html
<input type="text" name="user" placeholder="Utilisateur" required>
<input type="password" name="pass" required>

Choix : <input type="radio" name="monChoix" value="oui" checked> Oui / <input type="radio" name="monChoix" value="non"> Non

OS utilisés :<br>
<input type="checkbox" name="windows"> Windows<br>
<input type="checkbox" name="linux"> GNU/Linux<br>
<input type="checkbox" name="macos"> MacOS

<label for="webURL">Site</label> : <input id="webURL" name="user_site">
<input type="submit" value="Valider formulaire"> <input type="reset" value="Effacer informations">
```

Autres types de champ : color, date, datetime-local, email, file, hidden, image, month, number, range, search, tel, time, url, week

### \<ins\>

```html
Ce jour sort <ins>le nouveau Assassin's Creed sur PS4 !</ins>
```

### \<kbd\>

```html
Utiliseé le raccourci-clavier <kbd>Ctrl + S</kbd> pour sauvegarder un fichier
```

### \<main\>

```html
<main>
    <section>
       <h2>Une section</h2>
       <p>Contenu principal...</p>
    </section>
</main>
```

### \<map\>, \<area\>

```html
<img usemap="#worldmap" src="global-map.jpg" alt="Carte du monde">

<map name="worldmap">
    <area href="map-details.html" shape="rect" coords="0,0 250,250">
    <area href="other-map.jpg" shape="rect" coords="250,250 500,500">
</map>
```

### \<mark\>

```html
Nous avons <mark>15 résultats</mark> correspondants à vos critères
```

### \<meter\>

```html
Pourcentage : <meter value="0.4">40%</meter>
Température : <meter value="34" optimum="37.4">37 degrés</meter>
```

### \<nav\>

```html
<nav>
    <ul>
       <li><a href="home.html">Accueil</li>
       <li><a href="articles.html">Articles</li>
       <li><a href="forum.html">Forum</li>
       <li><a href="contact.html">Contact</li>
    </ul>
</nav>
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
