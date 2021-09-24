# Link

`glib:link/`: Les fonctions "Link" permettent de lier une entité à une autre. Ce lien consiste à conserver la positions et l'orentation relative entre les deux entités, permettant ensuite d'imiter ou d'inverser les déplacements et rotations de l'entité parente.

* `create_link_tti` : Permet de créer le lien entre deux entités.
  * Le score `glib.targetId` de l'entité executante doit correspondre au score `glib.id` de l'entité à laquelle elle va être liée.
  * Plusieurs entités peuvent être lié à une seul et même entité (généralement recommandé pour les structures d'armor_stand).
  * L'entité enfant (ayant éxecutée la fonction) possèdera alors 9 scores distinct:
    * `glib.link.r[x,y,z,h,v]` représentant les coordonnées relatives (position + orientation)
    * `glib.link.l[x,y,z]` représentant les coordonnées locales (position seulement)
    * `glib.link.to` permet d'identitifer l'entité à laquelle elle est liée
  * .Ces scores ne doivent généralement pas être modifiés car servent de paramètre aux autres fonctions link.
  * Exemple:

Lier toutes les armor_stand à l'entité portant l'ID 3

```
# Une fois
scorebaord players set @e[type=armor_stand] glib.targetId 3
execute as @e[type=armor_stand] run function glib:link/create_link_tti

# Voir le résultat
# En boucle
execute as @e[type=armor_stand] run function glib_debug:link/display_link
```

* `create_link_ata` : De la même façon que create_link_to_target_id, cette fonction créé un lien entre l'entité executant la fonction et l'entité la plus proche de la position d'execution.
  * Plusieurs entités peuvent être lié à une seul et même entité (généralement recommandé pour les structures d'armor_stand).
  * L'entité enfant (ayant éxecutée la fonction) possèdera alors 9 scores distinct:
    * `glib.link.r[x,y,z,h,v]` représentant les coordonnées relatives (position + orientation)
    * `glib.link.l[x,y,z]` représentant les coordonnées locales (position seulement)
    * `glib.link.to` permet d'identitifer l'entité à laquelle elle est liée
  * .Ces scores ne doivent généralement pas être modifiés car servent de paramètre aux autres fonctions link.
  * Exemple:

Lier toutes les armor_stand au mouton le plus proche

```
# Une fois
execute as @e[type=armor_stand] at @e[type=sheep,limit=1,sort=nearest] run function glib:link/create_link_ata

# Voir le résultat
# En boucle
execute as @e[type=armor_stand] run function glib_debug:link/display_link
```

* `imitate_loc` : Permet de replacer l'entité à sa position relative. Cette opération répété en boucle revient à imiter les déplacements de l'entité parente.
  * Cette fonction dispose également de déclinaisons sur x, y et z afin de vous permettre d'imiter les déplacements que sur un ou deux axes choisis.
  * Exemple:

Faire en sorte que les armor_stands imitent imite vos déplacements

```
# Une fois
execute as @e[type=armor_stand] at @s run function glib:link/create_link_ata

# En boucle
execute as @e[type=armor_stand,tag=glib.linked] run function glib:link/imitate_loc
```

* `immitate_ori` : Permet de replacer l'entité à son orientation relative. Cette opération répété en boucle revient à imiter les rotations de l'entité parente.
  * Cette fonction dispose également de déclinaisons sur h et v afin de vous permettre d'imiter uniquement la rotation horizontale ou verticale.
  * Exemple:

Faire en sorte que les armor_stands imitent vos changments d'orientations

```
# Une fois
execute as @e[type=armor_stand] at @s run function glib:link/create_link_ata

# En boucle
execute as @e[type=armor_stand,tag=glib.linked] run function glib:link/imitate_ori
```

* `keep_local_location` : Permet de conserver la position locale correspondant à la position de l'entité enfant dans le référentiel de l'entité parente.
  * Ce référentiel, à la différence des coordonnées relatives, prend en compte l'orientation de l'entité. Ainsi, lorsque l'entité parente tournera sur elle même, l'entité enfant se verra tourner autour d'elle en conservant sa distance et l'angle formé entre la direction du regarde de l'entité parente et le vecteur parent->enfant.
  * Exemple:

Faire en sorte que les armor_stands soient verrouillés sur votre orientation

```
# Une fois
execute as @e[type=armor_stand] at @s run function glib:link/create_link_ata

# En boucle
execute as @e[type=armor_stand,tag=glib.linked] run function glib:link/keep_local_location
```

* `reverse_loc` : Permet de déterminer le déplacement effectué par l'entité parente, et la reproduire en sens contraire.
  * Cette fonction dispose également de déclinaisons sur x, y et z afin de vous permettre d'inverser les déplacements que sur un ou deux axes choisis.
  * Exemple:

Faire en sorte que les armor_stands fassent l'inverse de vos déplacements

```
# Une fois
execute as @e[type=armor_stand] at @s run function glib:link/create_link_ata

# En boucle
execute as @e[type=armor_stand,tag=glib.linked] run function glib:link/reverse_loc
```

* `reverse_ori` : Permet de déterminer la rotation effectué par l'entité parente, et la reproduire en sens contraire.
  * Cette fonction dispose également de déclinaisons sur h et v afin de vous permettre d'inverser uniquement la rotation horizontale ou verticale.
  * Exemple:

Faire en sorte que les armor_stands imitent vos déplacements

```
# Une fois
execute as @e[type=armor_stand] at @s run function glib:link/create_link_ata

# En boucle
execute as @e[type=armor_stand,tag=glib.linked] run function glib:link/reverse_ori
```

* `update_link` : Cette fonction permet d'actualiser le lien entre les entités. Si vous n'utilisez que des fonctions d'immitation et/ou de conservation de position locale, cette fonction ne vous sera d'aucune utilité. En revanche, si vous modifiez la position de l'entité enfant autrament, il faudra actualiser le lien afin que votre opération ne soit pas annulé au prochain appel de fonction link.
  * Les fonctions link de la lib font automatiquement appel aux fonction d'update si necessaire (exemple: les fonctions reverse). Pas besoin donc de gérer ça de votre coté.
  * Exemple:

Actualiser le lien des armor_stands

```
# Une fois
execute as @e[type=armor_stand] run function glib:link/update_link

# Voir le résultat
# En boucle
execute as @e[tag=glib.linked] run function glib_debug:link/display_link
```