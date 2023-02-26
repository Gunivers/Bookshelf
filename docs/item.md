# ⛏️ Item

`bs.item:` : Systems allowing to manipulate items

---

## Get item ID

`get`: Gives to the item executing the function a score corresponding
to a unique identifier corresponding to its nature.

- The result is stored on the score `bs.item.id`
- Must be executed on an item only

*Example:* 

Make sure that all the items in the world have their identifier
indicated by their score `bs.item.id`

```
# Once
execute as @e[type=item] run function bs:item/get

# See the result
scoreboard objectives setdisplay sidebar bs.item.id
```

---

## Set item from ID

`set`: Create an item corresponding to the identifier stored on the
executing entity.

- The identifier must be given via the score `bs.item.id`.

*Example:*

Make the player named Steve create an item in front of him,
corresponding to the identifier he has given on his score
`bs.item.id`

```
# Once
execute as Steve at @s anchored eyes positioned ^ ^ ^1 run function bs:item/set

# See the result
# Look in front of Steve
```

---

## Convert item ID to block ID

`convert_to_block`: Convert an item id stored on the executing entity
to a block id

- The item identifier must be indicated by the ``bs.item.id`` score
- The block identifier will be stored on the score ``bs.block.id``

*Example:*

Make the player named Steve get the block identifier corresponding to
the item that is indicated by his score ``bs.item.id``

```
# Once
execute as Steve run function bs:item/convert_to_block

# See the result
scoreboard objectives setdisplay sidebar bs.block.id
```

<div align=center>
    <a href="https://www.youtube.com/watch?v=c1agAFYpaaE" align=center>
        <img src="https://gunivers.net/wp-content/uploads/2022/06/watch-on-youtube.png" alt="drawing" width="200"/>
    </a>
</div>

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