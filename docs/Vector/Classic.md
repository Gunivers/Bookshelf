## **Classic**

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