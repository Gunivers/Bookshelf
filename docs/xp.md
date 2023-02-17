# 🏅 XP

`bs.xp:` all function concerning the experience points and levels.

## Add levels

`add_levels`: Add levels from a score

- Take the amount of levels to add on the score `bs.var0`

*Example:*

Add you 123 levels

```
# Once
scoreboard players set @s bs.var0 123
bs.xp:add_levels

# See the result
# look at your XP bar in survival mode
```

## Add points

`add_points`: Add XP from a score

- Take the amount of XP to add on the score `bs.var0`

*Example:*

Add you 1234 XP

```
# Once
scoreboard players set @s bs.var0 1234
bs.xp:add_points

# See the result
function bs.xp:get_total_points
scoreboard objectives setdisplay sidebar bs.res0
# run the add function here
function bs.xp:get_total_points
```

## Get bar

`get_bar`: Get the portion of the bar filled

- The percentage of the bar filled is returned on the score `bs.res0`
- Due to the division, the result is rounded to the lowest integer. If you want to round to the nearest integer, use the function `get_bar_rounded`

*Example:*

Get the portion filled in your XP bar

```
# Once
bs.xp:get_bar

# See the result
scoreboard obective setdisplay sidebar bs.res0
```

## Get bar rounded

`get_bar_rounded`: Get the portion of the bar filled

- The percentage of the bar filled is returned on the score `bs.res0`
- This function require the module `bs.math`

*Example:*

Get the portion filled in your XP bar

```
# Once
bs.xp:get_bar_rounded

# See the result
scoreboard obective setdisplay sidebar bs.res0
```

## Get Level Points

`get_level_points`: Get the points required to pass to the next level.

- Returns the number of points required on `bs.res0`

*Example:*

Get the number of points required to pass from the level 15 to the level 16

```
# Once
scoreboard players set @s bs.var0 15
bs.xp:get_total_points

# See the result
tellraw @a ["",{"text":"I need "},{"score":{"name":"@s","objective":"bs.res0"}},{"text":" to pass this level"}]
```

## Get Total Points

`get_total_points`: Get the total amount of points of the player.

-  Returns the amount of XP points on the score `bs.res0`

*Example:*

Get your amount of points

```
# Once (execute on you)
bs.xp:get_total_points

# See the result (execute on you)
tellraw @a ["",{"text":"I have "},{"score":{"name":"@s","objective":"bs.res0"}},{"text":" XP"}]
```

## Remove levels

`remove_levels`: Remove levels from a score

-  Take the amount of levels to remove on the score `bs.var0`

*Example:*

Remove you 123 levels

```
# Once
scoreboard players set @s bs.var0 123
bs.xp:add_levels

# See the result
# look at your XP bar in survival mode
```

## Remove points

`remove_points`: Remove XP from a score

-  Take the amount of XP to remove on the score `bs.var0`

*Example:*

Remove you 1234 XP

```
# Once
scoreboard players set @s bs.var0 1234
bs.xp:remove_points

# See the result
function bs.xp:get_total_points
scoreboard objectives setdisplay sidebar bs.res0
# run the remove function here
function bs.xp:get_total_points
```

## Set bar

`set_bar`: Fill partially the XP bar

-  Take the percentage of the bar filled via the `bs.var0` score

*Example:*

Fill your bar at 50%

```
# Once
scoreboard players set @s bs.var0 50
bs.xp:set_bar

# See the result
# look at your XP bar in survival mode
```

## Set levels

`set_levels`: Set levels from a score

- Take the amount of levels to set on the score `bs.var0`

*Example:*

Set your level to 123

```
# Once
scoreboard players set @s bs.var0 123
bs.xp:set_levels

# See the result
# look at your XP bar in survival mode
```

## Set points

`set_points`: Set XP from a score

- Take the amount of XP to set on the score `bs.var0`

*Example:*

Set your XP to 1234

```
# Once
scoreboard players set @s bs.var0 1234
bs.xp:set_points

# See the result
function bs.xp:get_total_points
scoreboard objectives setdisplay sidebar bs.res0
# run the set function here
function bs.xp:get_total_points
```

## Set total points

`set_total_points`: Set XP from a score

-  Take the total amount of XP to set on the score `bs.var0`

*Example:*

Set your total XP amount to 1234

```
# Once
scoreboard players set @s bs.var0 1234
bs.xp:set_total_points

# See the result
function bs.xp:get_total_points
scoreboard objectives setdisplay sidebar bs.res0
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