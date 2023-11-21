# 🏅 XP

**`#bs.xp:help`**

All functions allowing to manage experience points and levels.

```{image} img/xp.png
:class: dark-light p-2
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Add / Remove

::::{tab-set}
:::{tab-item} Levels

```{function} #bs.xp:add_levels

Add levels to the player.

:Inputs:
  **Execution `as <players>`**: Players to add levels to.

  **Macro Var `levels` [int]**: Amount of levels to add.

:Outputs:
  **State**: Players XP is updated.
```

*Add 42 levels:*

```mcfunction
# Once (execute on you)
function #bs.xp:add_levels {levels:42}

# See the result
# look at your XP bar in survival mode
```

:::
:::{tab-item} Points

```{function} #bs.xp:add_points

Add experience points to the player.

:Inputs:
  **Execution `as <players>`**: Players to add points to.

  **Macro Var `points` [int]**: Amount of points to add.

:Outputs:
  **State**: Players XP is updated.
```

*Add 42 experience points:*

```mcfunction
# Once (execute on you)
function #bs.xp:add_points {points:42}

# See the result
# look at your XP bar in survival mode
```

:::
:::{tab-item} Progress bar

```{function} #bs.xp:add_progress

Fill the XP bar partially.

:Inputs:
  **Execution `as <players>`**: Players to fill the XP bar.

  **Macro Var `progress` [number]**: Percentage of the bar to add.

:Outputs:
  **State**: Players XP is updated.
```

*Add 25.5% to the fill level of your bar:*

```mcfunction
# Once (execute on you)
function #bs.xp:add_progress {progress:25.5}

# See the result
# look at your XP bar in survival mode
```

:::
::::

```{admonition} How to remove
:class: tip

You can use negative numbers to remove experience from the player.

```

> **Credits**: Aksiome, Leirof

---

### Get

::::{tab-set}
:::{tab-item} Max points

```{function} #bs.xp:get_max_points

Get the total amount of points required to pass to the next level.

:Inputs:
  **Execution `as <players>`**: Players from whom you want to get the max amount of points.

:Outputs:
  **Return | Score `$xp.get_max_points bs.out`**: Total amount of points required for the next level.
```

*Get the total amount of points required to pass to the next level:*

```mcfunction
# Once (execute on you)
function #bs.xp:get_max_points

# See the result (execute on you)
tellraw @a [{"text":"I need a total of "},{"score":{"name":"$xp.get_max_points","objective":"bs.out"}},{"text":" points to pass to the next level"}]
```

:::
:::{tab-item} Remaining points

```{function} #bs.xp:get_remaining_points

Get the remaining amount of points needed to pass to the next level.

:Inputs:
  **Execution `as <players>`**: Players from whom you want to get the remaining points.

:Outputs:
  **Return | Score `$xp.get_remaining_points bs.out`**: Points needed for the next level.
```

*Get the amount of points needed to pass to the next level:*

```mcfunction
# Once (execute on you)
function #bs.xp:get_remaining_points

# See the result (execute on you)
tellraw @a [{"text":"I need "},{"score":{"name":"$xp.get_remaining_points","objective":"bs.out"}},{"text":" points to pass to the next level"}]
```

:::
:::{tab-item} Total points

```{function} #bs.xp:get_total_points

Get the total amount of points of a player.

:Inputs:
  **Execution `as <players>`**: Players from whom you want to get the total amount of points.

:Outputs:
  **Return | Score `$xp.get_total_points bs.out`**: Total amount of points.
```

*Get your total amount of points:*

```mcfunction
# Once (execute on you)
function #bs.xp:get_total_points

# See the result (execute on you)
tellraw @a [{"text":"I have "},{"score":{"name":"$xp.get_total_points","objective":"bs.out"}},{"text":" total points"}]
```

:::
:::{tab-item} Progress bar

```{function} #bs.xp:get_progress {scale:<scaling>}

Get the fill progress percentage of the XP bar.

:Inputs:
  **Execution `as <players>`**: Players from whom you want to get the bar progress.

  **Macro Var `scale` [number]**: Scalar for the function's outputs.

:Outputs:
  **Return | Score `$xp.get_progress bs.out`**: Fill percentage of the xp bar after scaling.
```

*Get the fill per cent mille of the xp bar:*

```mcfunction
# Once (execute on you)
function #bs.xp:get_progresss {scale:1000}

# See the result
tellraw @a [{"text":"My experience bar is filled at "},{"score":{"name":"$xp.get_progress","objective":"bs.out"}},{"text":"/100000"}]
```

:::
::::

> **Credits**: Aksiome, Leirof

---

### Set

::::{tab-set}
:::{tab-item} Levels

```{function} #bs.xp:set_levels

Set players levels.

:Inputs:
  **Execution `as <players>`**: Players to set levels to.

  **Macro Var `levels` [int]**: Amount of levels to set.

:Outputs:
  **State**: Players XP is updated.
```

*Set your level to 42 using a macro:*

```mcfunction
# Once (execute on you)
function #bs.xp:set_levels {levels:42}

# See the result
# look at your XP bar in survival mode
```

:::
:::{tab-item} Points

```{function} #bs.xp:set_points

Set players experience points.

:Inputs:
  **Execution `as <players>`**: Players to set points to.

  **Macro Var `points` [int]**: Amount of experience points to set.

:Outputs:
  **State**: Players XP is updated.
```

*Set your points to 42 using a macro:*

```mcfunction
# Once (execute on you)
function #bs.xp:set_points {points:42}

# See the result
# look at your XP bar in survival mode
```

:::
:::{tab-item} Total points

```{function} #bs.xp:set_total_points

Set players total experience points.

:Inputs:
  **Execution `as <players>`**: Players you want to set the total XP.

  **Macro Var `points` [int]**: Amount of total experience points to set.

:Outputs:
  **State**: Players XP is updated.
```

*Set your total XP amount to 42:*

```mcfunction
# Once (execute on you)
function #bs.xp:set_total_points {points:42}

# See the result
# look at your XP bar in survival mode
```

:::
:::{tab-item} Progress bar

```{function} #bs.xp:set_progress

Fill the XP bar partially.

:Inputs:
  **Execution `as <players>`**: Players to fill the XP bar.

  **Macro Var `progress` [number]**: Percentage of the bar to fill.

:Outputs:
  **State**: Players XP is updated.
```

*Fill your bar at 50%:*

```mcfunction
# Once
function #bs.xp:set_progress {progress:50.0}

# See the result
# look at your XP bar in survival mode
```

:::
::::

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
