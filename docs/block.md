
# 🧱 Block

`bs.block:` Systems for manipulating blocks

---

## Get block ID

`get` : Gives the executing entity a score corresponding to a unique identifier of the block + blockstate located where the function is executed.

- The result is stored on the score `bs.block.id`

*Example:* 

Make the player named Steve retrieve the block id under his feet.

```
# Once
execute as Steve at @s positioned ~ ~-1 ~ run function bs.block:get

# See the result
scoreboard objectives setdisplay sidebar bs.block.id
```

---

## Set block from ID

`set`: Places a block (and associated blockstates) corresponding to the identifier stored on the executing entity.

- The identifier must be given via the score `bs.block.id`.

*Example:*

Make the player named Steve put the block on top of him, corresponding to the identifier he has given on his score `bs.block.id`

```
# Once
execute as Steve at @s positioned ~ ~2 ~ run function bs.block:set

# See the result
# Look above Steve
```

---

## Convert block ID to item ID

`convert_to_item`: Convert a block id stored on the executing entity to an item id.

- The block identifier must be indicated by the `bs.block.id` score
- The item identifier will be stored on the score `bs.item.id`

*Example:*

Make the player named Steve get the item identifier corresponding to the block that is indicated by his score `bs.block.id`

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

{octicon}`device-camera-video` Watch the video
```

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