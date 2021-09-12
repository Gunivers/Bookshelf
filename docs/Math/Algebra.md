# **Math**

`glib:math/` : Les fonctions "Math", comme leur nom l'indique, servent à faire des maths. Avant que vous ne partiez en courant en vous remémorant vos cours indigestes et incompréhensibles que vous avez subit à l'école, sachez qu'ici, vous n'aurez rien besoin de calculer (en fait, c'est le but de la lib de vous simplifier la vie). Néanmoins, les fonctions de math qui suivent sont théoriques, mais c'est aussi sur elles que reposent la majorité des autres systèmes. Si vous ne voyez pas de quoi je veux parler, dites vous qu'avec cette lib, il est facile de créer (entre autres) un raycasting (= lancement de projectiles selon l'orientation d'un joueur). Ce système repose essentiellement sur de la trigonométrie. Mais encore une fois, rien de compliqué, tout est déjà fait ;)

## **Algebra**

`glib:math/algebra` : ce dossier permet d'effectuer des opérations d'algèbre

* `basis_rotation_3d` : Permet d'obtenir l'équivalent du vecteur passé en paramètre dans une base ayant une orientation différente. Utile pour convertir une position absolue/relative en position locale pour une entité donnée.
  * Prend en paramètre les scores `glib.var[0,1,2]` correspondant aux compostantes X, Y et Z du vecteur dans la base de départ
  * Prend en paramètre les scores `glib.var[3,4]` correspondant à la différence d'orientation des bases, respectivement horizontale (Phi) et verticale (Theta) 
  * Retourne les composantes X', Y' et Z' respectivement sur les scores `glib.res[0,1,2]`
  * Exemple:

Un bloc se trouve en \~2 \~5 \~10 par rapport moi, je souhaite avoir cette position en coordonnée locale (^? ^? ^?)

```
# Un fois

# Coordonnées relatives (on multiplie par 1000 pour avoir plus de précision sur le résultat, qui sera lui aussi multiplié par 1000)
scoreboard players set @s glib.var0 2000
scoreboard players set @s glib.var1 5000
scoreboard players set @s glib.var2 10000

#Différence entre mon orientation (= celle de la grille de coonrdonnées ^X ^Y ^Z) et l'orientation de la grille des blocs de Minecraft (~X ~Y ~Z)
function glib:orientation/get
scoreboard players operation @s glib.var3 = @s glib.oriH
scoreboard players operation @s glib.var4 = @s glib.oriV

# Effectuer la rotation de base
function glib:math/basis_rotation_3d

# Voir le résultat
tellraw @a [{"text":"X = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"},{"text":", Y = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]
```

Je souhaite avoir un vecteur dirigé vers là où je regarde, mais en coordonnées relatives \~X \~Y \~Z (aussi appelé vecteur "classique" dans cette bibliothèque)

```
# Une fois

# Récupération d'un vecteur ^ ^ ^1 correspondant à un vecteur dirigé selon l'orientation de l'entité (on multiplie par 1000 pour avoir plus de précision sur le résultat, qui sera lui aussi multiplié par 1000)
scoreboard players set @s glib.var0 0
scoreboard players set @s glib.var1 0
scoreboard players set @s glib.var2 1000

# Récupération de l'orientation
function glib:orientation/get
scoreboard players operation @s glib.var3 = @s glib.oriH
scoreboard players operation @s glib.var4 = @s glib.oriV

# Inversement de l'orientation étant donné qu'on cherche à avoir l'orientation relative de la grille du jeu par rapport à l'orientation du joueur (contrairement à l'exempl précédent)
scoreboard players operation @s glib.var3 *= -1 glib.const
scoreboard players operation @s glib.var4 *= -1 glib.const

# Effectuer la rotation de base
function glib:math/basis_rotation_3d

# Voir le résultat
tellraw @a [{"text":"X = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"},{"text":", Y = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]
```