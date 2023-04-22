# 👀 View

**`bs.view:_`**

The view functions allow to get some practical information about what the entity sees or aims.

```{image} img/eye.png
:class: dark-light p-2
:align: center
```

```{epigraph}

"Vision is the act of seeing things as they could be, not as they are."

-- Gretchen Rubin
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Aimed block

**`bs.view:aimed_block`**

Places an entity in the block the source is looking at.

:Inputs:

    (execution) `as <entities>`
    : The entities from which you want to get the aimed block.

:Outputs:

    (state) new entity created
    : The entity is created at the aimed block. It can be identified by the tag `bs.view.AimedBlock` and the score `bs.id.parent` corresponding to the ID of the entity executing the function. If there was already an entity with the tag `bs.view.AimedBlock` and the same `bs.id.parent`, it will be replaced.

    ```{admonition} In case there is no ID system
    :class: tip

    If you don't have an ID system, this function have to be used on 1 entity at a time. THe score `bs.id.parent` will then not be used. An ID system can be added using the [`bs.id` module](id).
    ```

:Example:

    Place in entity on the aimed block:

    ```
    # Once
    function bs.view:aimed_block
    ```

> **Credits**: Leirof

---

### Aimed entity

**`bs.view:aimed_entity`**

Identify the first entity aimed by the source entity.

:Inputs:

    (execution) `as <entity>`
    : The entity from which you want to get the aimed entity. Note that you can use this function on one entity at a time.

:Outputs:

    (tag) `<aimed entity> bs.view.AimedEntity`
    : The tag `bs.view.AimedEntity` is added to the aimed entity. The tag is remove from all other entities.

:Example:

    Place in entity on the targeted block:

    ```
    # Once
    function bs.view:aimed_entity
    ```

> **Credits**: Leirof

---

### Can see "as to at"

**`bs.view:can_see_ata`**

Allows to know if the entity, from its position, may be able to see the execution position of the command (if no block obstructs its vision).

:Inputs:

    (execution) `as <entities>`
    : The entities from which you want to know if they can see the execution position of the function.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position you want to know if the entities can see it.

:Outputs:

    (tag) `@s bs.view.CanSee`
    : The tag is added to the source entities that can see the execution position of the function.

:Example:

    Knowing whether an entity sees you:

    ```
    # Once
    execute as @e at @s run function bs.view:has_in_front_ata
    ```

> **Credits**: Leirof

---

### Has in front "as to at"

**`bs.view:has_in_front_ata`**

Allows to know if the execution position of the function is in front of the source entity.

:Inputs:

    (execution) `as <entities>`
    : The entities from which you want to know if the execution position of the function is in front of them.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position you want to know if the entities can see it.

:Outputs:

    (tag) `@s bs.view.HasInFront`
    : The tag is added to the source entities that have the execution position of the function in front of them.

:Example:

    Know if the position 0 5 0 is in front of you:

    ```
    # Once
    execute as @s positioned 0 5 0 run function bs.view:has_in_front_ata
    ```

> **Credits**: Leirof

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