# Propriétés CSS

🔗 [Référence CSS](https://developer.mozilla.org/fr/docs/Web/CSS/Reference)

> 🔴 Liste encore incomplète par rapport à ce qui a été abordé en cours

---
> **SOMMAIRE**
> + [background](#-background)
> + [background-attachment](#-background-attachment)
> + [background-clip](#-background-clip)
> + [background-color](#-background-color)
> + [background-image](#-background-image)
> + [background-origin](#-background-origin)
> + [background-position](#-background-position)
> + [background-repeat](#-background-repeat)
> + [background-size](#-background-size)
> + [color](#-color)
> + [direction](#-direction)
> + [display](#-display)
> + [font](#-font)
> + [font-family](#-font-family)
> + [font-size](#-font-size)
> + [font-style](#-font-style)
> + [font-variant](#-font-variant)
> + [font-weight](#-font-weight)
> + [height](#-height)
> + [letter-spacing](#-letter-spacing)
> + [line-height](#-line-height)
> + [list-style](#-list-style)
> + [list-style-image](#-list-style-image)
> + [list-style-position](#-list-style-position)
> + [list-style-type](#-list-style-type)
> + [margin](#-margin)
> + [margin-bottom](#-margin-bottom)
> + [margin-left](#-margin-left)
> + [margin-right](#-margin-right)
> + [margin-top](#-margin-top)
> + [max-height](#-max-height)
> + [max-width](#-max-width)
> + [min-height](#-min-height)
> + [min-width](#-min-width)
> + [overflow](#-overflow)
> + [overflow-x](#-overflow-x)
> + [overflow-y](#-overflow-y)
> + [padding](#-padding)
> + [padding-bottom](#-padding-bottom)
> + [padding-left](#-padding-left)
> + [padding-right](#-padding-right)
> + [padding-top](#-padding-top)
> + [text-align](#-text-align)
> + [text-decoration](#-text-decoration)
> + [text-decoration-color](#-text-decoration-color)
> + [text-decoration-line](#-text-decoration-line)
> + [text-decoration-style](#-text-decoration-style)
> + [text-indent](#-text-indent)
> + [text-justify](#-text-justify)
> + [text-overflow](#-text-overflow)
> + [text-shadow](#-text-shadow)
> + [text-transform](#-text-transform)
> + [vertical-align](#-vertical-align)
> + [white-space](#-white-space)
> + [width](#-width)
> + [word-break](#-word-break)
> + [word-spacing](#-word-spacing)

---

## 🔵 background

+ Association de `background-attachment`, `background-clip`, `background-color`, `background-image`, `background-origin`, `background-position`, `background-repeat` et `background-size`.

```css
background: #000 url(images/bg.jpg) repeat;
background: url(images/motif.jpg) no-repeat top;
background: transparent url(images/fond.jpg) top center cover no-repeat scroll;
```

## 🔵 background-attachment

```css
background-attachment: fixed;
background-attachment: local;
background-attachment: scroll;
```

## 🔵 background-clip

```css
background-clip: border-box;
background-clip: content-box;
background-clip: padding-box;
```

## 🔵 background-color

```css
color: blueviolet;
color: #8A2BE2;
color: rgb(138, 44, 226);
color: hsl(271, 76%, 53%);
```

## 🔵 background-image

```css
background-image: url(images/bg.jpg);
```

## 🔵 background-origin

```css
background-origin: border-box;
background-origin: content-box;
background-origin: padding-box;
```

## 🔵 background-position

```css
background-position: top;
background-position: right;
background-position: left;
background-position: bottom;

background-position: 25% 75%;
background-position: top left 8px;
```

## 🔵 background-repeat

```css
background-repeat: no-repeat;
background-repeat: repeat-x;
background-repeat: repeat-y;
background-repeat: repeat;

background-repeat: round;
background-repeat: space;
```

## 🔵 background-size

```css
background-size: cover;
background-size: contain;

background-size: auto;
background-size: 50%;
background-size: 2em;
background-size: 24px;
```

## 🔵 color

```css
color: red;
color: #FF0000;
color: rgb(255, 0, 0);
color: hsl(0, 100%, 50%);
```

## 🔵 direction

```css
direction: ltr;
direction: rtl;
```

## 🔵 display

```css
display: none;

display: inline;
display: block;
display: inline-block;

display: flex;
display: grid;
```

## 🔵 font

+ Association de `font-family`, `font-size`, `font-style`, `font-variant` et `font-weight`.

```css
font: italic small-caps bold 20px 20px Tahoma;
```

## 🔵 font-family

```css
font-family: cursive;
font-family: monospace;
font-family: sans-serif;

font-family: Arial, sans-serif;
font-family: 'Open Sans', Arial, sans-serif;
```

## 🔵 font-size

```css
font-size: xx-small;
font-size: x-small;
font-size: small;
font-size: medium;
font-size: large;
font-size: x-large;
font-size: xx-large;

font-size: larger;
font-size: smaller;

font-size: 14px;
font-size: 75%;
font-size: 1.5rem;
```

## 🔵 font-style

```css
font-style: italic;
```

## 🔵 font-variant

```css
font-variant: small-caps;
```

## 🔵 font-weight

```css
font-weight: normal;

font-weight: lighter;
font-weight: bold;
font-weight: bolder;

font-weight: 400;
font-weight: 600;
font-weight: 800;
```

## 🔵 height

```css
height: auto;
height: 50px;
height: 75%;
width: 8em;
```

## 🔵 letter-spacing

```css
letter-spacing: 4px;
letter-spacing: 1.2em;
```

## 🔵 line-height

```css
line-height: 16px;
line-height: 160%;
line-height: 2em;
```

## 🔵 list-style

+ Association de `list-style-image`, `list-style-position` et `list-style-type`.

```css
list-style: none;
list-style: disc;
list-style: url(puce.png) outside;
```

## 🔵 list-style-image

```css
list-style-image: url(puce.png);
list-style-image: linear-gradient(#FFF, #000);
```

## 🔵 list-style-position

```css
list-style-position: inside;
list-style-position: outside;
```

## 🔵 list-style-type

```css
list-style-type: circle;
list-style-type: decimal;
list-style-type: disc;
list-style-type: georgian;
list-style-type: square;
```

## 🔵 margin

+ Association de `margin-top`, `margin-right`, `margin-bottom` et `margin-left`.

```css
margin: auto;
margin: 15px auto;
margin: 25px 5px 10px 5px;
margin: 0;
```

## 🔵 margin-bottom

```css
margin-bottom: auto;
margin-bottom: 16px;
margin-bottom: 4em;
margin-bottom: 25%;
margin-bottom: 0;
```

## 🔵 margin-left

```css
margin-left: auto;
margin-left: 16px;
margin-left: 4em;
margin-left: 25%;
margin-left: 0;
```

## 🔵 margin-right

```css
margin-right: auto;
margin-right: 16px;
margin-right: 4em;
margin-right: 25%;
margin-right: 0;
```

## 🔵 margin-top

```css
margin-top: auto;
margin-top: 16px;
margin-top: 4em;
margin-top: 25%;
margin-top: 0;
```

## 🔵 max-height

```css
max-height: auto;
max-height: 50px;
max-height: 75%;
max-height: 8em;
```

## 🔵 max-width

```css
max-width: auto;
max-width: 1200px;
max-width: 100%;
max-width: 16em;
```

## 🔵 min-height

```css
min-height: auto;
min-height: 20px;
min-height: 45%;
min-height: 4em;
```

## 🔵 min-width

```css
min-width: auto;
min-width: 600px;
min-width: 50%;
min-width: 8em;
```

## 🔵 overflow

```css
overflow: auto;
overflow: clip;
overflow: hidden;
overflow: scroll;
overflow: visible;
```

## 🔵 overflow-x

```css
overflow-x: auto;
overflow-x: clip;
overflow-x: hidden;
overflow-x: scroll;
overflow-x: visible;
```

## 🔵 overflow-y

```css
overflow-y: auto;
overflow-y: clip;
overflow-y: hidden;
overflow-y: scroll;
overflow-y: visible;
```

## 🔵 padding

+ Association de `padding-top`, `padding-right`, `padding-bottom` et `padding-left`.

```css
padding: auto;
padding: 15px auto;
padding: 25px 5px 10px 5px;
padding: 0;
```

## 🔵 padding-bottom

```css
padding-bottom: auto;
padding-bottom: 16px;
padding-bottom: 4em;
padding-bottom: 25%;
padding-bottom: 0;
```

## 🔵 padding-left

```css
padding-left: auto;
padding-left: 16px;
padding-left: 4em;
padding-left: 25%;
padding-left: 0;
```

## 🔵 padding-right

```css
padding-right: auto;
padding-right: 16px;
padding-right: 4em;
padding-right: 25%;
padding-right: 0;
```

## 🔵 padding-top

```css
padding-top: auto;
padding-top: 16px;
padding-top: 4em;
padding-top: 25%;
padding-top: 0;
```

## 🔵 text-align

```css
text-align: left;
text-align: right;

text-align: center;
text-align: justify;

text-align: start;
text-align: end;
```

## 🔵 text-decoration

+ Association de `text-decoration-color`, `text-decoration-line` et `text-decoration-style`.

```css
text-decoration: underline;
text-decoration: wavy #FF00AA;
text-decoration: overline dotted;
```

## 🔵 text-decoration-color

```css
text-decoration-color: red;
text-decoration-color: #FF0000;
text-decoration-color: rgb(255, 0, 0);
```

## 🔵 text-decoration-line

```css
text-decoration-line: underline;
text-decoration-line: overline;
text-decoration-line: line-through;
```

## 🔵 text-decoration-style

```css
text-decoration-style: dashed;
text-decoration-style: dotted;
text-decoration-style: solid;
text-decoration-style: wavy;
```

## 🔵 text-indent

```css
text-indent: 15%;
text-indent: 2em;
```

## 🔵 text-justify

```css
text-justify: auto;
text-justify: inter-character;
text-justify: inter-word;
```

## 🔵 text-overflow

```css
text-overflow: clip;
text-overflow: ellipsis;
text-overflow: fade;
text-overflow: "-";
```

## 🔵 text-shadow

```css
text-shadow: 2px 2px 5px #DDD;
```

## 🔵 text-transform

```css
text-transform: capitalize;
text-transform: uppercase;
text-transform: lowercase;
```

## 🔵 vertical-align

```css
vertical-align: baseline;
vertical-align: text-top;
vertical-align: top;
vertical-align: middle;
vertical-align: bottom;
vertical-align: text-bottom;

vertical-align: 8px;
vertical-align: 20%;
vertical-align: 2.5em;
```

## 🔵 white-space

```css
white-space: normal;
white-space: nowrap;
white-space: pre;
white-space: break-spaces;
```

## 🔵 width

```css
width: auto;
width: 1200px;
width: 100%;
width: 16em;
```

## 🔵 word-break

```css
word-break: normal;
word-break: break-all;
word-break: keep-all;
```

## 🔵 word-spacing

```css
word-spacing: 15px;
word-spacing: 35%;
word-spacing: 0.5em;
```
