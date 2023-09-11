# 🔗 Link

**`#bs.link:help`**

Link positions and rotations between entities and create coherent entity structures!

<div align=center>

![](img/link.png)

</div>

```{button-link} https://www.youtube.com/watch?v=XuhVhfyVGko
:color: primary
:align: center
:shadow:

🎬 Watch a demo
```

```{admonition} Dependencies
:class: dropdown

This module require the following modules to work properly:
- [`bs.id`](id)
- [`bs.math`](math)
- [`bs.position`](position)
```

---

## 🎓 Create behaviors

With this module you can combine multiple behaviors to create your very own custom one.

---

To create a new behavior, you first need to create a new function tag. The tag must start with `bs.link:behaviors/setup` and end with `bs.link:behaviors/apply`. Between those 2 functions you are free to use any behaviors that are provided inside the `bs.link:behaviors` folder.

Example

:   This is how `#bs.link:mirror_x_plane` is implemented inside bookshelf:

    ```json
    {
      "values": [
        "bs.link:behaviors/setup",
        "bs.link:behaviors/reverse_pos_x",
        "bs.link:behaviors/imitate_pos_y",
        "bs.link:behaviors/imitate_pos_z",
        "bs.link:behaviors/reverse_rot_h",
        "bs.link:behaviors/imitate_rot_v",
        "bs.link:behaviors/apply"
      ]
    }

    ```
---

## 🔧 Functions

You can find below all the function available in this module.

---

### Create link

**`bs.link:create_link_ata`**

This function creates a link between the entity executing the function and the entity closest to the execution position.

Inputs

:   (execution) `as <entities>`
    : The link lead on a parent-child relation. The executing (source) entity must be the child.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The execution position is the position of the parent entity (the function will take the nearest entity).

Outputs

:   (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates (position + orientation).

    (score) `@s bs.link.l[x,y,z]`
    : Representing local coordinates (position only).

    (score) `@s bs.link.to`
    : Identifies the entity to which it is linked.

Example

:   Link all armor_stand to the nearest sheep:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @e[type=sheep,limit=1,sort=nearest] run function #bs.link:create_link_ata
    ```

```{note}
The output scores should generally not be directly modified because they are used as parameters for other link functions. It is then recommanded to only use the bookshelf function to modify these scores.
```

> **Credits**: Leirof, Aksiome

---

### Imitate behaviors

::::{tab-set}
:::{tab-item} All

**`#bs.link:imitate_pos_and_rot`**

Allows to replace the entity at its relative position. This operation repeated in a loop is to imitate movements and rotations of the parent entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates.

Outputs

:   (state) @s position and rotation
    : The entity is moved such as it maintain the relative position and rotation with the parent entity.

Example

:   Make armor_stands mimic your moves:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_pos_and_rot
    ```
:::
:::{tab-item} Position

**`#bs.link:imitate_pos`**

Allows to replace the entity at its relative position. This operation repeated in a loop is to imitate movements of the parent entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z]`
    : Representing the relative coordinates.

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity.

Example

:   Make armor_stands mimic your moves:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_pos
    ```
:::
:::{tab-item} Rotation

**`#bs.link:imitate_rot`**

Allows to replace the entity at its relative rotation. This operation repeated in a loop is to imitate rotations of the parent entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[h,v]`
    : Representing the relative coordinates.

Outputs

:   (state) @s rotation
    : The entity is moved such as it maintain the relative rotation with the parent entity.

Example

:   Make armor_stands mimic your moves:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_rot
    ```
:::
:::{tab-item} Along X

**`#bs.link:imitate_pos_x`**

Allows to replace the entity at its relative position along the X axis. This operation repeated in a loop is to imitate the movements of the parent entity on the X ais.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rx`
    : Representing the relative coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity along the X axis.

Example

:   Make armor_stands mimic your moves on X axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_pos_x
    ```
:::
:::{tab-item} Along Y

**`#bs.link:imitate_pos_y`**

Allows to replace the entity at its relative position along the Y axis. This operation repeated in a loop is to imitate the movements of the parent entity on the Y axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.ry`
    : Representing the relative coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity along the Y axis.

Example

:   Make armor_stands mimic your moves on Y axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_pos_y
    ```
:::
:::{tab-item} Along Z

**`#bs.link:imitate_pos_z`**

Allows to replace the entity at its relative position along the Z axis. This operation repeated in a loop is to imitate the movements of the parent entity on the Z axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rz`
    : Representing the relative coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity along the Z axis.

Example

:   Make armor_stands mimic your moves on Z axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_pos_z
    ```
:::
:::{tab-item} Horizontal angle

**`#bs.link:imitate_rot_h`**

Allows to replace the entity to its relative horizontal orientation. This operation repeated in a loop is to imitate the rotations of the parent entity on the horizontal axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rh`
    : Representing the horizontal relative rotation (rotation only).

Outputs

:   (state) @s rotation
    : The entity is rotated such as it maintain the relative orientation with the parent entity on the horizontal axis.

Example

:   Make armor_stands mimic your rotation changes on the horizontal axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_rot_h
    ```
:::
:::{tab-item} Vertical angle

**`#bs.link:imitate_rot_v`**

Allows to replace the entity to its relative vertical orientation. This operation repeated in a loop is to imitate the rotations of the parent entity on the vertical axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rv`
    : Representing the vertical relative rotation (rotation only).

Outputs

:   (state) @s rotation
    : The entity is rotated such as it maintain the relative orientation with the parent entity on the vertical axis.

Example

:   Make armor_stands mimic your rotation changes on the vertical axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:imitate_rot_v
    ```
:::
::::

```{button-link} https://youtu.be/BisY7Y_tLwg
:color: primary
:align: center
:shadow:

🎬 Watch a demo
```

> **Credits**: Leirof, Aksiome

---

### Keep local position

**`#bs.link:keep_local_pos`**

Allows to keep the local position with the parent entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.l[x,y,z]`
    : Representing the local coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the local position with the parent entity.

Example

:   Make armor_stands lock to your rotation:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:keep_local_pos
    ```


```{button-link} https://youtu.be/PmeUw8O2ZZU
:color: primary
:align: center
:shadow:

🎬 Watch a demo
```

```{admonition} How does it work?
:class: dropdown

This reference frame, unlike the relative coordinates, takes into account the rotation of the entity. Thus, when the parent entity turns on itself, the child entity will turn around it keeping its distance and the angle formed between the direction of the parent entity's look and the parent->child vector.
```

> **Credits**: Leirof, Aksiome

---

### Mirror plane

::::{tab-set}
:::{tab-item} Along X

**`#bs.link:mirror_x_plane`**

Allows to mirror the position and rotation of an entity along the X plane.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates.

Outputs

:   (state) @s position and rotation
    : The entity is moved such as it mirrors the relative position and rotation of the the parent entity.

Example

:   Make armor_stands mirror your position and rotation along the X plane:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:mirror_x_plane
    ```
:::
:::{tab-item} Along Z

**`#bs.link:mirror_z_plane`**

Allows to mirror the position and rotation of an entity along the Z plane.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates.

Outputs

:   (state) @s position and rotation
    : The entity is moved such as it mirrors the relative position and rotation of the the parent entity.

Example

:   Make armor_stands mirror your position and rotation along the Z plane:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:mirror_z_plane
    ```
:::
::::

> **Credits**: Aksiome

---

### Mirror point

**`#bs.link:mirror_point_ata`**

Allows to mirror the position and rotation of an entity around a given point.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The execution position is the position of the point around which the entity is mirrored.

Outputs

:   (state) @s position and rotation
    : The entity is moved such as it mirrors the position and rotation of the the parent entity around the given point.

Example

:   Make armor_stands mirror your position and rotation around 0 0 0:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] positioned 0 0 0 run function #bs.link:mirror_point_ata
    ```

> **Credits**: Aksiome

---

### Reverse behaviors

::::{tab-set}
:::{tab-item} All

**`#bs.link:reverse_pos_and_rot`**

Allows to determine the rotation and displacement made by the parent entity, and reproduce them in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates.

Outputs

:   (state) @s position and rotation
    : The entity is moved and rotated opposingly to the movements and rotations of the parent entity.

Example

:   Make armor_stands invert your moves and rotations:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_pos_and_rot
    ```
:::
:::{tab-item} Position

**`#bs.link:reverse_pos`**

Allows to determine the displacement made by the parent entity, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z]`
    : Representing the relative coordinates.

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity.

Example

:   Make armor_stands do the opposite of your moves:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_pos
    ```
:::
:::{tab-item} Rotation

**`#bs.link:reverse_rot`**

Allows you to determine the rotation performed by the parent entity, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[h,v]`
    : Representing the relative coordinates.

Outputs

:   (state) @s rotation
    : The entity is rotated opposingly to the rotations of the parent entity.

Example

:   Make armor_stands invert your rotations:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_rot
    ```
:::
:::{tab-item} Along X

**`#bs.link:reverse_pos_x`**

Allows to determine the displacement made by the parent entity along the X axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rx`
    : Representing the relative coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity along the X axis.

Example

:   Make armor_stands do the opposite of your moves along the X axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_pos_x
    ```
:::
:::{tab-item} Along Y

**`#bs.link:reverse_pos_y`**

Allows to determine the displacement made by the parent entity along the Y axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.ry`
    : Representing the relative coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity along the Y axis.

Example

:   Make armor_stands do the opposite of your moves along the Y axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_pos_y
    ```
:::
:::{tab-item} Along Z

**`#bs.link:reverse_pos_z`**

Allows to determine the displacement made by the parent entity along the Z axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rz`
    : Representing the relative coordinates (position only).

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity along the Z axis.

Example

:   Make armor_stands do the opposite of your moves along the Z axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_pos_z
    ```
:::
:::{tab-item} Horizontal angle

**`#bs.link:reverse_rot_h`**

Allows you to determine the rotation performed by the parent entity along the horizontal axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rh`
    : Representing the horizontal relative rotation (rotation only).

Outputs

:   (state) @s rotation
    : The entity is rotated opposingly to the rotations of the parent entity along the horizontal axis.

Example

:   Make armor_stands invert your rotations along the horizontal axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_rot_h
    ```
:::
:::{tab-item} Vertical angle

**`#bs.link:reverse_rot_v`**

Allows you to determine the rotation performed by the parent entity along the vertical axis, and reproduce it in the opposite direction.


Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rv`
    : Representing the vertical relative rotation (rotation only).

Outputs

:   (state) @s rotation
    : The entity is rotated opposingly to the rotations of the parent entity along the vertical axis.

Example

:   Make armor_stands invert your rotations along the vertical axis:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand] at @s run function #bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:reverse_rot_v
    ```
:::
::::

> **Credits**: Leirof, Aksiome

---

### Update link

**`#bs.link:update_link`**

This function allows to update the link between entities. If you only use immitation and/or local position keeping functions, this function will not be of any use to you. On the other hand, if you change the position of the child entity automatically, you will have to update the link so that your operation is not cancelled the next time you call the link function.

```{admonition} Automatically updated

The link functions of the lib automatically call the update functions if necessary (example: reverse functions). No need to manage this on your side.
```

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

Outputs

:   (score) `@s bs.link.r[h,v]`
    : Representing the relative orientation (rotation only).

    (score) `@s bs.link.r[x,y,z]`
    : Representing the relative coordinates (position only).

    (score) `@s bs.link.l[x,y,z]`
    : Representing the local coordinates (position only).

Example

:   Update armor_stands link:

    ```mcfunction
    # Once
    execute as @e[type=armor_stand,scores={bs.link.to=1..}] run function #bs.link:update_link
    ```

> **Credits**: Leirof, Aksiome

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
