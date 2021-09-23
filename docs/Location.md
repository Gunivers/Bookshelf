# **Location**

Les fonctions "Location" permettent de gérer la position des entités via des scores. Il est ainsi possible de détecter la position d'une entité ou bien de placer cette dernière à une position définie par un score.

* `add` : Additionne la position passée via les scores `glib.loc[X,Y,Z]` à celle où la commande à été executé, puis téléporte l'entité à cette nouvelle position.
  * Exemple :

Déplacer Aypierre de 3 blocs sur l'axe X, -2 sur l'axe Y et 5 sur l'ace Z

```
scoreboard players set Aypierre glib.locX 3
scoreboard players set Aypierre glib.locY -2
scoreboard players set Aypierre glib.locZ 5
execute as Aypierre at @s run function glib:location/add
```

* `fast_set`<span dir=""> : Modifie la position de l'entité exécutante pour la placer aux coordonnées X,Y et Z respectivement indiquées par les scores </span>`glib.loc[X,Y,Z]`<span dir="">. Pour l'utilisateur, cette fonction s'utilise de la même façon que la fonction </span>`set`<span dir=""> et produit les mêmes résultats. Les différences sont:</span>
  * Cette fonction passe par une succession de téléportations et non via la modification de NBT, ce qui la rend plus lourde à exécuter
  * Permet d'éviter le problème de latence d'affichage de la position des entités après les modifications de leur NBT (en particulier quand il y a un grand nombre d'entités).
  * Le système est limité à des positions présentes entre -32000 et +32000 sur chacun des axes.
  * Exemple:

Placer Boblennon à la coordonnée -5 63 26 (cas absurde car la position est hard-codé, donc un simple /tp suffirait, mais ici les scores peuvent être modifié contrairement aux paramètres d'une commande /tp)

```
scoreboard players set Boblennon glib.locX -5
scoreboard players set Boblennon glib.locY 63
scoreboard players set Boblennon glib.locZ 26
execute as Boblennon run function glib:location/fast_set
```

* `get` : Détecte la position de l'entité (coordonnées)
  * Stock les valeurs sur les scores `glib.loc[X,Y,Z]` avec une précision 1:1.
  * Exemple:

Detecter et afficher la position de l'araignée la plus proche:

```
# Une fois
execute as @e[type=spider,limit=1,sort=nearest] run function glib:location/get
tellraw @a [{"text":"X = ","color":"dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]","objective":"glib.locX"},"color":"gold"},{"text":", Y = ","color":"dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]","objective":"glib.locY"},"color":"gold"}{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]","objective":"glib.locZ"},"color":"gold"}]
```

* `get_distance_ata` : Calcul la distance séparant l'entité source de la position d’exécution de la fonction.
  * Le résultat est renvoyé sur le score `glib.res0`.
  * Attention, cette fonction fait appel à `get_distance_squared_ata`, sur laquelle elle applique l'opération math/sqrt. Elle est donc relativement lourde et est soumis à la même contrainte que `get_distance_squared_as_to_at` sur la taille des entiers.
  * Exemple:

Caluler la distance entre vous et le mouton le plus proche:

```
# Une fois
execute as @s at @e[type=sheep,limit=1,sort=nearest] run function glib:location/get_distance_ata
tellraw @a [{"text":"Distance : ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `get_distance_squared_ata` : Calcul la distance élevée au carré séparant l'entité source de la position d’exécution de la fonction.
  * Le résultat est renvoyé sur le score `glib.res0`.
  * Attention, la tailel des scores sur Minecraft représentent la taille d'une variable int en java. Cette dernière est immense, mais pas illimité. Or, les calculs faisant intervenir des puissance donnent des résultats pouvant très vite monter à des résultats dépassant les milliards, dépassant du même coup la limite de taille de la variable. Le jeu n'aura alors pas d'autre choix que de faire "boucler" la valeur (si vous dépassez la limite de 1, la variable passera en négatif).
  * Exemple:

Caluler la distance au carré entre vous et le mouton le plus proche:

```
# Une fois
execute as @s at @e[type=sheep,limit=1,sort=nearest] run function glib:location/get_distance_squared_ata
tellraw @a [{"text":"Distance^2 : ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
```

* `get_relative_ata` : Permet d'obtenir la position de l'entité source, relativement à la position d’exécution de la fonction.
  * Le résultat est ensuite placé sur les scores `glib.loc[X,Y,Z]`.
  * Exemple:

Obtenir votre position relativement au Creeper le plus proche:

```
# Une fois
execute as @s at @e[type=creeper,limit=1,sort=nearest] run function glib:location/get_relative_ata
tellraw @a [{"text":"Position relative : X=","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locX"},"color":"gold"},{"text":", Y=","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locY"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locZ"},"color":"gold"}]
```

* is_in_cave : Permet de savoir si l'endroit indiqué par la mosition d'execution de la fonction se situe dans une cave.
  * Stock le résultat sur glib.res0 (1 si dans une cave, 0 sinon)
  * Exemple

Savoir si les squelettes sont dans des caves ou non:

```
# Une fois
execute as @e[type=skeleton] at @s run function glib:location/is_in_cave

# Voir le résultat:
effect give @e[type=skeleton,scores={glib.res0=1}] glowing 1 1 true
```

* `set` : Permet de placer l'entité à une coordonnée précise donnée via les scores `glib.loc[X,Y,Z]`.
  * Cette fonction possède des déclinaisons sur x, y et z, utile pour les joueurs, pour qui la position ne peut pas être modifié directement via la commande /data.
  * Exemple:

Se téléporter en 15 100 25

```
# Une fois
scoreboard players set @s glib.locX 15
scoreboard players set @s glib.locY 100
scoreboard players set @s glib.locZ 25
function glib:location/set
```

* `spread` : Permet de téléporter aléatoirement une entité dans une zone donnée.
  * La différence avec la commande spreadplayers, c'est que cette fonction ne téléporte pas sur le bloc le plus haut, elle ne modifie tout simplement pas la position Y de l'entité
  * Prend en paramètres les scores `glib.var[0,1,2]` correspondant respectivement aux coordonnées X et Z, ainsi qu'au rayon de la zone dans laquelle l'entité sera téléporté.
  * Exemple:

Se téléporter dans une zone de 10 blocs de rayon, ayant pour centre la coordonnée X=15, Z=25

```
# Une fois
scoreboard players set @s glib.var0 15
scoreboard players set @s glib.var1 25
scoreboard players set @s glib.var2 10
function glib:location/spread
```