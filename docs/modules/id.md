# 🏷️ ID

**`#bs.id:help`**

The management of entity IDs allows to identify precisely
an entity. Useful for example in the case of a shooting game to know who
is shooting at whom.

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Give simple unique ID

**`#bs.id:give_suid`**

(Simple Unique ID) Allows the entity executing the function to get a `bs.id` score different from all other entities that have already executed the function.

Input

:   (execution) `as <entities>`
    : The entities you want to assign an ID to.

Outputs

:   (score) `@s bs.id`
    : The ID of the executing entity.

Example

:   Give an ID to all players:

    ```mcfunction
    # Give an id to all players who don’t have one
    execute as @a unless score @s bs.id matches 1.. run function #bs.id:give_suid

    # See the result
    scoreboard objective setdisplay sidebar bs.id
    ```

> **Credits**: Aksiome, KubbyDev

---

### Give chain unique ID

**`#bs.id:give_cuid`**

(Chain Unique ID) Allows the entity running the function to get a score `bs.cid` different from all other entities that have already run the function. The difference with `get_suid` is in the way the scores are assigned:

* ID scores are assigned dynamically based on the available scores.
* If there are 5 entities, they will be numbered from 1 to 5, without any "hole".
* In order not to break this chain, you must also execute the `update_cuids` function.

Input

:   (execution) `as <entities>`
    : The entities you want to assign an ID to.

Outputs

:   (score) `@s bs.cid`
    : The ID of the executing entity.

Example

:   Give an ID to all players:

    ```mcfunction
    # Give an id to all players who don’t have one
    execute as @a unless score @s bs.cid matches 1.. run function #bs.id:give_cuid

    # See the result
    scoreboard objective setdisplay sidebar bs.cid
    ```

> **Credits**: Aksiome, KubbyDev

---

### Update chain unique ID

**`#bs.id:update_cuids`**

Allows to update all entities CUIDs.

Example

:   Keep the ID string free of holes and duplicates:

    ```mcfunction
    function #bs.id:update_cuids

    # See the result
    scoreboard objective setdisplay sidebar bs.cid
    ```

> **Credits**: Aksiome, KubbyDev

---

## 👁️ Predicates

You can find below all predicates available in this module.

---

### Check simple unique ID

::::{tab-set}
:::{tab-item} Match

**`bs.id:suid_match`**

Find an entity that has the same ``bs.id`` as the input value.

Input

:   (score) `$id.suid.check bs.in`: int
    : The value to check against.

Example

:   Find the entity with a ``bs.id`` equal to 1:

    ```mcfunction
    scoreboard players set $id.suid.check bs.in 1

    execute as @e[predicate=bs.id:suid_match,limit=1] run say I'm the one
    ```

:::
:::{tab-item} Lower

**`bs.id:suid_lower`**

Filter entities that have a ``bs.id`` less than or equal to the input value.

Input

:   (score) `$id.suid.check bs.in`: int
    : The value to check against.

Example

:   Filter entities that have a ``bs.id`` less than or equal to 17:

    ```mcfunction
    scoreboard players set $id.suid.check bs.in 17

    execute as @e[predicate=bs.id:suid_lower] run say I'm a minor
    ```

:::
:::{tab-item} Upper

**`bs.id:suid_upper`**

Filter entities that have a ``bs.id`` greater than or equal to the input value.

Input

:   (score) `$id.suid.check bs.in`: int
    : The value to check against.

Example

:   Filter entities that have a ``bs.id`` greater than or equal to 18:

    ```mcfunction
    scoreboard players set $id.suid.check bs.in 18

    execute as @e[predicate=bs.id:suid_upper] run say I'm an adult
    ```
:::
:::{tab-item} Has

**`bs.id:has_suid`**

Check if an entity has a ``bs.id`` score.

Example

:   Give an suid to all entities that aren't identified by a ``bs.id`` score:

    ```mcfunction
    execute as @e[predicate=!bs.id:has_suid] run function #bs.id:give_suid
    ```

:::
::::

> **Credits**: Aksiome

---

### Check chain unique ID

::::{tab-set}
:::{tab-item} Match

**`bs.id:cuid_match`**

Find an entity that has the same ``bs.cid`` as the input value.

Input

:   (score) `$id.cuid.check bs.in`: int
    : The value to check against.

Example

:   Find the entity with a ``bs.cid`` equal to 1:

    ```mcfunction
    scoreboard players set $id.cuid.check bs.in 1

    execute as @e[predicate=bs.id:cuid_match,limit=1] run say I'm the one
    ```

:::
:::{tab-item} Lower

**`bs.id:cuid_lower`**

Filter entities that have a ``bs.cid`` less than or equal to the input value.

Input

:   (score) `$id.cuid.check bs.in`: int
    : The value to check against.

Example

:   Filter entities that have a ``bs.cid`` less than or equal to 17:

    ```mcfunction
    scoreboard players set $id.cuid.check bs.in 17

    execute as @e[predicate=bs.id:cuid_lower] run say I'm a minor
    ```

:::
:::{tab-item} Upper

**`bs.id:cuid_upper`**

Filter entities that have a ``bs.cid`` greater than or equal to the input value.

Input

:   (score) `$id.cuid.check bs.in`: int
    : The value to check against.

Example

:   Filter entities that have a ``bs.cid`` greater than or equal to 18:

    ```mcfunction
    scoreboard players set $id.cuid.check bs.in 18

    execute as @e[predicate=bs.id:cuid_upper] run say I'm an adult
    ```
:::
:::{tab-item} Has

**`bs.id:has_cuid`**

Check if an entity has a ``bs.cid`` score.

Example

:   Give a cuid to all entities that aren't identified by a ``bs.cid`` score:

    ```mcfunction
    execute as @e[predicate=!bs.id:has_cuid] run function #bs.id:give_cuid
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
