# Math

`glib:math/` : Les fonctions "Math", comme leur nom l'indique, servent à faire des maths. Avant que vous ne partiez en courant en vous remémorant vos cours indigestes et incompréhensibles que vous avez subit à l'école, sachez qu'ici, vous n'aurez rien besoin de calculer (en fait, c'est le but de la lib de vous simplifier la vie). Néanmoins, les fonctions de math qui suivent sont théoriques, mais c'est aussi sur elles que reposent la majorité des autres systèmes. Si vous ne voyez pas de quoi je veux parler, dites vous qu'avec cette lib, il est facile de créer (entre autres) un raycasting (= lancement de projectiles selon l'orientation d'un joueur). Ce système repose essentiellement sur de la trigonométrie. Mais encore une fois, rien de compliqué, tout est déjà fait ;)

## Algebra


`glib:math/algebra` : ce dossier permet d'effectuer des opérations d'algèbre

**Rotation de base**

`basis_rotation_3d` : Permet d'obtenir l'équivalent du vecteur passé en paramètre dans une base ayant une orientation différente. Utile pour convertir une position absolue/relative en position locale pour une entité donnée.

* Prend en paramètre les scores `glib.var[0,1,2]` correspondant aux compostantes X, Y et Z du vecteur dans la base de départ
 * Prend en paramètre les scores `glib.var[3,4]` correspondant à la différence d'orientation des bases, respectivement horizontale (Phi) et verticale (Theta) 
 * Retourne les composantes X', Y' et Z' respectivement sur les scores `glib.res[0,1,2]`

*Exemples :*

Un bloc se trouve en \~2 \~5 \~10 par rapport moi, je souhaite avoir cette position en coordonnée locale (^? ^? ^?)
```
## Un fois

## Coordonnées relatives (on multiplie par 1000 pour avoir plus de précision sur le résultat, qui sera lui aussi multiplié par 1000)
scoreboard players set @s glib.var0 2000
scoreboard players set @s glib.var1 5000
scoreboard players set @s glib.var2 10000

##Différence entre mon orientation (= celle de la grille de coonrdonnées ^X ^Y ^Z) et l'orientation de la grille des blocs de Minecraft (~X ~Y ~Z)
function glib:orientation/get
scoreboard players operation @s glib.var3 = @s glib.oriH
scoreboard players operation @s glib.var4 = @s glib.oriV

## Effectuer la rotation de base
function glib:math/basis_rotation_3d

## Voir le résultat
tellraw @a [{"text":"X = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"},{"text":", Y = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]
```

Je souhaite avoir un vecteur dirigé vers là où je regarde, mais en coordonnées relatives \~X \~Y \~Z (aussi appelé vecteur "classique" dans cette bibliothèque)
```
## Une fois

## Récupération d'un vecteur ^ ^ ^1 correspondant à un vecteur dirigé selon l'orientation de l'entité (on multiplie par 1000 pour avoir plus de précision sur le résultat, qui sera lui aussi multiplié par 1000)
scoreboard players set @s glib.var0 0
scoreboard players set @s glib.var1 0
scoreboard players set @s glib.var2 1000

## Récupération de l'orientation
function glib:orientation/get
scoreboard players operation @s glib.var3 = @s glib.oriH
scoreboard players operation @s glib.var4 = @s glib.oriV

## Inversement de l'orientation étant donné qu'on cherche à avoir l'orientation relative de la grille du jeu par rapport à l'orientation du joueur (contrairement à l'exempl précédent)
scoreboard players operation @s glib.var3 *= -1 glib.const
scoreboard players operation @s glib.var4 *= -1 glib.const

## Effectuer la rotation de base
function glib:math/basis_rotation_3d

## Voir le résultat
tellraw @a [{"text":"X = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"},{"text":", Y = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]
```

## Bitwise


`glib:math/bitwise `: Ce dossier contient divers opérateurs bit à bit à appliquer sur des scores.

**ET logique**

`and` : Calcule la conjonction bit à bit des deux nombres en entrée

* Prend en paramètre les scores `glib.var0` et `glib.var1`
* Retourne la valeur de l'opération `glib.var0 & glib.var1` sur le score `glib.res0`
* Si l'une des entrées est négative, l'opération se fera entre la première opérande et le complement à deux de la seconde

*Exemple :*

Caluler et afficher `-9 & 57`
```
## Une fois
scoreboard players set @s glib.var0 -9
scoreboard players set @s glib.var1 57
function glib:math/bitwise/and
tellraw @a [{"text":"-9 & 57 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Récupérer le nombre de bits**

`get_number_of_bits` : Calcule le nombre de bits nécessaires au stockage de l'entrée

* Prend en paramètre le score `glib.var0`
* Retourne le nombre de bits nécessaires au stockage de l'entrée
* Si L'entrée est négative, retourne le nombre de bit nécessaire au stockage de la valeur absolue du nombre

*Exemple :*

Caluler et afficher le nombre de bits de 12
```
## Une fois
scoreboard players set @s glib.var0 12
function glib:math/bitwise/get_number_of_bits
tellraw @a [{"text":"Nombre de bits de 12 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**NON logique**

`not` : Calcule la négation bit à bit de l'entrée

* Prend en paramètre le score `glib.var0`
* Retourne la valeur de l'opération `~glib.var0` sur le score `glib.res0`

*Exemple :*

Caluler et afficher `~452`
```
## Une fois
scoreboard players set @s glib.var0 452
function glib:math/bitwise/not
tellraw @a [{"text":"~452 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**OU logique**

`or` : Calcule la disjonction bit à bit des deux nombres en entrée

* Prend en paramètre les scores `glib.var0` et `glib.var1`
* Retourne la valeur de l'opération `glib.var0 | glib.var1` sur le score `glib.res0`
* Si l'une des entrées est négative, l'opération se fera entre la première opérande et le complement à deux de la seconde

*Exemple :*

Caluler et afficher `-9 | 57`
```
## Une fois
scoreboard players set @s glib.var0 -9
scoreboard players set @s glib.var1 57
function glib:math/bitwise/or
tellraw @a [{"text":"-9 | 57 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Complément à 2**

`two_complement` : Calcule le complément à deux de l'entrée

* Prend en paramètre le score `glib.var0`
* Retourne le complément à deux de `glib.var0` sur le score `glib.res0`

*Exemple :*

Caluler et afficher le complément à deux de 12
```
## Une fois
scoreboard players set @s glib.var0 12
function glib:math/bitwise/two_complement
tellraw @a [{"text":"Complément à deux de 12 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**OU exclusif**

`xor` : Calcule la disjonction exclusive bit à bit des deux nombres en entrée

* Prend en paramètre les scores `glib.var0` et `glib.var1`
* Retourne la valeur de l'opération `glib.var0 ^ glib.var1` sur le score `glib.res0`
* Si l'une des entrées est négative, l'opération se fera entre la première opérande et le complement à deux de la seconde

*Exemple :*

Caluler et afficher `-9 ^ 57`
```
## Une fois
scoreboard players set @s glib.var0 -9
scoreboard players set @s glib.var1 57
function glib:math/bitwise/xor
tellraw @a [{"text":"-9 ^ 57 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

## Common

`glib:math/common/` : ce dossier contient les fonctions mathématiques usuelles

**Division arrondie**

`divide` : Permet de diviser un nombre par un autre en arrondissant le résultat au nombre entier le plus proche (là où Minecraft arrondit au nombre entier directement inféreieur).

* Prend en entrée les scores `glib.var0` et `glib.var1`
* Retourne le résultat sur le score `glib.res0`

*Exemple:*

Caluler 9 / 5:
```
## Une fois
scoreboard players set @s glib.var0 9
scoreboard players set @s glib.var1 5
function glib:math/divide
tellraw @a [{"text":"9 / 5 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Exponentielle**

`exp` : Calcul l'exponentiel du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`

* Afin de prendre en compte un certain nombres de décimales, `glib.var0` doit etre multiplié par 100 et `glib.res0` est multiplié par 1000
* Du à des contraintes techniques, ce système est limité à un <samp>glib.var0</samp> compris dans un intervalle de \[-600,1200\] (soit \[-6;12\] en valeur réelle)

*Exemple :*

Caluler exp(3):
```
## Une fois
scoreboard players set @s glib.var0 300
function glib:math/exp
tellraw @a [{"text":"exp(3)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Factoriel**

`factorial` : Calcul le factoriel du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`

*Exemple :*

Caluler 3!
```
## Une fois
scoreboard players set @s glib.var0 3
function glib:math/factorial
tellraw @a [{"text":"3! = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Plus grand commun dénominateur**

`gcd` : Calcul le plus grand dénominateur commun des deux nombres passés en paramètre sur les scores `glib.var0` et `glib.var1` puis renvois le résultat sur le score `glib.res0`

*Exemple :*

Caluler le plus grand dénominateur commun entre 16 et 12 :
```
## Une fois
scoreboard players set @s glib.var0 16
scoreboard players set @s glib.var1 12
function glib:math/gcd
tellraw @a [{"text":"gcd(16,12) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Logarithme néperien**

`log` : Calcul le logarithme néperien (base e) du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`

* Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales

*Exemple :*

Calculer ln(28):
```
## Une fois
scoreboard players set @s glib.var0 28000
function glib:math/log
tellraw @a [{"text":"ln(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Logarithme en base 2**

`log2` : Calcul le logarithme en base 2 du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`

* Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales

*Exemple :*

Calculer log2(28):
```
## Une fois
scoreboard players set @s glib.var0 28000
function glib:math/log2
tellraw @a [{"text":"log2(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Logarithme en base 10**

`log10` : Calcul le logarithme en base 10 du nombre passé en paramètre sur le score `glib.var0` et renvois le résultat sur le score `glib.res0`

* Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales

*Exemple :*

Calculer log10(28):
```
## Une fois
scoreboard players set @s glib.var0 28000
function glib:math/log10
tellraw @a [{"text":"log10(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Logarithme en base a**

`loga` : Calcul le logarithm du nombre passé en paramètre sur le score `glib.var0` en utilisant comem base le nom passé en paramètre sur le score `glib.var1` et renvois le résultat sur le score `glib.res0`

* Par soucis de précision, les paramètres de la focntion ainsi que la valeur retournée sont multipliés par 1000 afin d'y stocker 3 décimales

*​​​​Exemple :*

Calculer log4(28):
```
## Une fois
scoreboard players set @s glib.var0 28000
scoreboard players set @s glib.var1 4
function glib:math/loga
tellraw @a [{"text":"log4(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Puissance**

`pow` : Calcul le produit du nombre passé en paramètre sur le score `glib.var0` élevé à la puissant du nombre passé en paramètre sur le score `glib.var1`, puis renvois le résultat sur le score `glib.res0`

*​​​​Exemple :*

Calculer 2^6:
```
## Une fois
scoreboard players set @s glib.var0 2
scoreboard players set @s glib.var1 6
function glib:math/pow
tellraw @a [{"text":"2^6 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Racine carrée**

`sqrt` : Calcul la racine carrée (Square Root) du nombre (ex: Sqrt(16) = 4 car 4^2 = 4x4 = 16) 

* Prend en paramètre le score `glib.var0` supérieur ou égal à 0 (correspondant à une valeur avec une précision de 1:1)
* Retourne la valeur de le cosinus sur le score `glib.res0` supérieur ou égal à 0 (correspondant à une valeur avec une précision de 1:1)

*Exemple:*

Caluler et afficher la racine carrée de 42:
```
## Une fois
scoreboard players set @s glib.var0 42
function glib:math/sqrt
tellraw @a [{"text":"sqrt(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

## Special

`glib:math/special/` : ce dossier contient des fonctions qui ont un intérêt particulier dans les algortihms (mais pas ou peu dans les mathématiques formelles)

**Récupérer la prochaine puissance de 2**

`get_next_pow2` : Calcul la puissance de 2 directement supérieur au nombre donné en paramètre sur le score `glib.var0` et renvois le résultat sur `glib.res0`

*Exemple :*

Trouver la puissance de 2 supérieur à 43
```
## Une fois
scoreboard players set @s glib.var0 43
function glib:math/get_next_pow2
tellraw @a [{"text":"get_next_pow2(43) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Générateur de nombre aléatoire**

`random` : Génère un nombre aléatoire et renvois le résultat sur le score `glib.res0`

* Pour réduire cet interval, executez la fonction puis faites une opération "modulo" sur le résultat (random % 10 -> le nombre random sera compris dans l'interval \[0;9\])

*Exemple :*

Obtenir et afficher un nombre aléatoire entre 0 et 100:
```
## Une fois
function glib:math/random
scoreboard players operation @s glib.res0 %= 101 glib.const
tellraw @a [{"text":"random() = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```
> Attention: le score `glib.const` ne contient pas toutes les valeurs possibles. Assurez vous que la valeur que vous souahitez utiliser existe et initialisez là si necessaire.

## Trig

`glib:math/trig/` : ce dossier contient les fonctions de trigonométrie basique, ouvrant énormément de portes sur les possibilités de création dans Minecraft.

**Arccosinus**

`arccos` : Calcul l'arccosinus d'une valeur comprise entre -1 et 1

* Prend en paramètre le score `glib.var0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1/1000)
* Retourne la valeur de l'arccosinus sur le score `glib.res0` (correspondant à un angle avec une précision de 1:1 degré)

*Exemple :*

Caluler et afficher l'arccos de 0,42
```
## Une fois
scoreboard players set @s glib.var0 420
function glib:math/arccos
tellraw @a [{"text":"arccos(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Arcsinus**

`arcsin` : Calcul l'arcsinus d'une valeur comprise entre -1 et 1

* Prend en paramètre le score `glib.var0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1/1000)
* Retourne la valeur de l'arcsinus sur le score `glib.res0` (correspondant à un angle avec une précision de 1:1 degré)

*Exemple :*

Caluler et afficher l'arcsin de 0,42
```
## Une fois
scoreboard players set @s glib.var0 420
function glib:math/arcsin
tellraw @a [{"text":"arcsin(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Arctangente**

`arctan` : Calcul l'arctangeante d'une valeur comprise entre -infini et +infini

* Prend en paramètre le score `glib.var0` (traduisant une valeur avec une précision à 1:1000)
* Retourne la valeur de l'arctangeante sur le score `glib.res0` (correspondant à un angle avec une précision de 1:1 degré)

*Exemple:*

Caluler et afficher l'arctan de 0,42
```
## Une fois
scoreboard players set @s glib.var0 420
function glib:math/arctan
tellraw @a [{"text":"arctan(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Cosinus**

`cos` : Calcul le cosinus d'un angle compris entre 0 et 360

* Prend en paramètre le score `glib.var0` compris entre 0 et 360 (correspondant à un angle avec une précision de 1:1 degré)
* Retourne la valeur de le cosinus sur le score `glib.res0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1:1000)

*Exemple :*

Caluler et afficher le cosinus de 42
```
## Une fois
scoreboard players set @s glib.var0 42
function glib:math/cos
tellraw @a [{"text":"cos(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

**Sinus**

`sin` : Calcul le sinus d'un angle compris entre 0 et 360

* Prend en paramètre le score `glib.var0` compris entre 0 et 360 (correspondant à un angle avec une précision de 1:1 degré)
* Retourne la valeur de le sinus sur le score `glib.res0` compris entre -1000 et 1000 (traduisant une valeur de -1 à 1 avec une précision à 1:1000)

*Exemple :*

Caluler et afficher le sinus de 42
```
## Une fois
scoreboard players set @s glib.var0 42
function glib:math/sin
tellraw @a [{"text":"sin(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

`tan` : Calcul la tangeante d'un angle compris entre 0 et 360

* Prend en paramètre le score `glib.var0` compris entre 0 et 360 (correspondant à un angle avec une précision de 1:1 degré)
* Retourne la valeur de la tangeante sur le score `glib.res0` compris entre -infini et +infini (traduisant une valeur avec une précision à 1:1000)

*Exemple :*

Caluler et afficher la tengeante de 42
```
## Une fois
scoreboard players set @s glib.var0 42
function glib:math/tan
tellraw @a [{"text":"tan(42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```