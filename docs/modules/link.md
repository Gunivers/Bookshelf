# 📎 Link

**`bs.link:_`**

Link positions and orientations between entities and create coherent entity structures!

<div align=center>

![](img/2023-01-27-23-18-28.png)

</div>

```{button-link} https://www.youtube.com/watch?v=XuhVhfyVGko
:color: primary
:align: center
:shadow:

🎬 Watch a demo
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Create link

::::{tab-set}
:::{tab-item} As to at

**`bs.link:create_link_ata`**

In the same way as `create_link_to_target_id`, this function creates a link between the entity executing the function and the entity closest to the execution position.

Inputs

:   (execution) `as <entities>`
    : The link lead on a parent-child relation. The executing (source) entity must be the child.

    (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The execution position is the position of the parent entity (the function will take the nearest entity).

Outputs

:   (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates (position + orientation)

    (score) `@s bs.link.l[x,y,z]`
    : Representing local coordinates (position only)

    (score) `@s bs.link.to`
    : Identifies the entity to which it is linked

Example

:   Link all armor_stand to the nearest sheep

    ```
    # Once
    execute as @e[type=armor_stand] at @e[type=sheep,limit=1,sort=nearest] run function bs.link:create_link_ata

    # See the result
    # In loop
    execute as @e[type=armor_stand] run function glib_debug:link/display_link
    ```

:::
:::{tab-item} To target ID

**`bs.link:create_link_tti`**

Create a link between two entities : compute relative and local position and orientation in order to manipulate them later.

Inputs

:   (execution) `as <entities>`
    : The link lead on a parent-child relation. The executing (source) entity must be the child.

    (score) `@s bs.id.target`
    : Score of the executing entity must match the `bs.id` score of the entity to which it will be linked. Multiple entities can be linked to a single entity (generally recommended for armor_stand structures).

Outputs

:   (score) `@s bs.link.r[x,y,z,h,v]`
    : Representing the relative coordinates (position + orientation)

    (score) `@s bs.link.l[x,y,z]`
    : Representing local coordinates (position only)

    (score) `@s bs.link.to`
    : Identifies the entity to which it is linked

Example

:   Link all armor_stand to the entity with ID 3 (see the [`bs.id`](id) module to know how to assign an ID to an entity)

    ```
    # Once
    scorebaord players set @e[type=armor_stand] bs.id.target 3
    execute as @e[type=armor_stand] run function bs.link:create_link_tti

    # See the result
    # In loop
    execute as @e[type=armor_stand] run function glib_debug:link/display_link
    ```

:::
::::


```{note}
The output scores should generally not be directly modified because they are used as parameters for other link functions. It is then recommanded to only use the bookshelf function to modify these scores.
```

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
- [`bs.math`](math)
- [`bs.orientation`](orientation)
```

> **Credits**: Leirof

---

### Imitate location

::::{tab-set}
:::{tab-item} All directions

**`bs.link:imitate_loc`**

Allows to replace the entity at its relative position.
This operation repeated in a loop is to imitate the movements of the
parent entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z]`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity.

Example

:   Make armor_stands mimic your moves

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_loc
    ```

:::
:::{tab-item} Along X

**`bs.link:imitate_loc_x`**

Allows to replace the entity at its relative position along the X axis.
This operation repeated in a loop is to imitate the movements of the
parent entity on the X ais.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rx`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity along the X axis.

Example

:   Make armor_stands mimic your moves on X axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_loc_x
    ```

:::
:::{tab-item} Along Y

**`bs.link:imitate_loc_y`**

Allows to replace the entity at its relative position along the Y axis. This operation repeated in a loop is to imitate the movements of the parent entity on the Y axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.ry`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity along the Y axis.

Example

:   Make armor_stands mimic your moves on Y axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_loc_y
    ```

:::
:::{tab-item} Along Z

**`bs.link:imitate_loc_z`**

Allows to replace the entity at its relative position along the Z axis. This operation repeated in a loop is to imitate the movements of the parent entity on the Z axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rz`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the relative position with the parent entity along the Z axis.

Example

:   Make armor_stands mimic your moves on Z axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_loc_z
    ```

:::
::::

```{button-link} https://youtu.be/BisY7Y_tLwg
:color: primary
:align: center
:shadow:

🎬 Watch a demo
```

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
```

> **Credits**: Leirof

---

### Imitate orientation

::::{tab-set}
:::{tab-item} Both angles

**`bs.link:immitate_ori`**

Allows to replace the entity to its relative orientation. This operation repeated in a loop is to imitate the rotations of the parent entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[h,v]`
    : Representing the horizontal and vertical relative orientation (rotation only)

Outputs

:   (state) @s orientation
    : The entity is rotated such as it maintain the relative orientation with the parent entity.

Example

:   Make armor_stands mimic your orientation changes

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_ori
    ```

:::
:::{tab-item} Horizontal angle

**`bs.link:immitate_ori_h`**

Allows to replace the entity to its relative horizontal orientation. This operation repeated in a loop is to imitate the rotations of the parent entity on the horizontal axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rh`
    : Representing the horizontal relative orientation (rotation only)

Outputs

:   (state) @s orientation
    : The entity is rotated such as it maintain the relative orientation with the parent entity on the horizontal axis.

Example

:   Make armor_stands mimic your orientation changes on the horizontal axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_ori_h
    ```

:::
:::{tab-item} Vertical angle

**`bs.link:immitate_ori_v`**

Allows to replace the entity to its relative vertical orientation. This operation repeated in a loop is to imitate the rotations of the parent entity on the vertical axis.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rv`
    : Representing the vertical relative orientation (rotation only)

Outputs

:   (state) @s orientation
    : The entity is rotated such as it maintain the relative orientation with the parent entity on the vertical axis.

Example

:   Make armor_stands mimic your orientation changes on the vertical axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_ori_v
    ```

:::
::::

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.orientation`](orientation)
```

> **Credits**: Leirof

---

### Keep local location

**`bs.link:keep_local_location`**

Allows to keep the local position corresponding
to the position of the child entity in the repository of the parent
entity.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.l[x,y,z]`
    : Representing the local coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved such as it maintain the local position with the parent entity.

Example

:   Make the armor_stands lock to your orientation

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:keep_local_location
    ```


```{button-link} https://youtu.be/PmeUw8O2ZZU
:color: primary
:align: center
:shadow:

🎬 Watch a demo
```

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
- [`bs.math`](math)
- [`bs.orientation`](orientation)
- [`bs.move`](move)
```

```{admonition} How does it work?
:class: dropdown

This reference frame, unlike the relative coordinates, takes into account the orientation of the entity. Thus, when the parent entity turns on itself, the child entity will turn around it keeping its distance and the angle formed between the direction of the parent entity's look and the parent->child vector.
```

> **Credits**: Leirof

---

### Reverse location

::::{tab-set}
:::{tab-item} All directions

**`bs.link:reverse_loc`**

Allows to determine the displacement made by the parent
entity, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[x,y,z]`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity.

Example

:   Make the armor_stands do the opposite of your moves

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_loc
    ```

:::
:::{tab-item} Along X

**`bs.link:reverse_loc_x`**

Allows to determine the displacement made by the parent
entity along the X axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rx`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity along the X axis.

Example

:   Make the armor_stands do the opposite of your moves along the X axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_loc_x
    ```

:::
:::{tab-item} Along Y

**`bs.link:reverse_loc_y`**

Allows to determine the displacement made by the parent
entity along the Y axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.ry`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity along the Y axis.

Example

:   Make the armor_stands do the opposite of your moves along the Y axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_loc_y
    ```

:::
:::{tab-item} Along Z

**`bs.link:reverse_loc_z`**

Allows to determine the displacement made by the parent
entity along the Z axis, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rz`
    : Representing the relative coordinates (position only)

Outputs

:   (state) @s position
    : The entity is moved opposingly to the movements of the parent entity along the Z axis.

Example

:   Make the armor_stands do the opposite of your moves along the Z axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_loc_z
    ```

:::
::::

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
```

> **Credits**: Leirof

---

### Reverse orientation

::::{tab-set}
:::{tab-item} Both angles

**`bs.link:reverse_ori`**

Allows you to determine the rotation performed by the
parent entity, and reproduce it in the opposite direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.r[h,v]`
    : Representing the relative orientation (rotation only)

Outputs

:   (state) @s rotation
    : The entity is rotated opposingly to the rotations of the parent entity.

Example

:   Make the armor_stands invert your rotations

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_ori
    ```

:::
:::{tab-item} Horizontal angle

**`bs.link:reverse_ori_h`**

Allows you to determine the rotation performed by the
parent entity along the horizontal axis, and reproduce it in the opposite
direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rh`
    : Representing the relative orientation (rotation only)

Outputs

:   (state) @s rotation
    : The entity is rotated opposingly to the rotations of the parent entity along the horizontal axis.

Example

:   Make the armor_stands invert your rotations along the horizontal axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_ori_h
    ```

:::
:::{tab-item} Vertical angle

**`bs.link:reverse_ori_v`**

Allows you to determine the rotation performed by the
parent entity along the vertical axis, and reproduce it in the opposite
direction.

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

    (score) `@s bs.link.rv`
    : Representing the relative orientation (rotation only)

Outputs

:   (state) @s rotation
    : The entity is rotated opposingly to the rotations of the parent entity along the vertical axis.

Example

:   Make the armor_stands invert your rotations along the vertical axis

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_ori_v
    ```

:::
::::

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.orientation`](orientation)
```

> **Credits**: Leirof

---

### Update link

**`bs.link:update_link`**

This function allows to update the link between
entities. If you only use immitation and/or local position keeping
functions, this function will not be of any use to you. On the other
hand, if you change the position of the child entity automatically, you
will have to update the link so that your operation is not cancelled the
next time you call the link function.

```{admonition} Automatically updated

The link functions of the lib automatically call the update functions if necessary (example: reverse functions). No need to manage this on your side.
```

Inputs

:   (execution) `as <entities>`
    : The executing entity must be linked to another entity.

Outputs

:   (score) `@s bs.link.r[h,v]`
    : Representing the relative orientation (rotation only)

    (score) `@s bs.link.r[x,y,z]`
    : Representing the relative coordinates (position only)

    (score) `@s bs.link.l[x,y,z]`
    : Representing the local coordinates (position only)

Example

:   Update the armor_stands link

    ```
    # Once
    execute as @e[type=armor_stand] run function bs.link:update_link

    # See the result
    # In a loop
    execute as @e[tag=bs.linked] run function glib_debug:link/display_link
    ```

```{admonition} Dependencies
:class: dropdown

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
- [`bs.math`](math)
- [`bs.orientation`](orientation)
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