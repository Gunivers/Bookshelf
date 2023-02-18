# 🏃 Move

`bs.move:`: This folder contains all the functions related to the
movement of the entity.

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

## Move using local vector

`by_local_vector`: Allows to move the entity according to its vector
on each axis of the local reference frame.

* A vector of 1000 on an axis will lead to a movement of a block at each execution of the function.
* The sum of the movements on each axis will give a movement in space (thus in 3 dimensions), corresponding to the global vector of the entity.
* The system takes as input the 3 scores `bs.vector[Left,Up,Front]` (1000 <=> 1 block).

:::{warning}
The system does not include any speed limit. However, the
resources consumed by this function are proportional to the number
of blocks/tick at which the entity moves.
:::

*Example:*

- Apply a movement of 0.3 blocks per tick to the left to all boats:

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vectorLeft 300
    scoreboard players set @e[type=boat] bs.vectorUp 0
    scoreboard players set @e[type=boat] bs.vectorFront 0

    # In loop
    execute as @e[type=boat] run function bs.move:by_local_vector
    ```

---

## Move by classic vector

`by_vector`: Allows to move the entity according to its vector on each
axis of the relative reference frame.

* A vector of 1000 on an axis will lead to a movement of a block at each execution of the function.
* The sum of the movements on each axis will give a movement in space (thus in 3 dimensions), corresponding to the global vector of the entity.
* The system takes as input the 3 scores `bs.vector[X,Y,Z]` (1000 <=> 1 block) as well as the `bs.collision` score.
* This last score allows to manage the behavior. If it is not filled in or equal to 0, the entity will cross all the blocks
* Each behavior is defined via a dedicated file in `glib_config:move/by_vector/`
* It is possible to manage the precision of collision detection by placing the tag `bs.config.override` on the entity and then changing its score `bs.precision` to the desired value (1000 <=> 1 block, 500 <=> 0.5 blocks)
* If the precision is higher than 1 block, the entity will have a certain probability to cross the walls of a block of thickness.

:::{warning}
The system does not include any speed limit. However, the
collision accuracy breaks the vector into multiple vectors with a
length corresponding to the detection accuracy. The system will then
enter a loop to restore the initial vector by successively applying
the "vector pieces". Thus, the longer the length of the vector
compared to the collision detection accuracy, the more resources the
system will require to perform optimally.
:::

*Examples:*

- Apply a movement of 0.3 blocks per tick in the X direction to all boats
(simulating a sea current):

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vectorX 300
    scoreboard players set @e[type=boat] bs.vectorY 0
    scoreboard players set @e[type=boat] bs.vectorZ 0

    # In loop
    execute as @e[type=boat] run function bs.move:by_vector
    ```

- Take into account collisions and make the boat stop, with a precision of
0.1 block:

    ```
    # Once
    scoreboard players set @e[type=boat] bs.vectorX 300
    scoreboard players set @e[type=boat] bs.vectorY 0
    scoreboard players set @e[type=boat] bs.vectorZ 0
    scoreboard players set @e[type=boat] bs.collision 2
    tag @e[type=boat] add bs.config.override
    scoreboard players set @e[type=boat] bs.precision 100

    # In loop
    execute as @e[type=boat] run function bs.move:by_vector
    ```

---

## Move forward

`forward`: Allows to move the entity according to the direction
towards which it looks and its vector `bs.vectorFront`

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
    scoreboard players set @e[type=boat] bs.vectorFront 300

    # In a loop
    execute as @e[type=boat] run function bs.move:forward
    ```

--- 

## Find a path "as to at"

`pathfind_ata`: Allows to determine a path between the position of the
source entity and the execution position of the function.

* By default, the function will make 500 tests (defined via the `bs.var1` score). This limit allow to avoid the function taking too many ressources if the path is too complexe or impossible to find.
* The behavior is defined by the variable `bs.var3` which, by default is 0, corresponding to a behavior of a zombie, creeper, skeleton or a player (terrestrial entity of size 1*2*1).
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