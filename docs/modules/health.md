# ❤️ Health

`#bs.health:help`

Management of the life of an entity.

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Add / Remove

::::::{tab-set}
:::::{tab-item} Health
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.helth:add_health`**

Add health points to the player.

Inputs

:   (execution) `as <player>`
    : The player whose health will be updated.

    (macro variable) `points`: double
    : The health points to add to the player.

Outputs

:   (state) players health
    : The players health is updated.

Example

:   Add 5 health point to the player:

    ```mcfunction
    # Once (execute on you)
    function #bs.health:add_health {points:5}
    ```

:::
:::{tab-item} Storage

**`#bs.helth:add_health`**

Add health points to the player.

Inputs

:   (execution) `as <player>`
    : The player whose health will be updated.

    (storage) `bs:in health.add_health.points`: double
    : The health points to add to the player.

Outputs

:   (state) players health
    : The players health is updated.

Example

:   Add 5 health point to the player:

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in health.add_health.points set value 5
    function #bs.health:add_health
    ```

:::
:::{tab-item} Score

**`#bs.helth:add_health`**

Add health points to the player.

Inputs

:   (execution) `as <player>`
    : The player whose health will be updated.

    (score) `$health.add_health.points bs.in`: int
    : The health points to add to the player.

Outputs

:   (state) players health
    : The players health is updated.

Example

:   Add 5 health point to the player:

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $health.add_health.points bs.in 5
    function #bs.health:add_health
    ```

:::
::::
:::::
:::::{tab-item} Max health
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.helth:add_max_health`**

Add max health points to the player.

Inputs

:   (execution) `as <player>`
    : The player whose max health will be updated.

    (macro variable) `points`: double
    : The max health points to add to the player.

Outputs

:   (state) players health
    : The players max health is updated.

Example

:   Add 5 max health point to the player:

    ```mcfunction
    # Once (execute on you)
    function #bs.health:add_max_health {points:5}
    ```

:::
:::{tab-item} Storage

**`#bs.helth:add_max_health`**

Add max health points to the player.

Inputs

:   (execution) `as <player>`
    : The player whose max health will be updated.

    (storage) `bs:in health.add_max_health.points`: double
    : The max health points to add to the player.

Outputs

:   (state) players health
    : The players max health is updated.

Example

:   Add 5 max health point to the player:

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in health.add_max_health.points set value 5
    function #bs.health:add_max_health
    ```

:::
:::{tab-item} Score

**`#bs.helth:add_max_health`**

Add max health points to the player.

Inputs

:   (execution) `as <player>`
    : The player whose max health will be updated.

    (score) `$health.add_max_health.points bs.in`: int
    : The max health points to add to the player.

Outputs

:   (state) players health
    : The players max health is updated.

Example

:   Add 5 max health point to the player:

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $health.add_max_health.points bs.in 5
    function #bs.health:add_max_health
    ```

:::
::::
:::::
::::::

```{admonition} How to remove
:class: tip

You can use negative numbers to remove experience from the player.

```

> **Credits**: Aksiome

---

### Set

::::::{tab-set}
:::::{tab-item} Health
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.helth:set_health`**

Set the player health.

Inputs

:   (execution) `as <player>`
    : The player whose health will be updated.

    (macro variable) `points`: double
    : The health of the player.

Outputs

:   (state) players health
    : The players health is updated.

Example

:   Set the player health to 10 using a macro:

    ```mcfunction
    # Once (execute on you)
    function #bs.health:set_health {points:10}
    ```

:::
:::{tab-item} Storage

**`#bs.helth:set_health`**

Set the player health.

Inputs

:   (execution) `as <player>`
    : The player whose health will be updated.

    (storage) `bs:in health.set_health.points`: double
    : The health of the player.

Outputs

:   (state) players health
    : The players health is updated.

Example

:   Set the player health to 10 using a macro:

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in health.set_health.points set value 10
    function #bs.health:set_health
    ```

:::
:::{tab-item} Score

**`#bs.helth:set_health`**

Set the player health.

Inputs

:   (execution) `as <player>`
    : The player whose health will be updated.

    (score) `$health.set_health.points bs.in`: int
    : The health of the player.

Outputs

:   (state) players health
    : The players health is updated.

Example

:   Set the player health to 10 using a macro:

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $health.set_health.points bs.in 10
    function #bs.health:set_health
    ```

:::
::::
:::::
:::::{tab-item} Max health
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.helth:set_max_health`**

Set the player maximum health.

Inputs

:   (execution) `as <player>`
    : The player whose maximum health will be updated.

    (macro variable) `points`: double
    : The maximum health of the player.

Outputs

:   (state) players health
    : The players maximum health is updated.

Example

:   Set the player maximum health to 10 using a macro:

    ```mcfunction
    # Once (execute on you)
    function #bs.health:set_max_health {points:10}
    ```

:::
:::{tab-item} Storage

**`#bs.helth:set_max_health`**

Set the player maximum health.

Inputs

:   (execution) `as <player>`
    : The player whose maximum health will be updated.

    (storage) `bs:in health.set_max_health.points`: double
    : The maximum health of the player.

Outputs

:   (state) players health
    : The players maximum health is updated.

Example

:   Set the player maximum health to 10 using a macro:

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in health.set_max_health.points set value 10
    function #bs.health:set_max_health {points:10}
    ```

:::
:::{tab-item} Score

**`#bs.helth:set_max_health`**

Set the player maximum health.

Inputs

:   (execution) `as <player>`
    : The player whose maximum health will be updated.

    (score) `$health.set_max_health.points bs.in`: int
    : The maximum health of the player.

Outputs

:   (state) players health
    : The players maximum health is updated.

Example

:   Set the player maximum health to 10 using a macro:

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $health.set_max_health.points bs.in 10
    function #bs.health:set_max_health {points:10}
    ```

:::
::::
:::::
::::::

> **Credits**: Aksiome

---

### Time to live

**`#bs.helth:time_to_live`**

Allows to define the time of life of the entities.

Inputs

:   (execution) `as <entity>`
    : The entity to add a life time to.

    (macro variable) `time`: int (optional)
    : The time to live. In ticks by default if unit is not defined.

    (macro variable) `unit`: string (optional)
    : The unit of the specified time. Possible values: 'tick', 'second', 'minute', 'hour', 't', 's', 'm', 'h'.

    (macro variable) `on_death`: string (optional)
    : A command that will be run as the entity on its death.

Example

:   Give the creepers a 10 second life time:

    ```mcfunction
    # Once
    execute as @e[type=minecraft:creeper] run function #bs.health:time_to_live {time:10,unit:"s"}
    ```

:   Give an explosion effect to creepers at the end of their life:

    ```mcfunction
    # Once
    execute as @e[type=minecraft:creeper] run function #bs.health:time_to_live {time:10,on_death:"execute at @s run particle minecraft:explosion_emitter ~ ~ ~"}
    ```

:   Update the on_death callback at any given time:

    ```mcfunction
    # Once
    execute as @e[type=minecraft:creeper] run function #bs.health:time_to_live {time:100,on_death:"execute at @s run particle minecraft:explosion_emitter ~ ~ ~"}

    # Update the on_death callback of a single creeper before it dies
    execute as @e[type=minecraft:creeper,limit=1] run function #bs.health:time_to_live {on_death:"say GOTCHA"}
    ```

> **Credits**: Aksiome, Leirof

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
