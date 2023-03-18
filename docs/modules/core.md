# ⚙️ Core

```{admonition} Be careful!
:class: warning

This module is the heart of the lib. It contain functions (detailed below) that can be usefull to design other Bookshelf modules, but are not directly designed to be used by the mapmaker. Do not remove or edit this module.
```

---

## Default entity

**`bs.core:entity/summon`**

This function allow to create a new default Bookshelf entity (currently markers).

:Input:

    **(execution) `as <entities>` or `positioned <x> <y> <z>`**
    : The position where you want to summon the new entity

:Output:

    **(state) a new entity was created
    : It can be identified by the tag `bs.new` and that is automatically cleared if it is not used anymore. A new call to the function will clear every entity wearing the tag `bs.new`

---

## Safe kill

**`bs.core:entity/safe_kill`**

Allows to cleanly delete an entity. This function erases the scores of the entity and teleports it to layer 0 before killing it.

:Inputs:

    **(execution) `as <entities>`**
    : The entities to kill. Cannot be a player.

    **(tag) `@s bs.permanent`**
    : All the entity that have this tag will never be killed by this function.

:Outputs:

    **(state) removed entities**
    : The entities that are not protected have been killed without any animation (teleported under the map before being killed).

    **(tag) `@s bs.core.entity.safekill.excluded`**
    : The entities that the system didn't killed get this tag. This tag is removed from all entities when the function is called in order to represent only the entities that was spared from the last execution.

:Example:

    Kill all zombies:

    ```
    # Once
    execute as @e[type=zombie] run function bs.core:entity/safe_kill
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