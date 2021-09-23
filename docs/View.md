# **View**

`glib:view/` :Les fonctions view permettent d'obtenir certaines informations pratique sur ce que voit ou ce que vise l'entité.

* `aimed_block` : Place une armor_stand possédant le tag `glib.aimedBlock` et un score `glib.parentId` correspondant à l'Id de l'entité exécutant.
  * Exemple:

Placer en entité sur le bloc visé:

```
# Une fois
function glib:view/aimed_block
```

* `aimed_entity` : Donne le tag `glib.raycastEntity` et un score `glib.parentId` correspondant à l'Id de l'entité exécutant à l'entité visée par le joueur.
  * Exemple:

Placer en entité sur le bloc visé:

```
# Une fois
function glib:view/aimed_entity
```

* `can_see_ata` : Permet de savoir si l'entité, depuis sa position, peut être capable de voir la positon d'execution de la commande (si aucun bloc n'obstrue sa vision). Si c'est le cas, l'entité source obtiendra le tag `glib.canSee`.
  * Exemple:

Savoir si une entité vous voit:

```
# Une fois
execute as @e at @s run function glib:view/has_in_front_ata
```

* `has_in_front_ata` : Permet de savoir si la position d'execution de la fonction se trouve en face de l'entité source. Si c'est le cas, l'entité source obtient le tag `glib.hasInFront`.
  * Exemple:

Savoir si la position 0 5 0 se trouve en face de vous:

```
# Une fois
execute as @s positioned 0 5 0 run function glib:view/has_in_front_ata
```