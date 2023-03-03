# 🏃 Move

**`bs.move:_`**

Make your entity move exactly the way you want them to!

<div align=center>

![](img/2023-01-27-23-29-41.png)

</div>

```{button-link} https://youtu.be/KH3Q9F5j04I
:color: primary
:align: right
:shadow:

🎬 Watch a demo
```

```{epigraph}

"In the universe, everything is mouvement."

-- Heraclite d'Ephèse
```

---

## Move using vector

::::{tab-set}
:::{tab-item} Canonical

**`bs.move:by_vector`**

Allows to move the entity according to its vector on each
axis of the game.

:Inputs:

    (execution) `as <entity>`
    : The entity to move

    (scores) `@s bs.vector.[x,y,z]`
    : The local vector you want the entity to move on (respectively left, up and forward vectors), shifted by 3 digits (1000 $\rightarrow$ move by 1 block)

    (scores) `@s bs.collision`
    : The collision behavior. Here is built-in behaviors:

        - `0` (default): The entity will cross all the blocks
        - `-1`: The entity will bounce on all the solid blocks
        - `-2`: The entity will stick and slide on the surface it will encounter
        - `-3`: The entity will stick and stop on all the solid blocks
        - `-4`: The entity will bounce on solid blocks and reduce the total speed by 2

        ````{admonition} Create your own behavior!
        :class: dropdown

        It is possible to create your own collision behavior by creating a function callable via `glib.config:move/by_vector/collision` in which you call the collision function according to the corresponding `bs.collision` score.

        This `collision.mcfunction` file should looks like this:
        ```mcfunction
        execute if score @s bs.collision matches 1.. run function glib_config:move/by_vector/collision_type/1
        execute if score @s bs.collision matches 2.. run function glib_config:move/by_vector/collision_type/2
        execute if score @s bs.collision matches 3.. run function glib_config:move/by_vector/collision_type/3
        ...
        ```

        While your collision type functions should describe the behavior of your collisions, such as the follwing examples:

        - Perfect bounce:

            ```mcfunction
            scoreboard players operation @s[tag=bs.collisionX] bs.vector.x *= -1 bs.const
            scoreboard players operation @s[tag=bs.collisionY] bs.vector.y *= -1 bs.const
            scoreboard players operation @s[tag=bs.collisionZ] bs.vector.z *= -1 bs.const
            ```
        
        - Stop on collision:

            ```mcfunction
            scoreboard players set @s[tag=bs.collision] bs.vector.x 0
            scoreboard players set @s[tag=bs.collision] bs.vector.y 0
            scoreboard players set @s[tag=bs.collision] bs.vector.z 0
            ```

        - Slide on surface:

            ```mcfunction
            scoreboard players set @s[tag=bs.collisionX] bs.vector.x 0
            scoreboard players set @s[tag=bs.collisionY] bs.vector.y 0
            scoreboard players set @s[tag=bs.collisionZ] bs.vector.z 0
            ```

        - Bounce and reduce the total speed by 2

            ```mcfunction
            scoreboard players operation @s[tag=bs.collisionX] bs.vector.x *= -1 bs.const
            scoreboard players operation @s[tag=bs.collisionY] bs.vector.y *= -1 bs.const
            scoreboard players operation @s[tag=bs.collisionZ] bs.vector.z *= -1 bs.const

            scoreboard players operation @s[tag=bs.collision] bs.vector.x /= 2 bs.const
            scoreboard players operation @s[tag=bs.collision] bs.vector.y /= 2 bs.const
            scoreboard players operation @s[tag=bs.collision] bs.vector.z /= 2 bs.const
            ```
        ````
    
        ````{admonition} Configure the precision of collision detection
        :class: dropdown

        (tag) `@s bs.config.override` & (score) `@s bs.precision`
        : You can change the collision detection precision by placing the tag `bs.config.override` on the entity and then changing its score `bs.precision` to the desired value (1000 $\rightarrow$ 1 block, 500 $\rightarrow$ 0.5 blocks, etc.). By default, it is set to 1000 for performance reasons. You can decrease it to reduce the space between two iterations of the movement loop, which increase the sampling rate of the collision detection. We recommande to not go below 100, which is 1/10 of a block and is usually enough for most of applications.
        ````


:Outputs:

    (state) @s position
    : The new position of the entity

:Examples:

    Apply a movement of 0.3 blocks per tick in the X direction to all boats (simulating a sea current):

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vector.x 300
    scoreboard players set @e[type=boat] bs.vector.y 0
    scoreboard players set @e[type=boat] bs.vector.z 0

    # In loop
    execute as @e[type=boat] run function bs.move:by_vector
    ```

    Take into account collisions and make the boat stop, with a precision of 0.1 block:

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vector.x 300
    scoreboard players set @e[type=boat] bs.vector.y 0
    scoreboard players set @e[type=boat] bs.vector.z 0
    scoreboard players set @e[type=boat] bs.collision 2
    tag @e[type=boat] add bs.config.override
    scoreboard players set @e[type=boat] bs.precision 100

    # In loop
    execute as @e[type=boat] run function bs.move:by_vector
    ```

:::
:::{tab-item} Local

**`bs.move:by_local_vector`**

Allows to move the entity according to its vector
on each axis of the local reference frame.

:Inputs:

    (execution) `as <entity>`
    : The entity to move

    (scores) `bs.vector.[x,y,z]`
    : The local vector you want the entity to move on (respectively left, up and forward vectors), shifted by 3 digits (1000 $\rightarrow$ move by 1 block)

:Outputs:

    (state) @s position
    : The new position of the entity



:Example:

    Apply a movement of 0.3 blocks per tick to the left to all boats:

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vector.x 300
    scoreboard players set @e[type=boat] bs.vector.y 0
    scoreboard players set @e[type=boat] bs.vector.z 0

    # In loop
    execute as @e[type=boat] run function bs.move:by_local_vector
    ```

:::
::::

```{admonition} Performance tip
:class: tip

The system does not include any speed limit. However, the
resources consumed by this function are proportional to the number
of blocks/tick at which the entity moves.
```

---

## Move forward

`forward`: Allows to move the entity according to the direction
towards which it looks and its vector `bs.vector.z`

* A vector of 1000 on an axis will cause a movement of one block at each execution of the function.
* The sum of the movements on each axis will give a movement in space (thus in 3 dimensions), corresponding to the global vector of the entity.
* * The system takes as input the 3 scores `bs.vector[Left,Up,Front]` (1000 <=> 1 block).

:::{warning}
The system does not include any speed limit. However, the
resources consumed by this function are proportional to the number
of blocks/tick at which the entity moves.
:::

*Example:*

-   Apply a movement of 0.3 blocks per tick forward to all boats:

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vector.z 300

    # In a loop
    execute as @e[type=boat] run function bs.move:forward
    ```

--- 

## Find a path "as to at"

`pathfind_ata`: Allows to determine a path between the position of the
source entity and the execution position of the function.

* By default, the function will make 500 tests (defined via the `bs.in.1` score). This limit allow to avoid the function taking too many ressources if the path is too complexe or impossible to find.
* The behavior is defined by the variable `bs.in.3` which, by default is 0, corresponding to a behavior of a zombie, creeper, skeleton or a player (terrestrial entity of size 1*2*1).
   * When it is set to 1, the behavior will be similar to a bat.
   * You can create your own behaviors at any time in the `pathfind/config/` folder and link them in the `main.mcfunction` file in the same folder.
* The path is then defined by a succession of armor_stand with the tag "Glib_Pathfind_Rewind" and "Glib_Pathfind".

*Example:*

-   Find the path to the nearest armor_stand:

    ```
    # Once
    execute at @e[type=minecraft:armor_stand,limit=1,sort=nearest] run function bs.move:pathfind_ata
    ```

```{button-link} https://youtu.be/xeLjHIQ0s1Q
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch the video
```

---

## Convert vector to motion

`vector_to_motion`: Allows to move the entity according to its vector
through a motion (motion system integrated in the game).

* A vector of 1000 on an axis will move a block at each tick of the game.
* The sum of the movements on each axis will give a movement in space (thus in 3 dimensions), corresponding to the global vector of the entity.

:::{note}
This system admits a speed limit corresponding to that of the
Motions. Moreover, the entity will have by default a collision
system preventing it from crossing blocks. Moreover, adding Marker,
NoAI, NoGravity tags can block this system. Collisions are
integrated in this system but are not very reliable and therefore
not recommended. Only activated when the entity has a Collision
score greater than 1 (each value corresponds to a type of
collision). You can modify the collision reactions or create your
own in the `by_vector/config/collision/` folder. By default, the
precision of the collisions, stored on the Var5 score, is 500 (= 0,5
blocks). }}
:::

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