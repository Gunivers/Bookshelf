# ⛰️ Biome

`bs.biome:_`

All function concerning biome properties.

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Can it rain?

**`bs.biome:can_rain`**

Determine if it can rain or not.

:Inputs:

    (execution) `as <entities>`
    : The entities that carry the score `bs.biome.temp` you want to check if it can rain.

    (score) `bs.biome.temp`
    : The temperature (usualy, the one where the entity is located. You have to get it first)

:Output:

    (tag) `@s bs.biome.CanRain`
    : This tag is given if it can rain according to the temperature.

:Example:
    
    Knowing if it can rain where the players are
    
    ```
    # Once
    execute as @a run bs.biome:get
    execute as @a run bs.biome:get_temperature
    execute as @a run bs.biome:can_rain

    # See the result
    execute as @a[tag=bs.biome.CanRain] run say Where I am, it can rain!
    execute as @a[tag=!bs.biome.CanRain] run say Where I am, it never rain...
    ```

> **Credits**: theogiraudet

---

### Can it snow?

**`bs.biome:can_snow`**

Determine if it can snow or not.

:Inputs:

    (execution) `as <entities>`
    : The entities that carry the score `bs.biome.temp` you want to check if it can snow.

    (score) `bs.biome.temp`
    : The temperature (usualy, the one where the entity is located. You have to get it first)

:Output:

    (tag) `@s bs.biome.CanSnow`
    : This tag is given if it can snow according to the temperature.

:Example:
    
    Knowing if it can rain where the players are
    
    ```
    # Once
    execute as @a run bs.biome:get
    execute as @a run bs.biome:get_temperature
    execute as @a run bs.biome:can_snow

    # See the result
    execute as @a[tag=bs.biome.CanSnow] run say Where I am, it can snow!
    execute as @a[tag=!bs.biome.CanSnow] run say Where I am, it never snows...
    ```

> **Credits**: theogiraudet

---

### Get biome ID

**`bs.biome:get`**

Get the biome ID.

:Inputs:

    (execution) `as <entities>`
    : The entity on which you want to store the biome ID.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position where you want to get the biome ID.

:Output:

    (score) `bs.biome`
    : The biome ID.

:Example:

    Get the biome in which each villager is located.

    ```
    # Once
    execute as @e[type=villager] run bs.biome:get

    # See the result
    tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Mon biome: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.biome"},"color":"gold"}]
    ```

> **Credits**: theogiraudet

---

### Get temperature

::::{tab-set}
:::{tab-item} Biome

**`bs.biome:get_biome_temperature`**

Allows to retrieve the temperature of the
biome at the execution position of the function.

:Inputs:

    (execution) `as <entities>`
    : The entity on which you want to store the temperature.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position where you want to get the temperature.

:Output:

    (score) `bs.biome.temp`
    : The temperature of the biome.

:Example:

    Get the temperature of the biome in which each octopus is located

    ```
    # Once
    execute as @e[type=squid] run bs.biome:get_biome_temperature

    # See the result
    tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "The temperature of my biome: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.biome"}, "color": "gold"}]
    ```

:::
:::{tab-item} At a given location

**`bs.biome:get_temperature`**

Allows to retrieve the temperature at the execution
position of the function taking into account the temperature of the
biome and its altitude.

:Inputs:

    (execution) `as <entities>`
    : The entity on which you want to store the temperature.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position where you want to get the temperature.

:Output:

    (score) `bs.biome.temp`
    : The temperature of the biome.

:Example:

    Get the temperature at each polar bear

    ```
    # Once
    execute as @e[type=polar_bear] run bs.biome:get_temperature

    # See the result
    tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "The temperature where I am: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.biome"}, "color": "gold"}]
    ```

:::
::::

> **Credits**: theogiraudet

---

<div align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>

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