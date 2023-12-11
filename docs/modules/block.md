
# 🧱 Block

**`bs.block:_`**

Systems for manipulating blocks

```{admonition} Heavy module
:class: warning

This module use search trees, that perform very fast operations that have not been considered in the current Minecraft commands system. The counterpart of such systems is that they use thousands of similar files. Thus, we highly recomended you to keep the datapack compressed when you use this module. A simple zip compression is enough to drastically reduce the size of the datapack and the number of files will no longer be a problem.
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Get block ID

**`bs.block:get`**

Gives the executing entity a score corresponding to a unique identifier of the block + blockstate located where the function is executed.

Inputs

:   (execution) `as <entities>`
    : The entity on which you want to store the block ID

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position of the block you want to get the ID from

Outputs

:   (score) `@s bs.block.id`
    : The unique identifier of the block + blockstate

Example

:   Make the player named Steve retrieve the block id under his feet.

    ```
    # Once
    execute as Steve at @s positioned ~ ~-1 ~ run function bs.block:get

    # See the result
    scoreboard objectives setdisplay sidebar bs.block.id
    ```

> **Credits**: theogiraudet & Leirof

---

### Set block from ID

**`bs.block:set`**

Places a block (and associated blockstates) corresponding to the identifier stored on the executing entity.

Inputs

:   (execution) `as <entities>`
    : The entity on which the block ID is stored

    (score) `@s bs.block.id`
    : The unique identifier of the block + blockstate

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position of the block you want to get the ID from

Outputs

:   (state) block placed
    : The block corresponding to the identifier is placed at the position indicated by the function

Example

:   Make the player named Steve put the block on top of him, corresponding to the identifier he has given on his score `bs.block.id`

    ```
    # Once
    execute as Steve at @s positioned ~ ~2 ~ run function bs.block:set

    # See the result
    # Look above Steve
    ```

> **Credits**: theogiraudet & Leirof

---

### Convert block ID to item ID

**`bs.block:convert_to_item`**

Convert a block id stored on the executing entity to an item id.

Inputs

:   (execution) `as <entities>`
    : The entity on which you want to convert the block ID to an item ID

    (score) `@s bs.block.id`
    : The unique identifier of the block + blockstate

Outputs

:   (score) `@s bs.item.id`
    : The unique identifier of the item corresponding to the block

Example

:   Make the player named Steve get the item identifier corresponding to the block that is indicated by his score `bs.block.id`

    ```
    # Once
    execute as Steve run function bs.block:convert_to_item

    # See the result
    scoreboard objectives setdisplay sidebar bs.item.id
    ```

```{button-link} https://youtu.be/4d-q02JPbaI
:color: primary
:align: center
:shadow:

🎬 Watch the video
```

> **Credits**: theogiraudet & Leirof

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
