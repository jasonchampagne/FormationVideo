# Propriétés CSS

🔗 [Référence CSS](https://developer.mozilla.org/fr/docs/Web/CSS/Reference)

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
width: 1200px;
width: 100%;
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
