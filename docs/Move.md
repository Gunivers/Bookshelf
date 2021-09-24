# Move

`glib:move/` : Ce dossier contient toutes les focntions relative au mouvement de l'entité.

* `by_local_vector` : Permet de mettre en mouvement l'entité selon son vecteur sur chacun des axes du referentiel local.
  * Un vecteur de 1000 sur un axe entraînera un déplacement d'un bloc à chaque exécution de la fonction.
  * La somme des mouvements sur chacun des axes donnera un mouvement dans l'espace (donc en 3 dimensions), correspondant au vecteur global de l'entité.
  * Le système prend en entrée les 3 scores `glib.vector[Left,Up,Front]` (1000 <=> 1 bloc).
  * ATTENTION: le système n'inclu aucune limite de vitesse. Cependant, les ressources consommées par cette fonction sont proporitonnelles au nombre de blocs/tick auquel se déplace l'entité.
  * Exemple:

Appliquer un movement de 0.3 bloc par tick vers la gauche à tous les bateaux:

```
# Une fois
scoreboard players set @e[type=boat] glib.vectorLeft 300
scoreboard players set @e[type=boat] glib.vectorUp 0
scoreboard players set @e[type=boat] glib.vectorFront 0

# En boucle
execute as @e[type=boat] run function glib:move/by_local_vector
```

* `by_vector` : Permet de mettre en mouvement l'entité selon son vecteur sur chacun des axes du référentiel relatif.
  * Un vecteur de 1000 sur un axe entraînera un déplacement d'un bloc à chaque exécution de la fonction.
  * La somme des mouvements sur chacun des axes donnera un mouvement dans l'espace (donc en 3 dimensions), correspondant au vecteur global de l'entité.
  * Le système prend en entrée les 3 scores `glib.vector[X,Y,Z]` (1000 <=> 1 bloc) ainsi que le score `glib.collision`
  * Ce dernier score permet de gérer le comportement. S'il n'est pas renseigné ou égal à 0, l'entité traversera tous les blocs
  * Chaque comportement est définiti via un fichier dédié présent dans `glib_config:move/by_vector/`
  * Il est possible de gérer la précision de détection des collision en placant le tag `glib.config.override` sur l'entité puis en modifiant son score `glib.precision` à la valeur souhaité (1000 <=> 1 bloc, 500 <=> 0,5 blocs)
  * Si la précision est supérieur à 1 bloc, l'entité aura une certaine probabilité de traverse les murs d'un bloc d'épaisseur.
  * ATTENTION: le système n'inclu aucune limite de vitesse. Cependant, la précision des collision vient décomposer le vecteur en de multiples vecteurs ayant une longueur correspondante à la précision de détection. Le système rentrera alors dans une boucle pour restituer le vecteur initial en appliquant successivement les "morceaux de vecteur". Ainsi, plus la longueur du vecteur est grande par rapport à la précision de détection de collision, plus le système demandera de resources pour fonctionner de façon optimal.
  * Exemple:

Appliquer un movement de 0.3 bloc par tick dans la direction X à tous les bateaux (simulant un courant marin):

```
# Une fois
scoreboard players set @e[type=boat] glib.vectorX 300
scoreboard players set @e[type=boat] glib.vectorY 0
scoreboard players set @e[type=boat] glib.vectorZ 0

# En boucle
execute as @e[type=boat] run function glib:move/by_vector
```

Prendre en compte les collisions et faire s'arrêter le bateau, avec une précision de 0.1 bloc:

```
# Une fois
scoreboard players set @e[type=boat] glib.vectorX 300
scoreboard players set @e[type=boat] glib.vectorY 0
scoreboard players set @e[type=boat] glib.vectorZ 0
scoreboard players set @e[type=boat] glib.collision 2
tag @e[type=boat] add glib.config.override
scoreboard players set @e[type=boat] glib.precision 100

# En boucle
execute as @e[type=boat] run function glib:move/by_vector
```

* `forward` : Permet de mettre en mouvement l'entité selon la direction vers laquelle elle regarde et son vecteur `glib.vectorFront`
  * Un vecteur de 1000 sur un axe entraînera un déplacement d'un bloc à chaque exécution de la fonction.
  * La somme des mouvements sur chacun des axes donnera un mouvement dans l'espace (donc en 3 dimensions), correspondant au vecteur global de l'entité.
  * Le système prend en entrée les 3 scores `glib.vector[Left,Up,Front]` (1000 <=> 1 bloc).
  * ATTENTION: le système n'inclu aucune limite de vitesse. Cependant, les ressources consommées par cette fonction sont proporitonnelles au nombre de blocs/tick auquel se déplace l'entité.
  * Exemple:

Appliquer un movement de 0.3 bloc par tick vers l'avant à tous les bateaux:

```
# Une fois
scoreboard players set @e[type=boat] glib.vectorFront 300

# En boucle
execute as @e[type=boat] run function glib:move/forward
```

* `pathfind_ata` : Permet de déterminer un chemin entre la position de l'entité source et la position d'execution de la fonction.
  * Par défaut, la fonction ferra 500 tests (définit via le score Var2) et considèrera que l'entité est semblable à un joueur dans sa façon de se déplacer.
  * Le comportement est définit par la variable Var4 qui, par défaut est à 0.
  * Lorsqu'elle est à 1, le comportement sera semblable à une chauve souris.
  * Vous pouvez à tout moment créer vos propres comportements dans le dossier config/pathfind/possible_moves.
  * Le chemin est ensuite définit par une succession d'armor_stand portant le tag "Glib_Pathfind_Rewind" et "Glib_Pathfind".
  * Exemple:

Trouver le chemin vers l'armor_stand la plus proche:

```
# Une fois
execute at @e[type=minecraft:armor_stand,limit=1,sort=nearest] run function glib:move/pathfind_ata
```

* `vector_to_motion`: Permet de mettre en mouvement l'entité selon son vecteur en passant par un motion (système de mouvement intégré au jeu).
  * Un vecteur de 1000 sur un axe entraînera un déplacement d'un bloc à chaque tick du jeu.
  * La somme des mouvements sur chacun des axes donnera un mouvement dans l'espace (donc en 3 dimensions), correspondant au vecteur global de l'entité.
  * ATTENTION) Ce système admet une limite de vitesse correspondant à celle des Motions. De plus, l'entité aura par défaut un système de collision l'empechant de pouvoir traverser des blocs. De plus, l'ajout de tags Marker, NoAI, NoGravity peut bloquer ce système. Les collisions sont intégrés à ce système mais sont peu fiable et donc déconseillées. Ne s'active que lorsque l'entité possède un score Collision supérieur à 1 (chaque valeur correspond à un type de collision). Vous pouvez modifier les réactions lors des collision ou créer les votres dans le dossier config/collision_reactions Par défaut, la précision des collisions, stockée sur le score Var5, est de 500 (= 0,5 blocs). }}