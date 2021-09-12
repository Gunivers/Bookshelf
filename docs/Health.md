# **Health**

`glib:health/` : Gestion par scoreboard de la vie d'une entité.

* `safe_kill` : Permet de supprimer proprement une entité. Cette fonction efface les scores de l'entité et la téléporte à la couche 0 avant de la tuer.
  * Les joueurs ne peuvent pas être kill
  * Les entités portant le tag `glib.permanen`t ne peuvent pas être kill
  * Il est recommandé de mettre le tag `glib.permanent` à toutes les entités décoratives (tableaux, item frames etc ...)
  * Exemple:

Tuer tous les zombies:

```
# Une fois
execute as @e[type=zombie] run function glib:health/safe_kill
```

* `time_to_live` : Permet de définir le temps de vie des entités.
  * Par défaut, ce temps est de 10 secondes (= 200 ticks)
  * L'entité vivra avant de se voir appliqué l'action de fin de vie (defaut: function glib:health/safe_kill).
  * Avant de se voir appliquer l'action de fin de vie, l'entité recevra le tag `glib.ttl.timeOut` durant 1 tick
  * Vous pouvez modifier chacun des valeurs par défaut en ouvrant le fichier et en vous rendant dans la partie "CONFIG" \*\*
  * Exemple:

Donner un temps de vie de 10 secondes aux Creepers:

```
# A chaque tick
execute as @e[type=creeper] run function glib:health/time_to_live
```

Donner un temps de vie de 20 secondes aux Vaches:

```
# Au moins une fois
scoreboard players set @e[type=cow,tag=glib.ttl.default] glib.ttl 400
# A chaque tick
execute as @e[type=cow] run function glib:time_to_live
```

Donner un effet d'explosions aux Creepers en fin de vie

```
# A chaque tick
execute as @e[type=creeper] run function glib:health/time_to_live
execute as @e[tag=glib.ttl.timeOut] at @s run playsound minecraft:entity.generic.explode master @a
execute as @e[tag=glib.ttl.timeOut] at @s run particle minecraft:explosion_emitter ~ ~ ~
```

Attention: si la fonction TTL est appelée 2 fois sur une même entité, son temps de vie diminura 2 fois plus vite.