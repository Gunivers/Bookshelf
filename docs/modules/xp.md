# 🏅 XP

**`#bs.xp:help`**

All functions allowing to manage experience points and levels.

```{image} img/xp.png
:class: dark-light p-2
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

```{admonition} Input flexibility
:class: tip

This module can either use score, storage, or macro as inputs. All versions use the same function tag.

Be careful, if serveral inputs are given, higher priority inputs will be used. Macro variable have the highest priority, then storage and finally score.

```

### Get

::::::{tab-set}
:::::{tab-item} Max points

**`#bs.xp:get_max_points`**

Get the total amount of points required to pass to the next level.

Inputs

:   (execution) `as <players>`
    : The players from which you want to get the points required to pass to the next level.

Outputs

:   (return): int
    : The total amount of points required to pass to the next level.

Example

:   Get the number of points required to pass to the next level.

    ```mcfunction
    # Once (execute on you)
    scoreboard objectives add my_objective dummy
    execute store result score @s my_objective run function #bs.xp:get_max_points

    # See the result (execute on you)
    tellraw @a [{"text":"I need a total of "},{"score":{"name":"@s","objective":"my_objective"}},{"text":" points to pass to the next level"}]
    ```

:::::
:::::{tab-item} Remaining points

**`#bs.xp:get_remaining_points`**

Get the remaining amount of points needed to pass to the next level.

Inputs

:   (execution) `as <players>`
    : The players from which you want to get the points needed to pass to the next level.

Outputs

:   (return): int
    : The amount of points needed to pass to the next level.

Example

:   Get the number of points needed to pass to the next level.

    ```mcfunction
    # Once (execute on you)
    scoreboard objectives add my_objective dummy
    execute store result score @s my_objective run function #bs.xp:get_remaining_points

    # See the result (execute on you)
    tellraw @a [{"text":"I need "},{"score":{"name":"@s","objective":"my_objective"}},{"text":" points to pass to the next level"}]
    ```

:::::
:::::{tab-item} Total points

**`#bs.xp:get_total_points`**

Get the total amount of points of the player.

Inputs

:   (execution) `as <players>`
    : The players from which you want to get the total amount of points.

Outputs

:   (return): int
    : The total amount of points.

Example

:   Get your total amount of points.

    ```mcfunction
    # Once (execute on you)
    scoreboard objectives add my_objective dummy
    execute store result score @s my_objective run function #bs.xp:get_total_points

    # See the result (execute on you)
    tellraw @a [{"text":"I have "},{"score":{"name":"@s","objective":"my_objective"}},{"text":" total points"}]
    ```

:::::
:::::{tab-item} Progress bar

**`#bs.xp:get_progress`**

Get the fill progress of the xp bar (per cent mille).

Inputs

:   (execution) `as <players>`
    : The players from which you want to get the bar progress.

Outputs

:   (return): int
    : The pcm of the bar filled (rounded to the lowest integer)

Example

:   Get the portion filled in your XP bar

    ```mcfunction
    # Once (execute on you)
    scoreboard objectives add my_objective dummy
    execute store result score @s my_objective run function #bs.xp:get_progress

    # See the result
    scoreboard obective setdisplay sidebar my_objective
    ```

:::::

::::::

> **Credits**: Leirof, Aksiome

---

### Set

::::::{tab-set}
:::::{tab-item} Levels
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:set_levels`**

Set the player levels.

Inputs

:   (execution) `as <players>`
    : The players to set levels from.

    (macro variable) `levels`: int
    : The amount of levels to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your level to 42 using a macro.

    ```mcfunction
    # Once (execute on you)
    function #bs.xp:set_levels {levels:42}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:set_levels`**

Set the player levels.

Inputs

:   (execution) `as <players>`
    : The players to set levels from.

    (storage) `bs:in xp.set_levels.levels`: int
    : The amount of levels to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your level to 61 using the storage.

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in xp.set_levels.levels set value 61
    function #bs.xp:set_levels

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:set_levels`**

Set the player levels.

Inputs

:   (execution) `as <players>`
    : The players to set levels from.

    (score) `$xp.set_levels.levels bs.in`: int
    : The amount of levels to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your level to 1 using a score.

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $xp.set_levels.levels bs.in 1
    function #bs.xp:set_levels

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
:::::{tab-item} Points
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:set_points`**

Set the player points.

Inputs

:   (execution) `as <players>`
    : The players to set points from.

    (macro variable) `points`: int
    : The amount of points to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your points to 42 using a macro.

    ```mcfunction
    # Once (execute on you)
    function #bs.xp:set_points {points:42}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:set_points`**

Set the player points.

Inputs

:   (execution) `as <players>`
    : The players to set points from.

    (storage) `bs:in xp.set_points.points`: int
    : The amount of points to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your points to 61 using the storage.

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in xp.set_points.points set value 61
    function #bs.xp:set_points

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:set_points`**

Set the player points.

Inputs

:   (execution) `as <players>`
    : The players to set points from.

    (score) `$xp.set_points.points bs.in`: int
    : The amount of points to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your points to 1 using a score.

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $xp.set_points.points bs.in 1
    function #bs.xp:set_points

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
:::::{tab-item} Total points
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:set_total_points`**

Set the total player points.

Inputs

:   (execution) `as <players>`
    : The players you want to set the total XP.

    (macro variable) `points`: int
    : The amount of XP to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your total XP amount to 42.

    ```mcfunction
    # Once (execute on you)
    function #bs.xp:set_total_points {points:42}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:set_total_points`**

Set the total player points.

Inputs

:   (execution) `as <players>`
    : The players you want to set the total XP.

    (storage) `bs:in xp.set_total_points.points`: int
    : The amount of XP to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your total XP amount to 61.

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in xp.set_total_points.points set value 61
    function #bs.xp:set_total_points

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:set_total_points`**

Set the total player points.

Inputs

:   (execution) `as <players>`
    : The players you want to set the total XP.

    (score) `$xp.set_total_points.points bs.in`: int
    : The amount of XP to set.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Set your total XP amount to 1.

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $xp.set_total_points.points bs.in 1
    function #bs.xp:set_total_points

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
:::::{tab-item} Progress bar
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:set_progress`**

Fill partially the XP bar.

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar.

    (macro variable) `progress`: int
    : The per cent mille of the bar to fill.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Fill your bar at 50%.

    ```mcfunction
    # Once
    function #bs.xp:set_progress {progress:50000}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:set_progress`**

Fill partially the XP bar.

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar.

    (storage) `bs:in xp.set_progress.progress`: int
    : The per cent mille of the bar to fill.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Fill your bar at 50%.

    ```mcfunction
    # Once
    data modify storage bs:in xp.set_progress.progress set value 50000
    function #bs.xp:set_progress

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:set_progress`**

Fill partially the XP bar.

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar.

    (score) `$xp.set_progress.progress bs.in`: int
    : The per cent mille of the bar to fill.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Fill your bar at 50%.

    ```mcfunction
    # Once
    scoreboard players set $xp.set_progress.progress bs.in 50000
    function #bs.xp:set_progress

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
::::::

> **Credits**: Leirof, Aksiome

---

### Add / Remove

::::::{tab-set}
:::::{tab-item} Levels
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:add_levels`**

Add levels to the player.

Inputs

:   (execution) `as <players>`
    : The players to add levels to.

    (macro variable) `levels`: int
    : The amount of levels to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 42 levels using a macro.

    ```mcfunction
    # Once (execute on you)
    function #bs.xp:add_levels {levels:42}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:add_levels`**

Add levels to the player.

Inputs

:   (execution) `as <players>`
    : The players to add levels to.

    (storage) `bs:in xp.add_levels.levels`: int
    : The amount of levels to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 61 levels using the storage.

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in xp.add_levels.levels set value 61
    function #bs.xp:add_levels

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:add_levels`**

Add levels to the player.

Inputs

:   (execution) `as <players>`
    : The players to add levels to.

    (score) `$xp.add_levels.levels bs.in`: int
    : The amount of levels to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 1 level using a score.

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $xp.add_levels.levels bs.in 1
    function #bs.xp:add_levels

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
:::::{tab-item} Points
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:add_points`**

Add points to the player.

Inputs

:   (execution) `as <players>`
    : The players to add points to.

    (macro variable) `points`: int
    : The amount of points to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 42 points using a macro.

    ```mcfunction
    # Once (execute on you)
    function #bs.xp:add_points {points:42}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:add_points`**

Add points to the player.

Inputs

:   (execution) `as <players>`
    : The players to add points to.

    (storage) `bs:in xp.add_points.points`: int
    : The amount of points to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 61 points using the storage.

    ```mcfunction
    # Once (execute on you)
    data modify storage bs:in xp.add_points.points set value 61
    function #bs.xp:add_points

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:add_points`**

Add points to the player.

Inputs

:   (execution) `as <players>`
    : The players to add points to.

    (score) `$xp.add_points.points bs.in`: int
    : The amount of points to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 1 point using a score.

    ```mcfunction
    # Once (execute on you)
    scoreboard players set $xp.add_points.points bs.in 1
    function #bs.xp:add_points

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
:::::{tab-item} Progress bar
::::{tab-set}
:::{tab-item} Macro variable

**`#bs.xp:add_progress`**

Fill partially the XP bar.

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar.

    (macro variable) `progress`: int
    : The per cent mille of the bar to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 25% to the fill level of your bar.

    ```mcfunction
    # Once
    function #bs.xp:add_progress {progress:25000}

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Storage

**`#bs.xp:add_progress`**

Fill partially the XP bar.

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar.

    (storage) `bs:in xp.add_progress.progress`: int
    : The per cent mille of the bar to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 25% to the fill level of your bar.

    ```mcfunction
    # Once
    data modify storage bs:in xp.add_progress.progress set value 25000
    function #bs.xp:add_progress

    # See the result
    # look at your XP bar in survival mode
    ```
:::
:::{tab-item} Score

**`#bs.xp:add_progress`**

Fill partially the XP bar.

Inputs

:   (execution) `as <players>`
    : The players to fill the XP bar.

    (score) `$xp.add_progress.progress bs.in`: int
    : The per cent mille of the bar to add.

Outputs

:   (state) players xp
    : The players XP is updated.

Example

:   Add 25% to the fill level of your bar.

    ```mcfunction
    # Once
    scoreboard players set $xp.add_progress.progress bs.in 25000
    function #bs.xp:add_progress

    # See the result
    # look at your XP bar in survival mode
    ```
:::
::::
:::::
::::::

```{admonition} How to remove
:class: tip

You can use negative numbers to remove experience from the player.

```

> **Credits**: Leirof, Aksiome

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
