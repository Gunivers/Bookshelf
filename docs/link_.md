# 📎 Link

`glib.link:`: The "Link" functions allow to link an entity to another.
This link consists in preserving the position and the relative
orentation between the two entities, allowing then to imitate or to
reverse the movements and rotations of the parent entity.

---

## Create link to target ID

`create_link_tti`: Allows to create the link between two entities.
* The `glib.targetId` score of the executing entity must match the
`glib.id` score of the entity to which it will be linked.
* Multiple entities can be linked to a single entity (generally recommended for armor_stand structures).
* The child entity (having performed the function) will then have 9 distinct scores:
   * `glib.link.r[x,y,z,h,v]` representing the relative coordinates (position + orientation)
   * `glib.link.l[x,y,z]` representing local coordinates (position only)
   * `glib.link.to` identifies the entity to which it is linked
* These scores should generally not be modified because they are used as parameters for other link functions.

*Example:*

-  Link all armor_stand to the entity with ID 3

    ```
    # Once
    scorebaord players set @e[type=armor_stand] glib.targetId 3
    execute as @e[type=armor_stand] run function glib.link:create_link_tti

    # See the result
    # In loop
    execute as @e[type=armor_stand] run function glib_debug:link/display_link
    ```

---

## Create link "as to at"

`create_link_ata`: In the same way as `create_link_to_target_id`,
this function creates a link between the entity executing the function
and the entity closest to the execution position.

* Multiple entities can be linked to a single entity (generally recommended for armor_stand structures).
* The child entity (having executed the function) will then have 9 distinct scores:
   * `glib.link.r[x,y,z,h,v]` representing the relative coordinates (position + orientation)
   * `glib.link.l[x,y,z]` representing local coordinates (position only)
   * `glib.link.to` identifies the entity to which it is linked
* These scores should generally not be modified because they are used as parameters for other link functions.

*Example:*

-  Link all armor_stand to the nearest sheep

    ```
    # Once
    execute as @e[type=armor_stand] at @e[type=sheep,limit=1,sort=nearest] run function glib.link:create_link_ata

    # See the result
    # In loop
    execute as @e[type=armor_stand] run function glib_debug:link/display_link
    ```

---

### Imitate location

`imitate_loc`: Allows to replace the entity at its relative position.
This operation repeated in a loop is to imitate the movements of the
parent entity.

* This function also has declinations on x, y and z to allow you to imitate the movements on one or two chosen axes.

*Example:*

-  Make armor_stands mimic your moves

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function glib.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=glib.linked] run function glib.link:imitate_loc
    ```

<div align=center>
    <a href="https://youtu.be/PmeUw8O2ZZU" align=center>
        <img src="https://gunivers.net/wp-content/uploads/2022/06/watch-on-youtube.png" alt="drawing" width="200"/>
    </a>
</div>

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
    execute as @e[type=armor_stand] at @s run function glib.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=glib.linked] run function glib.link:imitate_ori
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
    execute as @e[type=armor_stand] at @s run function glib.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=glib.linked] run function glib.link:keep_local_location
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
    execute as @e[type=armor_stand] at @s run function glib.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=glib.linked] run function glib.link:reverse_loc
    ```

<div align=center>
    <a href="https://youtu.be/BisY7Y_tLwg" align=center>
        <img src="https://gunivers.net/wp-content/uploads/2022/06/watch-on-youtube.png" alt="drawing" width="200"/>
    </a>
</div>

---

## Reverse orientation

`reverse_ori`: Allows you to determine the rotation performed by the
parent entity, and reproduce it in the opposite direction.

* This function also has variations on h and v to allow you to reverse only the horizontal or vertical rotation.

*Example:*

-   Make the armor_stands mimic your movements

    ```
    # Once
    execute as @e[type=armor_stand] at @s run function glib.link:create_link_ata

    # In a loop
    execute as @e[type=armor_stand,tag=glib.linked] run function glib.link:reverse_ori
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
    execute as @e[type=armor_stand] run function glib.link:update_link

    # See the result
    # In a loop
    execute as @e[tag=glib.linked] run function glib_debug:link/display_link
    ```
