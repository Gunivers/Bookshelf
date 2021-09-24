# Vector

`glib:vector/` : Les vecteurs servent à définir la trajectoire d'une entité. Ainsi, ils permettent de gérer des projectiles facilement, en offrant la possibilité de faire subir des collision, d'imiter la gravité, le vent etc ... Ils sont toujours difinits avec un facteur 10^3 (1000 = 1 bloc/tick).

## Classic

`glib:vector/classic/` :  Les vecteurs classiques sont des vecteurs qui utilisent la base par défaut du jeu, correspondant aux tilds (\~). Ainsi, un vecteur position classique (1000,3000,5000) correspondra à la position \~1 \~3 \~5

* `get_by_actual_orientation` : Calcul le vecteur de déplacement de l'entité selon son orientation. Ce vecteur est composée de 3 vecteurs élémentaires stockés sur les scores `glib.vector[X,Y,Z]` (compris chacun entre -1000 et 1000).
  * Exemple:

Créer, pour chaque Creeper, un vecteur à partir de leur orientation respective

```
# Une fois
execute as @e[type=creeper] run function glib:vector/classic/get_by_actual_orientation
```

* `get_ata` : Calcul un vecteur allant de l'entité source à la position d'execution de la fonction.
  * Exemple

Créer un vecteur qui vous relie au squelette le plus proche:

```
# Une fois
execute as @s at @e[type=skeleton] run function glib:vector/classic/get_ata
```

* `get_lenght` : calcul la norme du vecteur et la stock sur le score `glib.res0`
  * ATTENTION: Cette fonction faisant appel à la fonction sqrt, il n'est pas recommandé, par soucis de performances, de l'utiliser fréquemment.
* `get_lenght_squared` : calcul la norme du vecteur au carré et la stock sur le score `glib.res0`
* `fast_normalize` : Permet de normaliser les composantes du vecteur en placant la plus grande composante à 1000 tout en respectantl es proportions liant ces composantes.
  * ATTENTION: Dans un soucis d'optimisation et pour éviter de faire des calculs de racine carrée, cette fonction réduit le vecteur au sein d'un cube de 2 blocs de coté centré sur l'entité (au lieu d'une sphère de rayon 1 centrée sur l'entité)

  ## Local

`glib:vector/local/` :  Les vecteurs locaux sont des vecteurs qui utilisent la base définie selon l'orientation de l'entité, correspondant aux puissances (^). Ainsi, un vecteur position en local (1000,3000,5000) correspondra à la position ^1 ^3 ^5

* `get_from_classic_vector` : Permet de convertir un vecteur "normal" (utilisant le référentiel relatif) en coordonnées locales (utilisant le référentiel local)
  * Prend les 3 scores `glib.vector[X,Y,Z]` en entrée
  * Stock le résultat sur les 3 scores `glib.vector[Left,Up,Front]`
  * Exemple

Trouver le vecteur local correspondant au vecteur X=1000, Y=0, Z=0

```
# Une fois
scoreboard players set @s glib.vectorX 1000
scoreboard players set @s glib.vectorY 0
scoreboard players set @s glib.vectorZ 0
function glib:vector/get_from_classic_vector

# Afficher le résultat
tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" VectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.vectorLeft"},"color":"gold"},{"text":" VectorUp: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.vectorUp"},"color":"gold"},{"text":" VectorFront: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.vectorFront"},"color":"gold"}]
```