# 🏷️ ID

**`bs.id:_`**

The management of entity IDs allows to identify precisely
an entity. Useful for example in the case of a shooting game to know who
is shooting at whom.

## Check ID

**`bs.id:check`**

Allows to compare the ``bs.id`` scores of the entities
with the ``bs.targetId`` score of the entity having executed the
function.

:Inputs:

    (execution) `as <entity>`
    : The entity that hold the target score (ID check must be performed on one entity at a time)

    (score) `@s bs.targetId`
    : The ID to compare with the other entities.

:Outputs:

    (tag) `@s bs.id.checker`
    : The entity that executed the function.

    ```{admonition} Future deprecation warning
    :class: important

    The `bs.id.checker` tag will no longer be given in the future. This change is motivated by the feedbacks we recieved, asking the lib to minimize the number of scores, tags and entities created.
    ```
    
    (tag) `@e bs.id.upper`
    : The entities whose `bs.id` score is higher than the `bs.targetId` score.
    
    (tag) `@e bs.id.lower`
    : The entities whose `bs.id` score is lower than the `bs.targetId` score.
    
    (tag) `@e bs.id.match`
    : The entities whose `bs.id` score is equal to the `bs.targetId` score.

:Example:

    Find the entity (or entities) with ID 3:

    ```
    # Once
    scoreboard players set @s bs.targetId 3
    function bs.id:check

    # See the result
    execute unless entity @e[tag=bs.id.match] run tellraw @a [{"text": "No entity found :'(", "color": "dark_gray"}]
    execute as @e[tag=bs.id.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "Hey! Are you looking for me?", "color": "dark_gray"}]
    ```

# Check parent ID

`check_parent` : Compares the `bs.id.parent` scores of the entities
with the `bs.id.target` score of the entity that executed the
function.

* The latter receives the tag `bs.id.parent.checker`.
* The other entities receive the tag
   * `bs.id.parent.upper` if their score `bs.id.parent` is higher than the `id.targetId`
   * `bs.id.parent.lower` if their score `bs.id.parent` is lower than the `id.targetId`
   * `bs.id.parent.match` if their score `bs.id.parent` is equal to the `id.targetId`

**Example:**

Find all child entities of Bob:

```
# Once
execute as @e[name=Bob,limit=1] run scoreboard players operation @s bs.targetId = @s bs.id
function bs.id:check_parent

# See the result
execute unless entity @e[tag=bs.id.parent.match] run tellraw @a [{"text": "No entity found :'(", "color": "dark_gray"}]
execute as @e[tag=bs.id.parent.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "Hey! Are you looking for me?", "color": "dark_gray"}]
```

## Get simple unique ID

**`bs.id:get_suid`**

(Simple Unique ID) Allows the entity executing the function to get a `bs.id` score different from all other entities that have already executed the function.

:Input:

    (execution) `as <entities>`
    : The entities you want to assign an ID to.

:Outputs:

    (score) `@s bs.id`
    : The ID of the executing entity.
    
    (tag) `@s bs.id.set`
    : A tag to confirm the entity got a unique ID.

    ```{admonition} Future deprecation warning
    :class: important

    The `bs.id.set` tag will no longer be given in the future. Instead, you can check if the entity have an ID using `@e[scores={bs.id=1..}]`. This change is motivated by the feedbacks we recieved, asking the lib to minimize the number of scores, tags and entities created.
    ```
    
    (tag) `@s bs.id.type.suid`
    : The entity that executed the function.

:Example:

    Give an ID to all players:

    ```
    # In a loop to give an ID to the players who connect
    execute as @a[tag=!bs.id.set] run function bs.id:get_suid

    # See the result
    scoreboard objective setdisplay sidebar bs.id
    ```

# Get chain unique ID

`get_cuid` : (Chain Unique ID) Allows the entity running the function
to get a score `bs.id` different from all other entities that have
already run the function. The difference with `get_suid` is in the way
the scores are assigned.

* ID scores are assigned dynamically based on the available scores, so that they form a string. So, if there are 5 entities, they will be numbered from 1 to 5, without any "hole". In order not to break this string, you must also execute the `update_cuid` function in a loop.
* Returns the ID on the `bs.id` score of the executing entity.
* Give the tag `bs.id.set` and `bs.id.type.cuid` to the entities that have already executed the function

**Example:**

Give an ID to all players:

```
# In a loop to give an ID to the players who connect
execute as @a[tag=!bs.id.set] run function bs.id:get_cuid

# See the result
scoreboard objective setdisplay sidebar bs.id
```

# Update chain unique ID

`update_cuid` : Allows to update all the CUID of the entities.
Executes globally (the source entity does not matter, executing it
multiple times per tick will have no effect)

**Example:**

Keep the ID string free of holes and duplicates:

```
# To be executed once at the beginning of each tick
function bs.id:update_cuid

# See the result
scoreboard objective setdisplay sidebar bs.id
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