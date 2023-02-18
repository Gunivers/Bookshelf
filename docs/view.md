# 👀 View

`bs.view:`:The view functions allow to get some practical information about what the entity sees or aims.

```{epigraph}

"Vision is the act of seeing things as they could be, not as they are."

-- Gretchen Rubin
```

---

## Get aimed block

`aimed_block`: Places an armor_stand having the tag `bs.aimedBlock` and a score `bs.parentId` corresponding to the Id of the running entity.

*Example:*

Place in entity on the aimed block:

```
# Once
function bs.view:aimed_block
```

---

## Get aimed entity

`aimed_entity`: Gives the tag `bs.raycastEntity` and a score `bs.parentId` corresponding to the Id of the entity executing at the targeted entity by the player.

*Example:*

Place in entity on the targeted block:

```
# Once
function bs.view:aimed_entity
```

---

## Can see "as to at"

`can_see_ata`: Allows to know if the entity, from its position, may be able to see the execution position of the command (if no block obstructs its vision). If so, the source entity will get the tag `bs.canSee`.

*Example:*

Knowing whether an entity sees you:

```
# Once
execute as @e at @s run function bs.view:has_in_front_ata
```

---

## Has in front "as to at"

`has_in_front_ata`: Allows to know if the execution position of the function is in front of the source entity. If it is, the source entity gets the tag `bs.hasInFront`.

*Example:*

Know if the position 0 5 0 is in front of you:

```
# Once
execute as @s positioned 0 5 0 run function bs.view:has_in_front_ata
```

---

# 💬 Did it help you?

Feel free to leave your questions and feedbacks below!

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