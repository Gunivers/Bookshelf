## **Local**

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