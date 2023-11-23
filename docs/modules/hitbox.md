# 🎯 Hitbox

**`#bs.hitbox:help`**

Get and check hitboxes of blocks or entities.

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Get

::::{tab-set}
:::{tab-item} Block

```{function} #bs.hitbox:get_block

Get the hitbox of a block as an array of array of coordinates.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which to get the block hitbox.

:Outputs:
  **Storage `bs:out hitbox` [array]**: An array of cube coordinates.
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

Get the `width` and `height` of an entity.

:Inputs:
  **Execution `as <entities>`**: Entity to get the hitbox from.

  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which to get the entity hitbox.

:Outputs:
  **Score `$hitbox.height bs.out`**: Height of the entity.

  **Score `$hitbox.width bs.out`**: Width of the entity.
```

*Get the hitbox of an armor_stand:*

```mcfunction
execute summon minecraft:armor_stand run function #bs.hitbox:get_entity
tellraw @a [{"text":"Height: ","color":"dark_gray"},{"score":{"name":"$hitbox.height","objective":"bs.out"},"color":"gold"},{"text":", Width: ","color":"dark_gray"},{"score":{"name":"$hitbox.width","objective":"bs.out"},"color":"gold"}]
```

```{important}
Static entities, such as paintings and item frames, do not provide height and width information. Instead, they return an array of coordinates, similar to blocks.
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
execute summon minecraft:cow if function #bs.hitbox:is_in_entity run say Oh no step bro
```

:::
::::

> **Credits**: Aksiome

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
