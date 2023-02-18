# ⛰️ Biome

`bs.biome:` all function concerning biome properties.

## Can it rain?

`can_rain`: Determine if it can rain or not.

- Requires that the `bs.temperature` score is defined on the
   executing entity
- Returns the tag ``bs.canRain` if it can rain.

*Example:*

Knowing if it can rain where the players are

```
# Once
execute as @a run bs.biome:get
execute as @a run bs.biome:get_temperature
execute as @a run bs.biome:can_rain

# See the result
execute as @a[tag=bs.canRain] run say Where I am, it can rain!
execute as @a[tag=!bs.canRain] run say Where I am, it never rains...
```

## Can it snow?

`can_snow`: Determine if it can snow or not.

- Requires the `bs.temperature` score to be set on the running entity
- Returns the tag `bs.canSnow` if it can snow.

*Example:*

Knowing if it can rain where the players are

```
# Once
execute as @a run bs.biome:get
execute as @a run bs.biome:get_temperature
execute as @a run bs.biome:can_snow

# See the result
execute as @a[tag=bs.canSnow] run say Where I am, it can rain!
execute as @a[tag=!bs.canSnow] run say Where I am, it never snows...
```

## Get biome ID

`get`: Detects the biome in which the current entity is located and
stores it in the `bs.biome` score of the entity.

*Example:*

Get the biome in which each villager is located.

```
# Once
execute as @e[type=villager] run bs.biome:get

# See the result
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Mon biome: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.biome"},"color":"gold"}]
```

## Get biome temperature

`get_biome_temperature`: Allows to retrieve the temperature of the
biome at the execution position of the function.

- The result will be stored on the score `bs.temperature`

*Example:*

Get the temperature of the biome in which each octopus is located

```
# Once
execute as @e[type=squid] run bs.biome:get_biome_temperature

# See the result
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "The temperature of my biome: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.biome"}, "color": "gold"}]
```

## Get block temperature

`get_temperature`: Allows to retrieve the temperature at the execution
position of the function taking into account the temperature of the
biome and its altitude.

- The result will be stored on the score `bs.temperature`

*Example:*

Get the temperature at each polar bear

```
# Once
execute as @e[type=polar_bear] run bs.biome:get_temperature

# See the result
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "The temperature where I am: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.biome"}, "color": "gold"}]
```

---

# 💬 Did it help you?

Feel free to leave your questions and feedbacks below!

<script src="https://giscus.app/client.js"
        data-repo="Gunivers/Glibs"
        data-repo-id="R_kgDOHQjqYg"
        data-category="Documentation"
        data-category-id="DIC_kwDOHQjqYs4CUQpy"
        data-mapping="title"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="light"
        data-lang="fr"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>