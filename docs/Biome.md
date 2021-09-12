# **Biome**

* `can_rain` : Determine si il peut pleuvoir ou non.
  * Necessite que le score `glib.temperature` soit définit sur l'entité exécutante
  * Retourne le tag `glib.canRain` si il peut pleuvoir.
  * Exemple:

Savoir si il peut pleuvoir là où se trouvent les joueurs

```
# Une fois
execute as @a run glib:biome/get
execute as @a run glib:biome/get_temperature
execute as @a run glib:biome/can_rain

# Voir le résultat
execute as @a[tag=glib.canRain] run say Chez moi il peut pleuvoir !
execute as @a[tag=!glib.canRain] run say Chez moi il ne pleut jamais...
```

* `can_snow` : Determine si il peut neiger ou non.
  * Necessite que le score `glib.temperature` soit définit sur l'entité exécutante
  * Retourne le tag `glib.canSnow` si il peut pleuvoir.
  * Exemple:

Savoir si il peut pleuvoir là où se trouvent les joueurs

```
# Une fois
execute as @a run glib:biome/get
execute as @a run glib:biome/get_temperature
execute as @a run glib:biome/can_snow

# Voir le résultat
execute as @a[tag=glib.canRain] run say Chez moi il peut neiger !
execute as @a[tag=!glib.canRain] run say Chez moi il ne neige jamais...
```

* `get` : Détecte le biome dans lequel se situe l'entité courante et le stock dans le score `glib.biome` de l'entité (cf. [liste des Biomes](https://project.gunivers.net/projects/gunivers-lib/wiki/Biome_ID)).
  * Exemple:

Obtenir le biome dans lequel se trouve chaque villageois

```
# Une fois
execute as @e[type=villager] run glib:biome/get

# Voir le résultat
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Mon biome: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.biome"},"color":"gold"}]
```

* `get_biome_temperature` : Permet de récupérer la température du biome à la position d'execution de la fonction.
  * Le résultat sera stocké sur le score `glib.temperature`
  * Exemple:

Obtenir la température du biome dans lequel se trouve chaque poulpe

```
# Une fois
execute as @e[type=squid] run glib:biome/get_biome_temperature

# Voir le résultat
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"La température de mon biome: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.biome"},"color":"gold"}]
```

* `get_temperature` : Permet de récupérer la température à la position d'execution de la fonction en tenant compte de la température du biome et de son altitude.
  * Le résultat sera stocké sur le score `glib.temperature`
  * Exemple:

Obtenir la température au niveau de chaque ours polaire

```
# Une fois
execute as @e[type=polar_bear] run glib:biome/get_temperature

# Voir le résultat
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"La température là où je suis: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.biome"},"color":"gold"}]
```