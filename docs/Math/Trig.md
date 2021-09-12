## **Trig**

`glib:math/trig/` : ce dossier contient les fonctions de trigonométrie basique, ouvrant énormément de portes sur les possibilités de création dans Minecraft.

* `arccos` : Calcul l'arccosinus d'une valeur comprise entre -1 et 1
  * Prend en paramètre le score `glib.var0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1/1000)
  * Retourne la valeur de l'arccosinus sur le score `glib.res0` (correspondant à un angle avec une précision de 1:1 degré)
  * Exemple:

Caluler et afficher l'arccos de 0,42:

```
# Une fois
scoreboard players set @s glib.var0 420
function glib:math/arccos
tellraw @a [{"text":"arccos(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `arcsin` : Calcul l'arcsinus d'une valeur comprise entre -1 et 1
  * Prend en paramètre le score `glib.var0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1/1000)
  * Retourne la valeur de l'arcsinus sur le score `glib.res0` (correspondant à un angle avec une précision de 1:1 degré)
  * Exemple:

Caluler et afficher l'arcsin de 0,42:

```
# Une fois
scoreboard players set @s glib.var0 420
function glib:math/arcsin
tellraw @a [{"text":"arcsin(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `arctan` : Calcul l'arctangeante d'une valeur comprise entre -infini et +infini
  * Prend en paramètre le score `glib.var0` (traduisant une valeur avec une précision à 1:1000)
  * Retourne la valeur de l'arctangeante sur le score `glib.res0` (correspondant à un angle avec une précision de 1:1 degré)
  * Exemple:

Caluler et afficher l'arctan de 0,42:

```
# Une fois
scoreboard players set @s glib.var0 420
function glib:math/arctan
tellraw @a [{"text":"arctan(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `cos` : Calcul le cosinus d'un angle compris entre 0 et 360
  * Prend en paramètre le score `glib.var0` compris entre 0 et 360 (correspondant à un angle avec une précision de 1:1 degré)
  * Retourne la valeur de le cosinus sur le score `glib.res0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1:1000)
  * Exemple:

Caluler et afficher le cosinus de 42:

```
# Une fois
scoreboard players set @s glib.var0 42
function glib:math/cos
tellraw @a [{"text":"cos(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `sin` : Calcul le sinus d'un angle compris entre 0 et 360
  * Prend en paramètre le score `glib.var0` compris entre 0 et 360 (correspondant à un angle avec une précision de 1:1 degré)
  * Retourne la valeur de le sinus sur le score `glib.res0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1:1000)
  * Exemple:

Caluler et afficher le sinus de 42:

```
# Une fois
scoreboard players set @s glib.var0 42
function glib:math/sin
tellraw @a [{"text":"sin(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `tan` : Calcul la tangeante d'un angle compris entre 0 et 360
  * Prend en paramètre le score `glib.var0` compris entre 0 et 360 (correspondant à un angle avec une précision de 1:1 degré)
  * Retourne la valeur de la tangeante sur le score `glib.res0` compris entre -infini et +infini (traduisant une valeur avec une précision à 1:1000)
  * Exemple:

Caluler et afficher la tengeante de 42:

```
# Une fois
scoreboard players set @s glib.var0 42
function glib:math/tan
tellraw @a [{"text":"tan(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```