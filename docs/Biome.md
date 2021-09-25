# Biome

**Can it rain?**

`can_rain`: Determine if it can rain or not.
* Requires that the `glib.temperature` score is defined on the executing entity
* Returns the tag `glib.canRain` if it can rain.

*Example:*

Knowing if it can rain where the players are
```
# Once
execute as @a run glib:biome/get
execute as @a run glib:biome/get_temperature
execute as @a run glib:biome/can_rain

# See the result
execute as @a[tag=glib.canRain] run say At my house it can rain!
execute as @a[tag=!glib.canRain] run say In my house it never rains...
```

**Can it snow?**

`can_snow`: Determine if it can snow or not.
* Requires the `glib.temperature` score to be set on the running entity
* Returns the tag `glib.canSnow` if it can rain.

*Example:*

Knowing if it can rain where the players are
```
# Once
execute as @a run glib:biome/get
execute as @a run glib:biome/get_temperature
execute as @a run glib:biome/can_snow

# See the result
execute as @a[tag=glib.canRain] run say Chez moi il ne peut neiger!
execute as @a[tag=!glib.canRain] run say Where I live it never snows...
```

**Get biome ID**

`get`: Detects the biome in which the current entity is located and stores it in the `glib.biome` score of the entity (see [list of Biomes](https://glib-core.readthedocs.io//Biome_ID)).

*Example:*

Get the biome in which each villager is located.
```
# Once
execute as @e[type=villager] run glib:biome/get

# See the result
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Mon biome: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.biome"},"color":"gold"}]
```

**Get biome temperature**

`get_biome_temperature`: Allows to retrieve the temperature of the biome at the execution position of the function.
* The result will be stored on the score `glib.temperature`
  
*Example:*

Get the temperature of the biome in which each octopus is located
```
# Once
execute as @e[type=squid] run glib:biome/get_biome_temperature

# See the result
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "The temperature of my biome: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.biome"}, "color": "gold"}]
```

**Get block temperature**

`get_temperature`: Allows to retrieve the temperature at the execution position of the function taking into account the temperature of the biome and its altitude.
* The result will be stored on the score `glib.temperature`

*Example:*

Get the temperature at each polar bear
```
# Once
execute as @e[type=polar_bear] run glib:biome/get_temperature

# See the result
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "The temperature where I am: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.biome"}, "color": "gold"}]
```