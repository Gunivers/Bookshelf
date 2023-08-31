# 🧭 Position

**`#bs.position:help`**

This module allow to manage the position and rotation of entities via scores. It is thus possible to detect the position of an entity or to place it at a position defined by a score.

<div align=center>

![](img/position.jpg)

</div>

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Get position

::::{tab-set}
:::{tab-item} x,y,z
**`#bs.position:get_pos {scale:<scaling>}`**

Get the execution position of the function and store the coordinates in 3 scores.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.pos.[x,y,z]`
    : The coordinates of the position.

Example

:   Detect and display the position of the nearest spider (without scaling):

    ```mcfunction
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos {scale:1}

    # See the resluts
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.x"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.y"}, "color": "gold"}{"text":", Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.z"}, "color": "gold"}]
    ```
:::
:::{tab-item} x only
**`#bs.position:get_pos_x {scale:<scaling>}`**

Get the execution x position of the function and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.pos.x`
    : The coordinates of the position.

Example

:   Detect and display the x position of the nearest spider (without scaling):

    ```mcfunction
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos_x {scale:1}

    # See the resluts
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.x"}, "color": "gold"}]
    ```
:::
:::{tab-item} y only
**`#bs.position:get_pos_y {scale:<scaling>}`**

Get the execution y position of the function and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.pos.y`
    : The coordinates of the position.

Example

:   Detect and display the y position of the nearest spider (without scaling):

    ```mcfunction
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos_y {scale:1}

    # See the resluts
    tellraw @a [{"text": "Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.y"}, "color": "gold"}]
    ```
:::
:::{tab-item} z only
**`#bs.position:get_pos_z {scale:<scaling>}`**

Get the execution z position of the function and store the coordinate in a score.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.pos.z`
    : The coordinates of the position.

Example

:   Detect and display the z position of the nearest spider (without scaling):

    ```mcfunction
    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos_z {scale:1}

    # See the resluts
    tellraw @a [{"text": "Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.z"}, "color": "gold"}]
    ```
:::
::::

> **Credits**: Aksiome, Leirof

---

### Get rotation

::::{tab-set}
:::{tab-item} h,v
**`#bs.position:get_rot {scale:<scaling>}`**

Get the execution rotation of the function and store it in 2 scores.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `rotated as <entity>`
    : The rotation to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.rot.[h,v]`
    : The rotation of the position.
:::
:::{tab-item} h only
**`#bs.position:get_rot_h {scale:<scaling>}`**

Get the execution horizontal rotation of the function.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `rotated as <entity>`
    : The rotation to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.rot.h`
    : The horizontal rotation of the position.
:::
:::{tab-item} v only
**`#bs.position:get_rot_v {scale:<scaling>}`**

Get the execution vertical rotation of the function.

Inputs

:   (execution) `as <entities>`
    : The entity to store the score to.

    (execution) `at <entity>` or `rotated as <entity>`
    : The rotation to get.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `@s bs.rot.v`
    : The vertical rotation of the position.
:::
::::

> **Credits**: Aksiome, Leirof, theogiraudet

---

### Normalize rotation

**`#bs.position:normalize_rot`**

Allows to normalize the oriantations (replace the `bs.rot.h` and `bs.rot.v` scores respectively in the interval [0;360[ and [0;180[)

> **Credits**: Leirof

---

### Get relative

**`#bs.position:get_relative_ata {scale:<scaling>}`**

Obtain the execution position of the function relatively to the position of the executing entity.

Inputs

:   (execution) `as <entities>`
    : The entity, considered at the reference point.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position te get the relative position from.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (score) `$position.get_relative_ata.[x,y,z] bs.out`
    : The relative coordinates.

Example

:   Get your position relative to the nearest Creeper (without scaling):

    ```
    # Once
    execute as @s at @e[type=creeper,limit=1,sort=nearest] run function #bs.position:get_relative_ata {scale:1}

    # See the result
    tellraw @a [{"text": "Relative position : X=", "color": "dark_gray"},{"score":{"name":"$position.get_relative_ata.x", "objective": "bs.out"}, "color": "gold"},{"text":", Y=", "color": "dark_gray"},{"score":{"name":"$position.get_relative_ata.y", "objective": "bs.out"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"$position.get_relative_ata.z","objective":"bs.out"},"color":"gold"}]
    ```

> **Credits**: Aksiome, Leirof

---

### Get distance

::::{tab-set}
:::{tab-item} Normal

**`#bs.position:get_distance_ata {scale:<scaling>}`**

Calculates the distance between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (return): int
    : The distance between the two positions.

Example

:   Calculate the distance between you and the nearest sheep (in blocks, without scaling):

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] store result score @s bs.out run function #bs.position:get_distance_ata {scale:1}

    # See the result
    tellraw @a [{"text": "Distance: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out"}, "color": "gold"}]
    ```

```{admonition} Performance tip
:class: tip

For several applications such as comparing distances, you can use the squared distance instead of the "normal" distance. It is a bit faster to calculate.
```

:::
:::{tab-item} Squared

**`#bs.position:get_distance_squared_ata {scale:<scaling>}`**

Calculates the squared distance between the source entity and the execution position of the function.

Inputs

:   (execution) `as <entities>`
    : The entity positioned at the reference point.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position to get the distance from.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (return): int
    : The squared distance between the two positions.

Example

:   Calculate the squared distance between you and the nearest sheep (in blocks, without scaling):

    ```
    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] store result score @s bs.out run function #bs.position:get_distance_squared_ata {scale:1}

    # See the result
    tellraw @a [{"text": "Distance^2: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out"}, "color": "gold"}]
    ```

```{admonition} Score limitation
:class: warning

Scores in Minecraft have a limited size similar to a signed int variable. The latter is huge, but not unlimited and can overflow. Since this function uses powers of 2 to calculate the result, you should prefer the "normal" version (which does not rely on powers) when working over big distances.
```

:::
::::

> **Credits**: Aksiome, Leirof

---

### Set position

::::{tab-set}
:::{tab-item} x,y,z
**`#bs.position:set_pos {scale:<scaling>}`**

Allows to place the entity at a precise coordinate given by scores.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.pos.[x,y,z]`
    : The coordinates to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity position
    : The entity has been teleported to the coordinates indicated by the scores.

Example

:   Teleport to 48.85 0 2.29:

    ```mcfunction
    # Once
    scoreboard players set @s bs.pos.x 4885
    scoreboard players set @s bs.pos.y 0
    scoreboard players set @s bs.pos.z 229
    function #bs.position:set_pos {scale:0.001}

    ```
:::
:::{tab-item} x only
**`#bs.position:set_pos_x {scale:<scaling>}`**

Allows to place the entity at a precise x coordinate given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.pos.x`
    : The x coordinate to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity position
    : The entity has been teleported to the x coordinate indicated by the score.

Example

:   Teleport to 70 ~ ~:

    ```mcfunction
    # Once
    scoreboard players set @s bs.pos.x 70
    function #bs.position:set_pos_x {scale:1}

    ```
:::
:::{tab-item} y only
**`#bs.position:set_pos_y {scale:<scaling>}`**

Allows to place the entity at a precise y coordinate given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.pos.y`
    : The y coordinate to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity position
    : The entity has been teleported to the y coordinate indicated by the score.

Example

:   Teleport to ~ 82 ~:

    ```mcfunction
    # Once
    scoreboard players set @s bs.pos.y 82
    function #bs.position:set_pos_y {scale:1}

    ```
:::
:::{tab-item} z only
**`#bs.position:set_pos_z {scale:<scaling>}`**

Allows to place the entity at a precise z coordinate given by a score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.pos.z`
    : The z coordinate to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity position
    : The entity has been teleported to the z coordinate indicated by the score.

Example

:   Teleport to ~ ~ 65:

    ```mcfunction
    # Once
    scoreboard players set @s bs.pos.z 65
    function #bs.position:set_pos_z {scale:1}

    ```
:::
::::

> **Credits**: Aksiome, Leirof

---

### Set rotation

::::{tab-set}
:::{tab-item} h,v
**`#bs.position:set_rot {scale:<scaling>}`**

Allows to orientate the entity according to its scores.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.rot.[h,v]`
    : The rotation to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity rotation
    : The entity has been teleported to the rotation indicated by the scores.
:::
:::{tab-item} h only
**`#bs.position:set_rot_h {scale:<scaling>}`**

Allows to orientate the entity according to its horizontal rotation score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.rot.h`
    : The rotation to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity rotation
    : The entity has been teleported to the rotation indicated by the horizontal score.
:::
:::{tab-item} v only
**`#bs.position:set_rot_v {scale:<scaling>}`**

Allows to orientate the entity according to its vertical rotation score.

Inputs

:   (execution) `as <entities>`
    : The entity to teleport.

    (score) `@s bs.rot.v`
    : The rotation to teleport to.

    (macro variable) `scale`: double
    : Scalar for the function's outputs.

Outputs

:   (state) Entity rotation
    : The entity has been teleported to the rotation indicated by the vertical score.
:::
::::

> **Credits**: Aksiome, Leirof, theogiraudet

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


