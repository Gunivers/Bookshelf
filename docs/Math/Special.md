# **Math**

`glib:math/` : Les fonctions "Math", comme leur nom l'indique, servent à faire des maths. Avant que vous ne partiez en courant en vous remémorant vos cours indigestes et incompréhensibles que vous avez subit à l'école, sachez qu'ici, vous n'aurez rien besoin de calculer (en fait, c'est le but de la lib de vous simplifier la vie). Néanmoins, les fonctions de math qui suivent sont théoriques, mais c'est aussi sur elles que reposent la majorité des autres systèmes. Si vous ne voyez pas de quoi je veux parler, dites vous qu'avec cette lib, il est facile de créer (entre autres) un raycasting (= lancement de projectiles selon l'orientation d'un joueur). Ce système repose essentiellement sur de la trigonométrie. Mais encore une fois, rien de compliqué, tout est déjà fait ;)

* [Algebra](Algebra.md)
* [Bitwise](Bitwise.md)
* [Common](Common.md)
* [Special](Special.md)
* [Trig](Trig.md)

## **Special**

`glib:math/special/` : ce dossier contient des fonctions qui ont un intérêt particulier dans les algortihms (mais pas ou peu dans les mathématiques formelles)

* `get_next_pow2` : Calcul la puissance de 2 directement supérieur au nombre donné en paramètre sur le score `glib.var0` et renvois le résultat sur `glib.res0`
  * Exemple

Trouver la puissance de 2 supérieur à 43 :

```
# Une fois
scoreboard players set @s glib.var0 43
function glib:math/get_next_pow2
tellraw @a [{"text":"get_next_pow2(43) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `random` : Génère un nombre aléatoire et renvois le résultat sur le score `glib.res0`
  * Pour réduire cet interval, executez la fonction puis faites une opération "modulo" sur le résultat (random % 10 -> le nombre random sera compris dans l'interval \[0;9\])
  * Exemple:

Obtenir et afficher un nombre aléatoire entre 0 et 100:

```
# Une fois
function glib:math/random
scoreboard players operation @s glib.res0 %= 101 glib.const
tellraw @a [{"text":"random() = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

```

Attention: le score `glib.const` ne contient pas toutes les valeurs possibles. Assurez vous que la valeur que vous souahitez utiliser existe et initialisez là si necessaire.