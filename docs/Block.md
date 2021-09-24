# Block

`glib:block/` : Systèmes permettant de manipuler les blocs

* `get` : Donne à l'entité executante un score correspondant à un identifiant unique du bloc + blockstate situé à l'endroit où la fonction est executée.
  * Le résultat est stocké sur le score `glib.blockId`
  * Exemple : 

Faire en sorte que le joueur nommé Steve récupère l'identifiant du bloc sous ses pieds

```
# Une fois
execute as Steve at @s positioned ~ ~-1 ~ run function glib:block/get

# Voir le résultat
scoreboard objectives setdisplay sidebar glib.blockId
```

* set : Place un block (et les blockstates associés) correspondant à l'identifiant stocké sur l'entité executante.
  * L'identifiant doit être donén via le score `glib.blockId`
  * Exemple :

Faire en sorte que le joueur nommé Steve pose le bloc au dessus de lui, correspondant à l'identifiant qu'il a d'indiqué sur son score `glib.blockId`

```
# Une fois
execute as Steve at @s positioned ~ ~2 ~ run function glib:block/set

# Voir le résultat
# Regarder au dessus de Steve
```

* `convert_to_item` : Converti un identifiant de bloc stocké sur l'entité executante en identifiant d'item
  * L'identifiant du bloc doit être indiqué par le score `glib.blockId`
  * L'identifiant de l'item sera stocké sur le score `glib.itemId`
  * Exemple :

Faire en sorte que le joueur nommé Steve obtienne l'identifiant de l'item correspondant au block qui est indiqué par son score `glib.blockId`

```
# Une fois
execute as Steve run function glib:block/convert_to_item

# Voir le résultat
scoreboard objectives setdisplay sidebar glib.itemId
```