# 🧭 Position

**`#bs.position:help`**

Manage entity positions and rotations using scores.

```{image} /_imgs/modules/position.png
:align: center
:class: dark_light p-2
```

```{epigraph}
"The excitement lies in the exploration of the world around us."

-- Jim Peebles
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Canonical to local

```{function} #bs.position:canonical_to_local

Convert a position (using the relative reference frame) into a local position (using the local reference frame).

:Inputs:
  **Execution `rotated as <entity>` or `rotated <h> <v>`**: Rotation to use for the conversion.

  **Scores `@s bs.pos.[x,y,z]`**: Position to convert.

:Outputs:
  **Scores `@s bs.pos.[x,y,z]`**: Converted position.
```

> **Credits**: Aksiome

---

### Get distance

::::{tab-set}
:::{tab-item} Normal

```{function} #bs.position:get_distance_ata {scale:<scaling>}

Compute the distance between the source entity and the execution position of the function.

:Inputs:
  **Execution `as <entities>`**: Entity positioned at the reference point.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get the distance from.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Return | Score `$position.get_distance_ata bs.out`**: Distance between the two positions.
```

*Calculate the distance between you and the nearest sheep (in blocks, without scaling):*

```mcfunction
# Once
execute at @e[type=sheep,limit=1,sort=nearest] run function #bs.position:get_distance_ata {scale:1}

# See the result
tellraw @a [{"text": "Distance: ", "color": "dark_gray"},{"score":{"name":"$position.get_distance_ata", "objective": "bs.out"}, "color": "gold"}]
```

```{admonition} Performance tip
:class: tip

For several applications such as comparing distances, you can use the squared distance instead of the "normal" distance. It is a bit faster to compute.
```

:::
:::{tab-item} Squared

```{function} #bs.position:get_distance_squared_ata {scale:<scaling>}

Compute the squared distance between the source entity and the execution position of the function.

:Inputs:
  **Execution `as <entities>`**: Entity positioned at the reference point.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get the distance from.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Return | Score `$position.get_distance_ata bs.out`**: Squared distance between the two positions.
```

*Calculate the squared distance between you and the nearest sheep (in blocks, without scaling):*

```mcfunction
# Once
execute at @e[type=sheep,limit=1,sort=nearest] run function #bs.position:get_distance_squared_ata {scale:1}

# See the result
tellraw @a [{"text": "Distance^2: ", "color": "dark_gray"},{"score":{"name":"$position.get_distance_squared_ata", "objective": "bs.out"}, "color": "gold"}]
```

```{admonition} Score limitation
:class: warning

Scores in Minecraft have a limited size similar to a signed int variable. The latter is huge, but not unlimited and can overflow. Since this function uses powers of 2 to calculate the result, you should prefer the "normal" version (which does not rely on powers) when working over big distances.
```

:::
::::

> **Credits**: Aksiome, Leirof

---

### Get position

::::{tab-set}
:::{tab-item} x,y,z

```{function} #bs.position:get_pos {scale:<scaling>}

Get the execution position of the function and store the coordinates in 3 scores.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Scores `@s bs.pos.[x,y,z]`**: Coordinates of the position.
```

*Detect and display the position of the nearest spider (without scaling):*

```mcfunction
# Once
execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos {scale:1}

# See the resluts
tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.x"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.y"}, "color": "gold"},{"text":", Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.z"}, "color": "gold"}]
```

:::
:::{tab-item} x only

```{function} #bs.position:get_pos_x {scale:<scaling>}

Get the execution x position of the function and store the coordinate in a score.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Score `@s bs.pos.x`**: Coordinates of the position.
```

*Detect and display the x position of the nearest spider (without scaling):*

```mcfunction
# Once
execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos_x {scale:1}

# See the resluts
tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.x"}, "color": "gold"}]
```

:::
:::{tab-item} y only

```{function} #bs.position:get_pos_y {scale:<scaling>}

Get the execution y position of the function and store the coordinate in a score.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Score `@s bs.pos.y`**: Coordinates of the position.
```

*Detect and display the y position of the nearest spider (without scaling):*

```mcfunction
# Once
execute as @e[type=spider,limit=1,sort=nearest] run function #bs.position:get_pos_y {scale:1}

# See the resluts
tellraw @a [{"text": "Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "bs.pos.y"}, "color": "gold"}]
```

:::
:::{tab-item} z only

```{function} #bs.position:get_pos_z {scale:<scaling>}

Get the execution z position of the function and store the coordinate in a score.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Score `@s bs.pos.z`**: Coordinates of the position.
```

*Detect and display the z position of the nearest spider (without scaling):*

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

### Get relative

::::{tab-set}
:::{tab-item} As to at

```{function} #bs.position:get_relative_ata {scale:<scaling>}

Get the execution position of the function relatively to the position of the executing entity.

:Inputs:
  **Execution `as <entities>`**: Entity considered at the reference point.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position te get the relative position from.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Scores `@s bs.pos.[x,y,z]`**: Relative coordinates.
```

*Get your position relative to the nearest Creeper (without scaling):*

```mcfunction
# Once
execute as @s at @e[type=creeper,limit=1,sort=nearest] run function #bs.position:get_relative_ata {scale:1}

# See the result
tellraw @a [{"text": "Relative position : X=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.pos.x"}, "color": "gold"},{"text":", Y=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.pos.y"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.pos.z"},"color":"gold"}]
```

:::
:::{tab-item} From direction

```{function} #bs.position:get_relative_from_dir {scale:<scaling>}

Get a direction vector based on the execution position and rotation. Scale is used as the norm/length.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `positioned <x> <y> <z> rotated <h> <v>`**: Position and rotation te get the relative position from.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Scores `@s bs.pos.[x,y,z]`**: Relative coordinates.
```

*Get your position relative to the position that is 2 blocks in front of you (scaled by 1000):*

```mcfunction
# Once
execute at @s run function #bs.position:get_relative_from_dir {scale:2000}

# See the result
tellraw @a [{"text": "Relative position : X=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.pos.x"}, "color": "gold"},{"text":", Y=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.pos.y"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.pos.z"},"color":"gold"}]
```

:::
::::

> **Credits**: Aksiome, Leirof

---

### Get rotation

::::{tab-set}
:::{tab-item} h,v

```{function} #bs.position:get_rot {scale:<scaling>}

Get the execution rotation of the function and store it in 2 scores.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `rotated <h> <v>`**: Rotation to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Scores `@s bs.rot.[h,v]`**: Rotation of the position.
```

:::
:::{tab-item} h only

```{function} #bs.position:get_rot_h {scale:<scaling>}

Get the execution horizontal rotation of the function.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `rotated <h> <v>`**: Rotation to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Score `@s bs.rot.h`**: Horizontal rotation of the position.
```

:::
:::{tab-item} v only

```{function} #bs.position:get_rot_v {scale:<scaling>}

Get the execution vertical rotation of the function.

:Inputs:
  **Execution `as <entities>`**: Entity to store the score to.

  **Execution `at <entity>` or `rotated <h> <v>`**: Rotation to get.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **Score `@s bs.rot.v`**: Vertical rotation of the position.
```

:::
::::

> **Credits**: Aksiome, Leirof, theogiraudet

---

### Normalize rotation

```{function} #bs.position:normalize_rot

Normalize rotations (replace the `bs.rot.h` and `bs.rot.v` scores respectively in the interval [0;360[ and [0;180[)
```

> **Credits**: Leirof

---

### Set position

::::{tab-set}
:::{tab-item} x,y,z

```{function} #bs.position:set_pos {scale:<scaling>}

Place an entity at coordinates given by scores.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Scores `@s bs.pos.[x,y,z]`**: Coordinates to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the coordinates indicated by the scores.
```

*Teleport to 48.85 0 2.29:*

```mcfunction
# Once
scoreboard players set @s bs.pos.x 4885
scoreboard players set @s bs.pos.y 0
scoreboard players set @s bs.pos.z 229
function #bs.position:set_pos {scale:0.001}
```
:::
:::{tab-item} x only

```{function} #bs.position:set_pos_x {scale:<scaling>}

Place an entity at a precise x coordinate given by scores.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Score `@s bs.pos.x`**: Coordinate x to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the x coordinate indicated by the score.
```

*Teleport to 70 ~ ~:*

```mcfunction
# Once
scoreboard players set @s bs.pos.x 70
function #bs.position:set_pos_x {scale:1}
```

:::
:::{tab-item} y only

```{function} #bs.position:set_pos_y {scale:<scaling>}

Place an entity at a precise y coordinate given by scores.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Score `@s bs.pos.y`**: Coordinate y to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the y coordinate indicated by the score.
```

*Teleport to ~ 82 ~:*

```mcfunction
# Once
scoreboard players set @s bs.pos.y 82
function #bs.position:set_pos_y {scale:1}
```
:::
:::{tab-item} z only


```{function} #bs.position:set_pos_z {scale:<scaling>}

Place an entity at a precise z coordinate given by scores.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Score `@s bs.pos.z`**: Coordinate z to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the z coordinate indicated by the score.
```

*Teleport to ~ ~ 65:*

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

```{function} #bs.position:set_rot {scale:<scaling>}

Rotate an entity according to its scores.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Scores `@s bs.rot.[h,v]`**: Rotation to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the rotation indicated by the scores.
```

:::
:::{tab-item} h only


```{function} #bs.position:set_rot_h {scale:<scaling>}

Rotate an entity according to its horizontal rotation score.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Score `@s bs.rot.h`**: Rotation to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the rotation indicated by the horizontal score.
```

:::
:::{tab-item} v only

```{function} #bs.position:set_rot_v {scale:<scaling>}

Rotate an entity according to its vertical rotation score.

:Inputs:
  **Execution `as <entities>`**: Entity to teleport.

  **Score `@s bs.rot.v`**: Rotation to teleport to.

  **Macro Var `scale`**: Scalar for the function's outputs.

:Outputs:
  **State**: Entity is teleported to the rotation indicated by the vertical score.
```

:::
::::

> **Credits**: Aksiome, Leirof, theogiraudet

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
