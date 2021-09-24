# Item

`glib:item/` : Systèmes permettant de manipuler les items

* `get` : Donne à l'item executant la fonction un score correspondant à un identifiant unique correspondant à sa nature.
  * Le résultat est stocké sur le score `glib.itemId`
  * Doit être executé sur un item uniquement
  * Exemple : 

Faire en sorte que tous les items présent dans le monde aient leur identifiant indiqué par leur score `glib.itemId`

```
# Une fois
execute as @e[type=item] run function glib:item/get

# Voir le résultat
scoreboard objectives setdisplay sidebar glib.itemId
```

* set : Créé un item correspondant à l'identifiant stocké sur l'entité executante.
  * L'identifiant doit être donén via le score `glib.itemId`
  * Exemple :

Faire en sorte que le joueur nommé Steve créé un item devant lui, correspondant à l'identifiant qu'il a d'indiqué sur son score `glib.itemId`

```
# Une fois
execute as Steve at @s anchored eyes positioned ^ ^ ^1 run function glib:item/set

# Voir le résultat
# Regarder devant Steve
```

* `convert_to_block` : Converti un identifiant d'item stocké sur l'entité executante en identifiant de block
  * L'identifiant de l'item doit être indiqué par le score `glib.itemId`
  * L'identifiant du bloc sera stocké sur le score `glib.blockId`
  * Exemple :

Faire en sorte que le joueur nommé Steve obtienne l'identifiant du bloc correspondant à l'item qui est indiqué par son score `glib.itemId`

```
# Une fois
execute as Steve run function glib:item/convert_to_block

# Voir le résultat
scoreboard objectives setdisplay sidebar glib.blockId
```