# Balises HTML

Mémento des balises HTML valides [W3C](https://www.w3.org/TR/html52/) et qui sont correctement prises en charge par les navigateurs standards (Chrome, Edge, Firefox, Opera, Safari).

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
Utilisez le raccourci-clavier <kbd>Ctrl + S</kbd> pour sauvegarder un fichier
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

### \<output\>

```html
Calcul : 6 + 2 = <output>8</output>
```

### \<p\>

```html
<p>Un premier paragraphe de texte.</p>
<p>Un autre paragraphe, séparé du premier...</p>
```

### \<picture\>, \<source\>

```html
<picture>
    <source srcset="image-large.jpg" media=(min-width:800px)">
    <img src="image-petite.jpg" alt="">
</picture>
```

### \<pre\>

```html
<pre>Ce texte
sera pré-formaté et le HTML va bien prendre en
compte chaque espace, saut de ligne,      tabulation, etc.</pre>
```

### \<progress\>

```html
Avancement du projet : <progress value="30" max="100"></progress>
```

### \<q\>

```html
William Penn a dit <q>Si tu reçois une injure, que cela ne te pousse pas à en commettre</q>, qu'en pensez-vous ?
```

### \<ruby\>, \<rt\>, \<rp\>

```html
<ruby>
    あ <rt>A</rt>
    り <rt>RI</rt>
    が <rt>GA</rt>
    と <rt>TO</rt>
    う <rp>(</rp><rt>U</rt><rp>)</rp>
</ruby>
```

### \<s\>

```html
HTML est un langage de <s>programmation</s> balisage pour concevoir des sites web.
```

### \<samp\>

```html
Le programme affichera <samp>Bonjour tout le monde !</samp>
```

### \<section\>

```html
<section>
    <h1>Le titre de la section</h1>
    <p>Contenu de la section du document...</p>
</section>
```

### \<select\>, \<option\>, \<optgroup\>, \<datalist\>

```html
<select name="choixOS">
    <option value="win">Windows</option>
    <option value="linux">GNU/Linux</option>
    <option value="macos">Mac OS</option>
</select>

<input list="jeu_prefere">
<datalist id="jeu_prefere">
    <option value="Final Fantasy">
    <option value="Pokemon">
    <option value="Tekken">
</datalist>
```

### \<small\>

```html
Texte normal <small>Copyright 2017</small>
```

### \<strong\>

```html
<p>Lorsque est sorti le jeu PimpMyChuckNorris, il a été <strong>vendu à plus de 15 millions d'exemplaires</strong>. Les gens ont particulièrement apprécié le gameplay.</p>
```

### \<sub\>

```html
Formule du dioxyde de carbone : CO<sub>2</sub>
```

### \<sup\>

```html
Surface habitable : 120m<sup>2</sup>
```

### \<summary\>

```html
<details>
    <summary>Cliquez pour afficher la réponse</summary>
    La réponse est 42 !
</details>
```

### \<table\>, \<caption\>, \<thead\>, \<tbody\>, \<tfoot\>, \<tr\>, \<th\>, \<td\>, \<colgroup\>, \<col\>

```html
<table>
    <caption>Titre du tableau</caption>
    <thead>
       <tr>
          <th>En-tête 1</th>
          <th>En-tête 2</th>
          <th>En-tête 3</th>
       </tr>
    </thead>
    <tbody>
       <tr>
          <td>Cellule de l'en-tête 1</td>
          <td colspan="2">Cellule des colonnes 2 et 3</td>
       </tr>
    </tody>
</table>
```

### \<textarea\>

```html
<textarea name="monChampTexte" rows="10" cols="65">
    Entrez votre commentaire ici...
</textarea>
```

### \<time\>

```html
Date sans précision : <time>19 janvier 2018</time>
Année : <time datetime="2018">2018</time>
Date complète : <time datetime="2018-01-19">19/01/2018</time>
Date et heure : <time datetime="2018-01-19 13:45:00">19 jan 2017, 13h45</time>
```

### \<ul\>, \<ol\>, \<li\>

```html
<ul>
    <li>Un premier élément</li>
    <li>Un autre élément</li>
</ul>

<ol type="I">
    <li>Première étape</li>
    <li>Seconde étape</li>
    <li>Dernière étape</li>
</ol>
```

### \<var\>

```html
En informatique : <var>nombre</var> = <var>14</var>
En mathématiques : équation <var>x</var> + 5 = 13
```

### \<video\>

```html
<video src="fichier.mp4" width="640" height="auto" controls>
    Merci de mettre à jour votre navigateur pour lire la vidéo
</video>

<video controls preload="metadata">
    <source src="fichier.webm" type="video/webm">
</video>
```

### \<wbr\>

```html
Ce long mot sera tronqué : aaaaaaaaaaaaaaa<wbr>aaaaaaaaaaa
```

## Balises obsolètes

> ⛔ Ces balises ne sont pas à utiliser ([voir tutoriel](https://www.youtube.com/watch?v=23Kcs7AW-18)) !

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
