# 🎯 Hitbox

**`#bs.hitbox:help`**

Get and check the hitboxes of blocks or entities.

```{epigraph}
"Talent hits a target no one else can hit; Genius hits a target no one else can see."

-- Arthur Schopenhauer
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Get

::::{tab-set}
:::{tab-item} Block

```{function} #bs.hitbox:get_block

Get the hitbox of a block as a shape, represented by a list of boxes. Dimensions range from 0 to 16 as for models. This means that a full block will return the following: `[[0, 0, 0, 16, 16, 16]]`.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which to get the block hitbox.

:Outputs:
  **Storage `bs:out hitbox.shape` [array]**: An array of cube coordinates.

  **Storage `bs:out hitbox.offset.[x,z]`**: Hitbox offset (used for exemple by flowers).
```

*Get the hitbox of a stair:*

```mcfunction
setblock 0 0 0 minecraft:oak_stairs
execute positioned 0 0 0 run function #bs.hitbox:get_block
data get storage bs:out hitbox
```

:::
:::{tab-item} Entity

```{function} #bs.hitbox:get_entity

Get the width and height of an entity.

:Inputs:
  **Execution `as <entities>`**: Entity to get the hitbox from.

:Outputs:
  **Storage `bs:out hitbox.height`**: Height of the entity.

  **Storage `bs:out hitbox.width`**: Width of the entity.

  **Storage `bs:out hitbox.scale`**: Scaling of the hitbox.
```

*Get the hitbox of an armor_stand:*

```mcfunction
execute summon minecraft:armor_stand run function #bs.hitbox:get_entity
execute as @e[type=armor_stand,sort=nearest,limit=1] run tellraw @a [{"text":"Height: ","color":"gray"},{"score":{"name":"@s","objective":"bs.height"},"color":"gold"},{"text":", Width: "},{"score":{"name":"@s","objective":"bs.width"},"color":"gold"}]
```

```{important}
Static entities, such as paintings and item frames, do not provide height and width information. Instead, they return a shape similar to blocks in `bs:out hitbox`.
```

:::
::::

> **Credits**: Aksiome

---

### Is inside

::::{tab-set}
:::{tab-item} Block

```{function} #bs.hitbox:is_in_block

Check if the execution position is inside the hitbox of a block.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to check.

:Outputs:
  **Return**: Success or failure.
```

*Say My name is Pavel if you are inside a block:*

```mcfunction
execute if function #bs.hitbox:is_in_block run say My name is Pavel
```

:::
:::{tab-item} Entity

```{function} #bs.hitbox:is_in_entity

Check if the execution position is inside the entity executing the command.

:Inputs:
  **Execution `as <entities>`**: Entity to check.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to check.

:Outputs:
  **Return**: Success or failure.
```

*Check if you are inside an entity:*

```mcfunction
execute summon minecraft:cow if function #bs.hitbox:is_in_entity run say Oh no...
```

:::
::::

> **Credits**: Aksiome

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
