# ⛏️ Item

**`bs.item:_`**

Systems allowing to manipulate items

```{admonition} Heavy module
:class: warning

This module use search trees, that perform very fast operations that have not been considered in the current Minecraft commands system. The counterpart of such systems is that they use thousands of similar files. Thus, we highly recomended you to keep the datapack compressed when you use this module. A simple zip compression is enough to drastically reduce the size of the datapack and the number of files will no longer be a problem.
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Get item ID

**`bs.item:get`**

Gives to the item executing the function a score corresponding
to a unique identifier corresponding to its nature.

Inputs

:   (execution) `as <items>`
    : The items on which you want to store the item ID

Outputs

:   (score) `@s bs.item.id`
    : The unique identifier of the item

Example

:   Make sure that all the items in the world have their identifier
    indicated by their score `bs.item.id`

    ```
    # Once
    execute as @e[type=item] run function bs:item/get

    # See the result
    scoreboard objectives setdisplay sidebar bs.item.id
    ```

> **Credits**: theogiraudet & Leirof

---

### Set item from ID

**`bs.item:set`**

Create an item corresponding to the identifier stored on the
executing entity.

Inputs

:   (execution) `as <entities>`
    : The entity on which the item ID is stored

    (score) `@s bs.item.id`
    : The unique identifier of the item

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position of the item you want to create

Outputs

:   (state) summoned item
    : An item corresponding to the identifier was summoned

Example

:   Make the player named Steve create an item in front of him,
    corresponding to the identifier he has given on his score
    `bs.item.id`

    ```
    # Once
    execute as Steve at @s anchored eyes positioned ^ ^ ^1 run function bs:item/set

    # See the result
    # Look in front of Steve
    ```

> **Credits**: theogiraudet & Leirof

---

### Convert item ID to block ID

**`bs.item:convert_to_block`**

Convert an item id stored on the executing entity
to a block id

Inputs

:   (execution) `as <entities>`
    : The entity on which the item ID is stored

    (score) `@s bs.item.id`
    : The unique identifier of the item

Outputs

:   (score) `@s bs.block.id`
    : The unique identifier of the block (with the default blockstate)

Example

:   Make the player named Steve get the block identifier corresponding to
    the item that is indicated by his score ``bs.item.id``

    ```
    # Once
    execute as Steve run function bs:item/convert_to_block

    # See the result
    scoreboard objectives setdisplay sidebar bs.block.id
    ```
```{button-link} https://www.youtube.com/watch?v=c1agAFYpaaE
:color: primary
:align: center
:shadow:

🎬 Watch the video
```

> **Credits**: theogiraudet & Leirof

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