# **Math**

`glib:math/` : Les fonctions "Math", comme leur nom l'indique, servent à faire des maths. Avant que vous ne partiez en courant en vous remémorant vos cours indigestes et incompréhensibles que vous avez subit à l'école, sachez qu'ici, vous n'aurez rien besoin de calculer (en fait, c'est le but de la lib de vous simplifier la vie). Néanmoins, les fonctions de math qui suivent sont théoriques, mais c'est aussi sur elles que reposent la majorité des autres systèmes. Si vous ne voyez pas de quoi je veux parler, dites vous qu'avec cette lib, il est facile de créer (entre autres) un raycasting (= lancement de projectiles selon l'orientation d'un joueur). Ce système repose essentiellement sur de la trigonométrie. Mais encore une fois, rien de compliqué, tout est déjà fait ;)

* [Algebra](Algebra.md)
* [Bitwise](Bitwise.md)
* [Common](Common.md)
* [Special](Special.md)
* [Trig](Trig.md)

## **Common**

`glib:math/common/` : ce dossier contient les fonctions mathématiques usuelles

* `divide` : Permet de diviser un nombre par un autre en arrondissant le résultat au nombre entier le plus proche (là où Minecraft arrondit au nombre entier directement inféreieur).
  * Prend en entrée les scores `glib.var0` et `glib.var1`
  * Retourne le résultat sur le score `glib.res0`
  * Exemple:

Caluler 9 / 5:

```
# Une fois
scoreboard players set @s glib.var0 9
scoreboard players set @s glib.var1 5
function glib:math/divide
tellraw @a [{"text":"9 / 5 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `exp` : Calcul l'exponentiel du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`
  * Afin de prendre en compte un certain nombres de décimales, `glib.var0` doit etre multiplié par 100 et `glib.res0` est multiplié par 1000
  * Du à des contraintes techniques, ce système est limité à un <samp>glib.var0</samp> compris dans un intervalle de \[-600,1200\] (soit \[-6;12\] en valeur réelle)
  * Exemple:

Caluler exp(3):

```
# Une fois
scoreboard players set @s glib.var0 300
function glib:math/exp
tellraw @a [{"text":"exp(3)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `factorial` : Calcul le factoriel du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`
  * Exemple

Caluler 3! :

```
# Une fois
scoreboard players set @s glib.var0 3
function glib:math/factorial
tellraw @a [{"text":"3! = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `gcd` : Calcul le plus grand dénominateur commun des deux nombres passés en paramètre sur les scores `glib.var0` et `glib.var1` puis renvois le résultat sur le score `glib.res0`
  * Exemple

Caluler le plus grand dénominateur commun entre 16 et 12 :

```
# Une fois
scoreboard players set @s glib.var0 16
scoreboard players set @s glib.var1 12
function glib:math/gcd
tellraw @a [{"text":"gcd(16,12) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

```

* `log` : Calcul le logarithme néperien (base e) du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`
  * Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales
  * Exemple

Calculer ln(28):

```
# Une fois
scoreboard players set @s glib.var0 28000
function glib:math/log
tellraw @a [{"text":"ln(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `log2` : Calcul le logarithme en base 2 du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`
  * Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales
  * Exemple

Calculer log2(28):

```
# Une fois
scoreboard players set @s glib.var0 28000
function glib:math/log2
tellraw @a [{"text":"log2(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `log10` : Calcul le logarithme en base 10 du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`
  * Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales
  * Exemple

Calculer log10(28):

```
# Une fois
scoreboard players set @s glib.var0 28000
function glib:math/log10
tellraw @a [{"text":"log10(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `loga` : Calcul le logarithm du nombre passé en paramètre sur le score `glib.var0` en utilisant comem base le nom passé en paramètre sur le score `glib.var1` et renvois le résultat sur le score `glib.res0`
  * Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales
  * ​​​​Exemple

Calculer log4(28):

```
# Une fois
scoreboard players set @s glib.var0 28000
scoreboard players set @s glib.var1 4
function glib:math/loga
tellraw @a [{"text":"log4(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `pow` : Calcul le produit du nombre passé en paramètre sur le score `glib.var0` élevé à la puissant du nombre passé en paramètre sur le score `glib.var1`, puis renvois le résultat sur le score `glib.res0`
  * ​​​​Exemple

Calculer 2^6:

```
# Une fois
scoreboard players set @s glib.var0 2
scoreboard players set @s glib.var1 6
function glib:math/pow
tellraw @a [{"text":"2^6 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `sqrt` : Calcul la racine carrée (Square Root) du nombre (ex: Sqrt(16) = 4 car 4^2 = 4x4 = 16) 
  * Prend en paramètre le score `glib.var0` supérieur ou égal à 0 (correspondant à une valeur avec une précision de 1:1)
  * Retourne la valeur de le cosinus sur le score `glib.res0` supérieur ou égal à 0 (correspondant à une valeur avec une précision de 1:1)
  * Exemple:

Caluler et afficher la racine carrée de 42:

```
# Une fois
scoreboard players set @s glib.var0 42
function glib:math/sqrt
tellraw @a [{"text":"sqrt(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```