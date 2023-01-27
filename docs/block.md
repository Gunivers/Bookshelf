
# 🧱 Block

`bs.block:` Systems for manipulating blocks

---

## Get block ID

`get` : Gives the executing entity a score corresponding to a unique identifier of the block + blockstate located where the function is executed.

- The result is stored on the score `bs.blockId`

*Example:* 

Make the player named Steve retrieve the block id under his feet.

```
# Once
execute as Steve at @s positioned ~ ~-1 ~ run function bs.block:get

# See the result
scoreboard objectives setdisplay sidebar bs.blockId
```

---

## Set block from ID

`set`: Places a block (and associated blockstates) corresponding to the identifier stored on the executing entity.

- The identifier must be given via the score `bs.blockId`.

*Example:*

Make the player named Steve put the block on top of him, corresponding to the identifier he has given on his score `bs.blockId`

```
# Once
execute as Steve at @s positioned ~ ~2 ~ run function bs.block:set

# See the result
# Look above Steve
```

---

## Convert block ID to item ID

`convert_to_item`: Convert a block id stored on the executing entity to an item id.

- The block identifier must be indicated by the `bs.blockId` score
- The item identifier will be stored on the score `bs.itemId`

*Example:*

Make the player named Steve get the item identifier corresponding to the block that is indicated by his score `bs.blockId`

```
# Once
execute as Steve run function bs.block:convert_to_item

# See the result
scoreboard objectives setdisplay sidebar bs.itemId
```

```{button-link} https://youtu.be/4d-q02JPbaI
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch the video
```