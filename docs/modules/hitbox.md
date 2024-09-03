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

:::::{tab-set}
::::{tab-item} Block

```{function} #bs.hitbox:get_block

Get the hitbox of a block as a shape, represented by a list of boxes coordinates. Dimensions range from 0 to 16 as for models.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which to get the block hitbox.

:Outputs:
  **Storage `bs:out hitbox`**:
  :::{treeview}
  - {nbt}`compound` Block collision box
    - {nbt}`list` **shape**: A list of cube coordinates (format: `[[xmin, ymin, zmin, xmax, ymax, zmax]]`).
    - {nbt}`compound` **offset**: Hitbox offset (used for example by flowers).
      - {nbt}`double` **x**: Number describing the X coordinate offset.
      - {nbt}`double` **z**: Number describing the Z coordinate offset.
  :::
```

*Get the hitbox of stairs:*

```mcfunction
setblock 0 0 0 minecraft:oak_stairs
execute positioned 0 0 0 run function #bs.hitbox:get_block
data get storage bs:out hitbox
```

::::
::::{tab-item} Entity

```{function} #bs.hitbox:get_entity

Get the width and height of an entity.

:Inputs:
  **Execution `as <entities>`**: Entity to get the hitbox from.

:Outputs:
  **Storage `bs:out hitbox`**:
  :::{treeview}
  - {nbt}`compound` Block collision box
    - {nbt}`double` **height**: Height of the entity.
    - {nbt}`double` **width**: Width of the entity.
    - {nbt}`double` **scale**: Scaling of the hitbox.
  :::
```

*Get the hitbox of an armor_stand:*

```mcfunction
execute summon minecraft:armor_stand run function #bs.hitbox:get_entity
data get storage bs:out hitbox
```

```{important}
Static entities, such as paintings and item frames, do not provide height and width information. Instead, they return a shape similar to blocks in `bs:out hitbox`.
```

::::
:::::

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

*Say "My name is Pavel" if you are inside a block:*

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
