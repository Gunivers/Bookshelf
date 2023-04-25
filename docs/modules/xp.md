# 🏅 XP

**`bs.xp:_`**

All functions allowing to manage experience points and levels.

```{image} img/xp.png
:class: dark-light p-2
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Add

::::{tab-set}
:::{tab-item} Points

**`bs.xp:add_points`**

Add XP from a score

Inputs

:   (execution) `as <players>`
    : The players to add XP to

    (score) `@s bs.in.0`
    : The amount of XP to add

Outputs

:   (state) players xp
    : The players XP is updated

Example

:   Add you 1234 XP

    ```
    # Once
    scoreboard players set @s bs.in.0 1234
    bs.xp:add_points

    # See the result
    function bs.xp:get_total_points
    scoreboard objectives setdisplay sidebar bs.out.0
    # run the add function here
    function bs.xp:get_total_points
    ```

:::
:::{tab-item} Levels

**`bs.xp:add_levels`**

Add levels from a score

Inputs

:   (execution) `as <players>`
    : The players to add levels to

    (score) `@s bs.in.0`
    : The amount of levels to add

Outputs

:   (state) players xp
    : The players XP is updated 

Example

:   Add you 123 levels

    ```
    # Once
    scoreboard players set @s bs.in.0 123
    bs.xp:add_levels

    # See the result
    # look at your XP bar in survival mode
    ```

:::
::::

> **Credits**: Leirof

---

### Get

::::::{tab-set}
:::::{tab-item} Total points

**`bs.xp:get_total_points`**

Get the total amount of points of the player.

Input

:   (execution) `as <players>`
    : The players from which you want to get the total amount of points

Output

:   (score) `@s bs.out.0`
    : The total amount of points

Example

:   Get your amount of points

    ```
    # Once (execute on you)
    bs.xp:get_total_points

    # See the result (execute on you)
    tellraw @a ["",{"text":"I have "},{"score":{"name":"@s","objective":"bs.out.0"}},{"text":" XP"}]
    ```

:::::
:::::{tab-item} Bar

::::{tab-set}
:::{tab-item} Lowered

**`bs.xp:get_bar`**

Get the portion of the bar filled (in percent)

Inputs

:   (execution) `as <players>`
    : The players from which you want to get the fraction of the bar filled

Outputs

:   (score) `@s bs.out.0`
    : The percentage of the bar filled (rounded to the lowest integer)

    ```{admonition} Minecraft natural division
    :class: tip

    Due to the division, the result is rounded to the lowest integer. If you want to round to the nearest integer, use the function `bs.xp:get_bar_rounded`
    ```

Example

:   Get the portion filled in your XP bar

    ```
    # Once
    bs.xp:get_bar

    # See the result
    scoreboard obective setdisplay sidebar bs.out.0
    ```

:::
:::{tab-item} Rounded

**`bs.xp:get_bar_rounded`**

Get the portion of the bar filled (in percent)

Inputs

:   (execution) `as <players>`
    : The players from which you want to get the fraction of the bar filled

Outputs

:   (score) `@s bs.out.0`
    : The percentage of the bar filled (rounded to the nearest integer)

Example

:   Get the portion filled in your XP bar

    ```
    # Once
    bs.xp:get_bar_rounded

    # See the result
    scoreboard obective setdisplay sidebar bs.out.0
    ```

```{admonition} Depnedency
:class: dropdown

This function require the [`bs.math`](math) module to work properly
```

:::
::::

:::::
:::::{tab-item} Level points

**`bs.xp:get_level_points`**

Get the points required to pass to the next level.

Input

:   (execution) `as <players>`
    : The players from which you want to get the points required to pass to the indicated level

    (score) `@s bs.in.0`
    : The level you want to get the points required to pass it

Output

:   (score) `@s bs.out.0`
    : The amount of points required to pass to the next level

Example

:   Get the number of points required to pass from the level 15 to the level 16

    ```
    # Once
    scoreboard players set @s bs.in.0 15
    bs.xp:get_total_points

    # See the result
    tellraw @a ["",{"text":"I need "},{"score":{"name":"@s","objective":"bs.out.0"}},{"text":" to pass this level"}]
    ```

:::::
::::::

> **Credits**: Leirof

---

### Remove

::::{tab-set}
:::{tab-item} Points

**`bs.xp:remove_points`**

Remove XP from a score

Inputs

:   (execution) `as <players>`
    : The players to remove XP from

    (score) `@s bs.in.0`
    : The amount of XP to remove

Outputs

:   (state) players xp
    : The players XP is updated

Example

:   Remove you 1234 XP

    ```
    # Once
    scoreboard players set @s bs.in.0 1234
    bs.xp:remove_points

    # See the result
    function bs.xp:get_total_points
    scoreboard objectives setdisplay sidebar bs.out.0
    # run the remove function here
    function bs.xp:get_total_points
    ```

:::
:::{tab-item} Levels

**`bs.xp:remove_levels`**

Remove levels from a score

Inputs

:   (execution) `as <players>`
    : The players to remove levels from

    (score) `@s bs.in.0`
    : The amount of levels to remove

Outputs

:   (state) players xp
    : The players XP is updated

Example

:   Remove you 123 levels

    ```
    # Once
    scoreboard players set @s bs.in.0 123
    bs.xp:add_levels

    # See the result
    # look at your XP bar in survival mode
    ```

:::
::::

> **Credits**: Leirof

---

### Set

::::{tab-set}
:::{tab-item} Bar

**`bs.xp:set_bar`**

Fill partially the XP bar

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar

    (score) `@s bs.in.0`
    : The percentage of the bar to fill

Outputs

:   (state) players xp
    : The players XP is updated

Example

:   Fill your bar at 50%

    ```
    # Once
    scoreboard players set @s bs.in.0 50
    bs.xp:set_bar

    # See the result
    # look at your XP bar in survival mode
    ```

:::
:::{tab-item} Levels

**`bs.xp:set_levels`**

Set levels from a score

Inputs

:   (execution) `as <players>`
    : The players to set levels from

    (score) `@s bs.in.0`
    : The amount of levels to set

Outputs

:   (state) players xp
    : The players XP is updated

Example

:   Set your level to 123

    ```
    # Once
    scoreboard players set @s bs.in.0 123
    bs.xp:set_levels

    # See the result
    # look at your XP bar in survival mode
    ```

:::
:::{tab-item} Points

**`bs.xp:set_points`**

Set XP from a score

Inputs

:   (execution) `as <players>`
    : The players you want to set XP

    (score) `@s bs.in.0`
    : The amount of XP to set

Outputs

:   (state) players xp
    : The players XP is updated

Example

:   Set your XP to 1234

    ```
    # Once
    scoreboard players set @s bs.in.0 1234
    bs.xp:set_points

    # See the result
    function bs.xp:get_total_points
    scoreboard objectives setdisplay sidebar bs.out.0
    # run the set function here
    function bs.xp:get_total_points
    ```

:::
:::{tab-item} Total points

**`bs.xp:set_total_points`**

Set XP from a score

Inputs

:   (execution) `as <players>`
    : The players you want to set the total XP

    (score) `@s bs.in.0`
    : The amount of XP to set

Outputs

:   (state) players xp
    : The players XP is updated 

Example

:   Set your total XP amount to 1234

    ```
    # Once
    scoreboard players set @s bs.in.0 1234
    bs.xp:set_total_points

    # See the result
    function bs.xp:get_total_points
    scoreboard objectives setdisplay sidebar bs.out.0
    ```

:::
::::

> **Credits**: Leirof

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