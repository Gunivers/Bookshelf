# **Math**

`glib:math/` : Les fonctions "Math", comme leur nom l'indique, servent à faire des maths. Avant que vous ne partiez en courant en vous remémorant vos cours indigestes et incompréhensibles que vous avez subit à l'école, sachez qu'ici, vous n'aurez rien besoin de calculer (en fait, c'est le but de la lib de vous simplifier la vie). Néanmoins, les fonctions de math qui suivent sont théoriques, mais c'est aussi sur elles que reposent la majorité des autres systèmes. Si vous ne voyez pas de quoi je veux parler, dites vous qu'avec cette lib, il est facile de créer (entre autres) un raycasting (= lancement de projectiles selon l'orientation d'un joueur). Ce système repose essentiellement sur de la trigonométrie. Mais encore une fois, rien de compliqué, tout est déjà fait ;)

## **Bitwise**

`glib:math/bitwise `: Ce dossier contient divers opérateurs bit à bit à appliquer sur des scores.

* `and` : Calcule la conjonction bit à bit des deux nombres en entrée
  * Prend en paramètre les scores `glib.var0` et `glib.var1`
  * Retourne la valeur de l'opération `glib.var0 & glib.var1` sur le score `glib.res0`
  * Si l'une des entrées est négative, l'opération se fera entre la première opérande et le complement à deux de la seconde
  * Exemple :

Caluler et afficher `-9 & 57`

```
# Une fois
scoreboard players set @s glib.var0 -9
scoreboard players set @s glib.var1 57
function glib:math/bitwise/and
tellraw @a [{"text":"-9 & 57 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `get_number_of_bits` : Calcule le nombre de bits nécessaires au stockage de l'entrée
  * Prend en paramètre le score `glib.var0`
  * Retourne le nombre de bits nécessaires au stockage de l'entrée
  * Si L'entrée est négative, retourne le nombre de bit nécessaire au stockage de la valeur absolue du nombre
  * Exemple :

Caluler et afficher le nombre de bits de 12

```
# Une fois
scoreboard players set @s glib.var0 12
function glib:math/bitwise/get_number_of_bits
tellraw @a [{"text":"Nombre de bits de 12 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `not` : Calcule la négation bit à bit de l'entrée
  * Prend en paramètre le score `glib.var0`
  * Retourne la valeur de l'opération `~glib.var0` sur le score `glib.res0`
  * Exemple :

Caluler et afficher `~452`

```
# Une fois
scoreboard players set @s glib.var0 452
function glib:math/bitwise/not
tellraw @a [{"text":"~452 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `or` : Calcule la disjonction bit à bit des deux nombres en entrée
  * Prend en paramètre les scores `glib.var0` et `glib.var1`
  * Retourne la valeur de l'opération `glib.var0 | glib.var1` sur le score `glib.res0`
  * Si l'une des entrées est négative, l'opération se fera entre la première opérande et le complement à deux de la seconde
  * Exemple :

Caluler et afficher `-9 | 57`

```
# Une fois
scoreboard players set @s glib.var0 -9
scoreboard players set @s glib.var1 57
function glib:math/bitwise/or
tellraw @a [{"text":"-9 | 57 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `two_complement` : Calcule le complément à deux de l'entrée
  * Prend en paramètre le score `glib.var0`
  * Retourne le complément à deux de `glib.var0` sur le score `glib.res0`
  * Exemple :

Caluler et afficher le complément à deux de 12

```
# Une fois
scoreboard players set @s glib.var0 12
function glib:math/bitwise/two_complement
tellraw @a [{"text":"Complément à deux de 12 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `xor` : Calcule la disjonction exclusive bit à bit des deux nombres en entrée
  * Prend en paramètre les scores `glib.var0` et `glib.var1`
  * Retourne la valeur de l'opération `glib.var0 ^ glib.var1` sur le score `glib.res0`
  * Si l'une des entrées est négative, l'opération se fera entre la première opérande et le complement à deux de la seconde
  * Exemple :

Caluler et afficher `-9 ^ 57`

```
# Une fois
scoreboard players set @s glib.var0 -9
scoreboard players set @s glib.var1 57
function glib:math/bitwise/xor
tellraw @a [{"text":"-9 ^ 57 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```