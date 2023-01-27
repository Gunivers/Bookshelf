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

{octicon}`device-camera-video` Watch a demo
```

---

## Create link to target ID

**`bs.link:create_link_tti`**

Create a link between two entities : compute relative and local position and orientation in order to manipulate them later.

:Inputs:

    **(execution) `as <entities>`**: the link lead on a parent-child relation. The executing (source) entity must be the child.

    **(score) `@s bs.targetId`**: score of the executing entity must match the `bs.id` score of the entity to which it will be linked. Multiple entities can be linked to a single entity (generally recommended for armor_stand structures).

:Outputs:

    **(score) `@s bs.link.r<x|y|z|h|v>`**: representing the relative coordinates (position + orientation)

    **(score) `@s bs.link.l<x|y|z>`**: representing local coordinates (position only)

    **(score) `@s bs.link.to`**: identifies the entity to which it is linked

:Example:

    Link all armor_stand to the entity with ID 3 (see the [`bs.id`](id) module to know how to assign an ID to an entity)

    ```
    # Once
    scorebaord players set @e[type=armor_stand] bs.targetId 3
    execute as @e[type=armor_stand] run function bs.link:create_link_tti

    # See the result
    # In loop
    execute as @e[type=armor_stand] run function glib_debug:link/display_link
    ```

```{note}
The output scores should generally not be directly modified because they are used as parameters for other link functions. It is then recommanded to only use the bookshelf function to modify these scores.
```

```{admonition} Dependencies
:class: important

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
- [`bs.math`](math)
- [`bs.orientation`](orientation)
```

---

## Create link "as to at"

**`bs.link:create_link_ata`**

In the same way as `create_link_to_target_id`, this function creates a link between the entity executing the function and the entity closest to the execution position.

:Inputs:

    **(execution) `as <entities>`**: the link lead on a parent-child relation. The executing (source) entity must be the child.

    **(execution) `at <entity>` or `positioned <x> <y> <z>`**: the execution position is the position of the parent entity (the function will take the nearest entity).

:Outputs:

    **(score) `@s bs.link.r<x|y|z|h|v>`**: representing the relative coordinates (position + orientation)

    **(score) `@s bs.link.l<x|y|z>`**: representing local coordinates (position only)

    **(score) `@s bs.link.to`** identifies the entity to which it is linked

:Example:

    Link all armor_stand to the nearest sheep

    ```
    # Once
    execute as @e[type=armor_stand] at @e[type=sheep,limit=1,sort=nearest] run function bs.link:create_link_ata

    # See the result
    # In loop
    execute as @e[type=armor_stand] run function glib_debug:link/display_link
    ```

```{note}
The output scores should generally not be directly modified because they are used as parameters for other link functions. It is then recommanded to only use the bookshelf function to modify these scores.
```

```{admonition} Dependencies
:class: important

This function require the following modules to work properly:
- [`bs.id`](id)
- [`bs.location`](location)
- [`bs.math`](math)
- [`bs.orientation`](orientation)
```

---

## Imitate location

`imitate_loc`: Allows to replace the entity at its relative position.
This operation repeated in a loop is to imitate the movements of the
parent entity.

* This function also has declinations on x, y and z to allow you to imitate the movements on one or two chosen axes.

*Example:*

-  Make armor_stands mimic your moves

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_loc
    ```

```{button-link} https://youtu.be/PmeUw8O2ZZU
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch the video
```

---

## Imitate orientation

-  `immitate_ori`: Allows to replace the entity to its relative
   orientation. This operation repeated in a loop is to imitate the
   rotations of the parent entity.
-  This function also has variations on h and v to allow you to mimic
   only the horizontal or vertical rotation.

*Example:*

-  Make armor_stands mimic your orientation changes

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:imitate_ori
    ```

---

## Keep local location

`keep_local_location`: Allows to keep the local position corresponding
to the position of the child entity in the repository of the parent
entity.

* This reference frame, unlike the relative coordinates, takes into account the orientation of the entity. Thus, when the parent entity turns on itself, the child entity will turn around it keeping its distance and the angle formed between the direction of the parent entity's look and the parent->child vector.

*Example:*

-  Make the armor_stands lock to your orientation

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:keep_local_location
    ```

---

## Reverse location

`reverse_loc`: Allows to determine the displacement made by the parent
entity, and reproduce it in the opposite direction.

* This function also has declinations on x, y and z to allow you to reverse the movements that on one or two axes chosen.

*Example:*

-  Make the armor_stands do the opposite of your moves

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_loc
    ```

```{button-link} https://youtu.be/BisY7Y_tLwg
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch the video
```

---

## Reverse orientation

`reverse_ori`: Allows you to determine the rotation performed by the
parent entity, and reproduce it in the opposite direction.

* This function also has variations on h and v to allow you to reverse only the horizontal or vertical rotation.

*Example:*

-   Make the armor_stands mimic your movements

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function bs.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=bs.linked] run function bs.link:reverse_ori
    ```

---

## Update link

`update_link`: This function allows to update the link between
entities. If you only use immitation and/or local position keeping
functions, this function will not be of any use to you. On the other
hand, if you change the position of the child entity automatically, you
will have to update the link so that your operation is not cancelled the
next time you call the link function.

* The link functions of the lib automatically call the update functions if necessary (example: reverse functions). No need to manage this on your side.

*Example:*

-   Update the armor_stands link

    ```
    # Once
    execute as @e[type=armor_stand] run function bs.link:update_link

    # See the result
    # In a loop
    execute as @e[tag=bs.linked] run function glib_debug:link/display_link
    ```
