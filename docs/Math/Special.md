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