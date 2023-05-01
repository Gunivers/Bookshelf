# 📍 Location

**`bs.location:_`**

This module allow to manage the position of entities via scores. It is thus possible to detect the position of an entity or to place it at a position defined by a score.

<div align=center>

![](img/location.jpg)

</div>

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Add up coordinates

::::{tab-set}
:::{tab-item} Block

**`bs.location:add`**

Adds a relative position vector to the position of the executing entity, then teleports the entity to
this new position.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.[rx,ry,rz]`
    : The relative position vector to move the entity

Outputs

:   (state) Entity position changed 
    : The entity position have been shifted from the relative position vector

Example

:   Move Aypierre by 3 blocks on the X axis, -2 on the Y axis and 5 on the Z axis

    ```
    scoreboard players set Aypierre bs.loc.x 3
    scoreboard players set Aypierre bs.loc.y -2
    scoreboard players set Aypierre bs.loc.z 5
    execute as Aypierre at @s run function bs.location:add
    ```

:::
:::{tab-item} Milliblock

**`bs.location:add/scale/3`**

Adds a relative position vector (expressed in milliblock) to the position of the executing entity, then teleports the entity to
this new position.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.[rx,ry,rz]`
    : The relative position vector to move the entity

Outputs

:   (state) Entity position changed 
    : The entity position have been shifted from the relative position vector

Example

:   Move Aypierre by 3 blocks on the X axis, -2.345 on the Y axis and 5.1 on the Z axis

    ```
    scoreboard players set Aypierre bs.loc.x 3000
    scoreboard players set Aypierre bs.loc.y -2345
    scoreboard players set Aypierre bs.loc.z 5100
    execute as Aypierre at @s run function bs.location:add/scale/3
    ```

:::
::::

> **Credits**: Leirof

---

### Get location

::::::{tab-set}
:::::{tab-item} x,y,z

::::{tab-set}
:::{tab-item} Block

**`bs.location:get`**

Get the execution position of the function and store the coordinates in 3 scores.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.[x,y,z]`
    : The coordinates of the position

Example

:   Detect and display the position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get

    # See the resluts
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.x"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.y"}, "color": "gold"}{"text":", Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.z"}, "color": "gold"}]
    ```

:::
:::{tab-item} Milliblock

**`bs.location:get/scale/3`**

Get the execution position of the function, with a milliblock accuracy, and store the coordinates in 3 scores.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.[x,y,z]`
    : The coordinates of the position expressed in milliblocks

Example

:   Detect and display the position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/scale/3

    # See the resluts
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.x"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.y"}, "color": "gold"}{"text":", Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.z"}, "color": "gold"}]
    ```

:::
::::

:::::
:::::{tab-item} x only

::::{tab-set}
:::{tab-item} Block

**`bs.location:get/x`**

Get the execution x position of the function and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.x`
    : The coordinates of the position

Example

:   Detect and display the x position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/x

    # See the resluts
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.x"}, "color": "gold"}]
    ```

:::
:::{tab-item} Milliblock

**`bs.location:get/x/scale/3`**

Get the execution x position of the function, with a milliblock accuracy, and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.x`
    : The coordinates of the x position expressed in milliblocks

Example

:   Detect and display the x position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/x/scale/3

    # See the resluts
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.x"}, "color": "gold"}]
    ```

:::
::::

:::::
:::::{tab-item} y only

::::{tab-set}
:::{tab-item} Block

**`bs.location:get/y`**

Get the execution y position of the function and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.y`
    : The coordinates of the position

Example

:   Detect and display the y position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/y

    # See the resluts
    tellraw @a [{"text": "Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.y"}, "color": "gold"}]
    ```

:::
:::{tab-item} Milliblock

**`bs.location:get/y/scale/3`**

Get the execution y position of the function, with a milliblock accuracy, and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.y`
    : The coordinates of the y position expressed in milliblocks

Example

:   Detect and display the y position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/y/scale/3

    # See the resluts
    tellraw @a [{"text": "Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.y"}, "color": "gold"}]
    ```

:::
::::

:::::
:::::{tab-item} z only

::::{tab-set}
:::{tab-item} Block

**`bs.location:get/z`**

Get the execution z position of the function and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.z`
    : The coordinates of the position

Example

:   Detect and display the z position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/z

    # See the resluts
    tellraw @a [{"text": "Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.z"}, "color": "gold"}]
    ```

:::
:::{tab-item} Milliblock

**`bs.location:get/z/scale/3`**

Get the execution z position of the function, with a milliblock accuracy, and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to detect

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get

Outputs

:   (score) `@s bs.loc.z`
    : The coordinates of the z position expressed in milliblocks

Example

:   Detect and display the z position of the nearest spider:

    ```
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function bs.location:get/z/scale/3

    # See the resluts
    tellraw @a [{"text": "Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.loc.z"}, "color": "gold"}]
    ```

:::
::::

:::::
::::::

> **Credits**: Leirof

---

### Get distance

::::::{tab-set}
:::::{tab-item} Normal

::::{tab-set}
:::{tab-item} Block

**`bs.location:get_distance_ata`**

Calculates the distance between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from

Outputs

:   (score) `@s bs.out.0`
    : The distance in block between the two positions

Example

:   Calculate the distance between you and the nearest sheep:

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function bs.location:get_distance_ata

    # See the result
    tellraw @a [{"text": "Distance: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
    ```

:::
:::{tab-item} Milliblock

**`bs.location:get_distance_ata/scale/3`**

Calculates the distance in milliblock between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from

Outputs

:   (score) `@s bs.out.0`
    : The distance in milliblock between the two positions

Example

:   Calculate the distance in melliblock between you and the nearest sheep:

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function bs.location:get_distance_ata/scale/3

    # See the result
    tellraw @a [{"text": "Distance: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
    ```

:::
::::

```{admonition} Performance tip
:class: tip

For several applications such as comparing distances, you can use the squared distance instead of the "normal" distance. It is faster to calculate because it avoid a square root computation, which is a bit heavy for a computer, especially in Minecraft.
```

```{admonition} Dependencies
:class: dropdown

The following functions are required to use this one. Be carefull to install the corresponding module before using it.

- [`bs.math:sqrt`](math)
```

:::::
:::::{tab-item} Squared

::::{tab-set}
:::{tab-item} Block

**`bs.location:get_distance_squared_ata`**

Calculates the squared distance between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from

Outputs

:   (score) `@s bs.out.0`
    : The squared distance in block² between the two positions

Example

:   Calculate the squared distance between you and the nearest sheep:

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function bs.location:get_distance_squared_ata

    # See the result
    tellraw @a [{"text": "Distance^2 : ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
    ```
:::
:::{tab-item} Deciblock

**`bs.location:get_distance_squared_ata/scale/1`**

Calculates the squared distance (in deciblock²) between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from

Outputs

:   (score) `@s bs.out.0`
    : The squared distance in deciblock² between the two positions

Example

:   Calculate the squared distance in deciblock² between you and the nearest sheep:

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function bs.location:get_distance_squared_ata/scale/1

    # See the result
    tellraw @a [{"text": "Distance^2 : ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
    ```

:::
:::{tab-item} Milliblock

**`bs.location:get_distance_squared_ata/scale/3`**

Calculates the squared distance (in milliblock²) between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from

Outputs

:   (score) `@s bs.out.0`
    : The squared distance in milliblock² between the two positions

Example

:   Calculate the squared distance in milliblock² between you and the nearest sheep:

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function bs.location:get_distance_squared_ata/scale/3

    # See the result
    tellraw @a [{"text": "Distance^2 : ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
    ```

:::
::::

```{admonition} Score limitation
:class: warning

The scores on Minecraft represent the size of an int variable in java. The latter is huge, but not unlimited. However, calculations involving powers give results that can quickly rise to more than billions, exceeding the size limit of the variable. The game will then have no choice but to “loop” the value (if you exceed the limit of 1, the variable will go negative).
```

:::::
::::::

> **Credits**: Leirof

---

### Get relative coordinates

::::{tab-set}
:::{tab-item} Block

**`get_relative_ata`**

Obtain the execution position of the function relatively to the position of the executing entity.

Inputs

:   (execution) `as <entities>`
    : The entity, considered at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position te get the relative position from
    
Outputs

:   (score) `@s bs.loc.[rx,ry,rz]`
    : The relative coordinates

Example

:   Get your position relative to the nearest Creeper:

    ```
    # Once
    execute as @s at @e[type=creeper,limit=1,sort=nearest] run function bs.location:get_relative_ata

    # See the result
    tellraw @a [{"text": "Relative position : X=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.loc.rx"}, "color": "gold"},{"text":", Y=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.loc.ry"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.rz"},"color":"gold"}]
    ```

:::
:::{tab-item} Milliblock

**`get_relative_ata/scale/3`**

Obtain the execution position of the function relatively to the position of the executing entity, in milliblock.

Inputs

:   (execution) `as <entities>`
    : The entity, considered at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position te get the relative position from
    
Outputs

:   (score) `@s bs.loc.[rx,ry,rz]`
    : The relative coordinates in milliblock

Example

:   Get your position relative in milliblock to the nearest Creeper:

    ```
    # Once
    execute as @s at @e[type=creeper,limit=1,sort=nearest] run function bs.location:get_relative_ata/scale/3

    # See the result
    tellraw @a [{"text": "Relative position : X=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.loc.rx"}, "color": "gold"},{"text":", Y=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.loc.ry"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.rz"},"color":"gold"}]
    ```

:::
::::

> **Credits**: Leirof

---

### Is in cave?

**`is_in_cave`**

Allows to know if the location indicated by the execution mosition of the function is located in a cellar.

Inputs

:   (execution) `as <entities>`

    : The entity, considered at the reference point

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to check

Outputs

:   (score) `@s bs.out.0`
    : 1 if the position is in a cave, 0 otherwise

Example

:   To know if the skeletons are in cellars or not:

    ```
    # Once
    execute as @e[type=skeleton] at @s run function bs.location:is_in_cave

    # See the result:
    effect give @e[type=skeleton,scores={bs.out.0=1}] glowing 1 1 true
    ```

> **Credits**: Leirof

---

### Set location

::::::::{tab-set}
:::::::{tab-item} Normal
::::::{tab-set}
:::::{tab-item} x,y,z

::::{tab-set}
:::{tab-item} Block

**`bs.location:set`**

Allows to place the entity at a precise coordinate given by scores.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.[x,y,z]`
    : The coordinates to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the coordinates indicated by the scores

Example

:   Teleport in 15 100 25

    ```
    # Once
    scoreboard players set @s bs.loc.x 15
    scoreboard players set @s bs.loc.y 100
    scoreboard players set @s bs.loc.z 25
    function bs.location:set
    ```

:::
:::{tab-item} Millilock

**`bs.location:set/scale/3`**

Allows to place the entity at a precise coordinate (with a milliblock accuracy) given by scores.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.[x,y,z]`
    : The coordinates in milliblocks to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the coordinates indicated by the scores

Example

:   Teleport in 15.0 100.123 25.5

    ```
    # Once
    scoreboard players set @s bs.loc.x 15000
    scoreboard players set @s bs.loc.y 100123
    scoreboard players set @s bs.loc.z 25500
    function bs.location:set/scale/3
    ```

:::
::::
:::::
:::::{tab-item} x only

::::{tab-set}
:::{tab-item} Block

**`bs.location:set/x`**

Allows to place the entity at a precise x coordinate given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.x`
    : The x coordinates to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the x coordinates indicated by the score

Example

:   Teleport in 15 ~ ~

    ```
    # Once
    scoreboard players set @s bs.loc.x 15
    function bs.location:set/x
    ```

:::
:::{tab-item} Millilock

**`bs.location:set/x/scale/3`**

Allows to place the entity at a precise x coordinate (with a milliblock accuracy) given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.x`
    : The x coordinates in milliblocks to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the x coordinates indicated by the score

Example

:   Teleport in 15.123 ~ ~

    ```
    # Once
    scoreboard players set @s bs.loc.x 15123
    function bs.location:set/x/scale/3
    ```

:::
::::
:::::
:::::{tab-item} y only

::::{tab-set}
:::{tab-item} Block

**`bs.location:set/y`**

Allows to place the entity at a precise y coordinate given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.y`
    : The y coordinates to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the y coordinates indicated by the score

Example

:   Teleport in ~ 15 ~

    ```
    # Once
    scoreboard players set @s bs.loc.y 15
    function bs.location:set/y
    ```

:::
:::{tab-item} Milliblock

**`bs.location:set/y/scale/3`**

Allows to place the entity at a precise y coordinate (with a milliblock accuracy) given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.y`
    : The y coordinates in milliblocks to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the y coordinates indicated by the score

Example

:   Teleport in ~ 15.123 ~

    ```
    # Once
    scoreboard players set @s bs.loc.y 15123
    function bs.location:set/y/scale/3
    ```

:::
::::
:::::
:::::{tab-item} z only

::::{tab-set}
:::{tab-item} Block

**`bs.location:set/z`**

Allows to place the entity at a precise z coordinate given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.z`
    : The z coordinates to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the z coordinates indicated by the score

Example

:   Teleport in ~ ~ 15

    ```
    # Once
    scoreboard players set @s bs.loc.z 15
    function bs.location:set/z
    ```

:::
:::{tab-item} Millilock

**`bs.location:set/z/scale/3`**

Allows to place the entity at a precise z coordinate (with a milliblock accuracy) given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.z`
    : The z coordinates in milliblocks to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the z coordinates indicated by the score

Example

:   Teleport in ~ ~ 15.123

    ```
    # Once
    scoreboard players set @s bs.loc.z 15123
    function bs.location:set/z/scale/3
    ```

:::
::::
:::::
:::::::
:::::::{tab-item} Fast

::::{tab-set}
:::{tab-item} Block

**`bs.location:fast_set`**

Allows to place the entity at a precise coordinate given by scores with a dichotomic teleport method that avoid some graphical lag induced by the /data command.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.[x,y,z]`
    : The coordinates to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the coordinates indicated by the scores

Example

:   Teleport in 15 100 25

    ```
    # Once
    scoreboard players set @s bs.loc.x 15
    scoreboard players set @s bs.loc.y 100
    scoreboard players set @s bs.loc.z 25
    function bs.location:fast_set
    ```

:::
:::{tab-item} Milliblock

**`bs.location:fast_set/scale/3`**

Allows to place the entity at a precise coordinate (with a milliblock accuracy) given by scores with a dichotomic teleport method that avoid some graphical lag induced by the /data command.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport

    (score) `@s bs.loc.[x,y,z]`
    : The coordinates (in milliblock) to teleport to

Outputs

:   (state) Entity position
    : The entity has been teleported to the coordinates indicated by the scores

Example

:   Teleport in 15.0 100.123 25.5

    ```
    # Once
    scoreboard players set @s bs.loc.x 15000
    scoreboard players set @s bs.loc.y 100123
    scoreboard players set @s bs.loc.z 25500
    function bs.location:fast_set/scale/3
    ```

:::
::::
:::::::
::::::::

> **Credits**: Leirof

---

### Spread entity

::::{tab-set}

:::{tab-item} Normal

**`bs.location:spread`**

Allows to randomly teleport an entity in a given area.

Inputs

: (execution) `as <entities>`
  : The entities you want to spread

  (score) `@s bs.in.[0,1]`
  : Repectively the X and Z coordinates of the center of the area (in blocks)

  (score) `@s bs.in.2`
  : The radius of the area (in blocks)

Outputs

: (state) @s location
  : The entity was moved to a random position in the area

Example

: Teleport to an area with a radius of 10 blocks, having as its center the
  coordinate X=15, Z=25

  ```
  # Once
  scoreboard players set @s bs.in.0 15
  scoreboard players set @s bs.in.1 25
  scoreboard players set @s bs.in.2 10
  function bs.location:spread
  ```

:::

:::{tab-item} Scale 3

**`bs.location:spread/accuracy/10-3`**

Allows to randomly teleport an entity in a given area.

Inputs

: (execution) `as <entities>`
  : The entities you want to spread

  (score) `@s bs.in.[0,1]`
  : Repectively the X and Z coordinates of the center of the area (in milliblocks)

  (score) `@s bs.in.2`
  : The radius of the area (in milliblocks)

Outputs

: (state) @s location
  : The entity was moved to a random position in the area

Example

: Teleport to an area with a radius of 10.003 blocks, having as its center the coordinate X=15.1, Z=25.502

  ```
  # Once
  scoreboard players set @s bs.in.0 15100
  scoreboard players set @s bs.in.1 25502
  scoreboard players set @s bs.in.2 10003
  function bs.location:spread/accuracy/10-3
  ```

:::
::::

```{admonition} What if we put a negative radius?
:class: tip

Obviously, it doesn't make sense to have a negative radius. However, during tests, we tried for you... and it have a surprisingly cool effect!

Due to mathematical properties in the computation that are performed, if you put a negative radius, your entites will be teleported somewhere between `(x,z)` and `(x+radius,z+radius)` instead of `(x-radius,z-radius)` and `(x+radius,z+radius)`.

Who knows, maybe it can be usefull for someone, so we let it as it is ^^
```

> **Credits**: A2va

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