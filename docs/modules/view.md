# 👀 View

**`#bs.view:help`**

The view functions allow to get some practical information about what an entity sees or aims.

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

### Can see "as to at"

**`#bs.view:can_see_ata`**

Determine if an entity, from its current position, can have an unobstructed view to the execution position.

Inputs

:   (execution) `as <entities>`
    : Entities that are being checked.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : Position you want to check for visibility.

    (storage) `bs:in view.can_see_ata.run`: string
    : Callback command to run on entities that have an unobstructed view to the execution position.

Example

:   Run a command on entities that may be able to see you:

    ```mcfunction
    # Once
    data modify storage bs:in view.can_see_ata.run set value "tag @s add can_spot_player"
    execute as @e at @s run function #bs.view:can_see_ata
    ```

> **Credits**: Aksiome, Leirof

---

### In view "as to at"

**`#bs.view:in_view_ata`**

Determine if an entity has the execution position in its field of view.

Inputs

:   (execution) `as <entities>`
    : Entities that are being checked.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : Position you want to check if it's within the field of view.

    (storage) `bs:in view.in_view_ata.angle`: number
    : Angle that represents the field of view (based on the grid and not the fov option).

    (storage) `bs:in view.in_view_ata.run`: string
    : Callback command to run on entities that have the execution position in their field of view.

Example

:   Check whether the position 0 5 0 is in your field of view:

    ```mcfunction
    # Once
    execute as @s positioned 0 5 0 run function #bs.view:in_view_ata
    ```

> **Credits**: Aksiome, Leirof

---

### Looking at

**`#bs.view:looking_at`**

Run a command on the entity the player is looking at.

Inputs

:   (execution) `as <players>`
    : Players from which you want to get the looked at entity.

    (storage) `bs:in view.looking_at.run`: string
    : Callback command to run on the entity the player is looking at.

    (tag) `<entity> bs.view.looking_at.candidate`
    : Tag that must be added to entities that you wish to check (this tag is removed on each call).


Example

:   Make the armor_stand the player is looking at glow:

    ```mcfunction
    # Once
    tag @e[type=minecraft:armor_stand,distance=..5] add bs.view.looking_at.candidate
    data modify storage bs:in view.looking_at.run set value "effect give @s minecraft:glowing 1 0 true"
    function #bs.view:looking_at
    ```

> **Credits**: Aksiome

---

### Raycast

**`#bs.view:raycast`**

Cast a ray that stops on blocks and/or entities.

Inputs

:   (execution) `as <entities>`
    : Origin of the ray using both position and rotation.

    (storage) `bs:in view.raycast.run`: string
    : Callback command to run when the ray hit something.

    (storage) `bs:in view.raycast.max_distance`: number
    : Maximum ray travel distance (default: 16.0).

    (storage) `bs:in view.raycast.ignored_blocks`: string
    : Block tag for blocks that should be ignored (default: `#bs.view:air`).

    (storage) `bs:in view.raycast.ignored_entities`: string
    : Entity tag for entities that should be ignored (default: `#bs.view:intangible`).

    (storage) `bs:in view.raycast.target_entities`: bool
    : Whether the ray should stop on entities or not.

Example

:   Summon a particle on any collision:

    ```mcfunction
    # Once
    data modify storage bs:in view.raycast.target_entities set value true
    data modify storage bs:in view.raycast.run set value "execute positioned ^ ^ ^-.05 run particle minecraft:small_flame ~ ~ ~ 0 0 0 0 1 force"

    # Loop
    execute as @a at @s run function #bs.view:raycast
    ```

:   Update the block a player is looking at:

    ```mcfunction
    # Once
    data modify storage bs:in view.raycast.target_entities set value false
    data modify storage bs:in view.raycast.run set value "setblock ~ ~ ~ end_stone"
    execute as @a at @s run function #bs.view:raycast
    ```

> **Credits**: Aksiome

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
