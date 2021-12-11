****
View
****

``glib.view:``:The view functions allow to get some practical information about what the entity sees or aims.

**Get aimed block**

``aimed_block``: Places an armor_stand having the tag ``glib.aimedBlock`` and a score ``glib.parentId`` corresponding to the Id of the running entity.

*Example:*

Place in entity on the aimed block:

::

    # Once
    function glib.view:aimed_block

Get aimed entity
~~~~~~~~~~~~~~~~

``aimed_entity``: Gives the tag ``glib.raycastEntity`` and a score ``glib.parentId`` corresponding to the Id of the entity executing at the targeted entity by the player.

*Example:*

Place in entity on the targeted block:

::

    # Once
    function glib.view:aimed_entity

Can see "as to at"
~~~~~~~~~~~~~~~~~~

``can_see_ata``: Allows to know if the entity, from its position, may be able to see the execution position of the command (if no block obstructs its vision). If so, the source entity will get the tag ``glib.canSee``.

*Example:*

Knowing whether an entity sees you:

::

    # Once
    execute as @e at @s run function glib.view:has_in_front_ata

Has in front "as to at"
~~~~~~~~~~~~~~~~~~~~~~~

``has_in_front_ata``: Allows to know if the execution position of the function is in front of the source entity. If it is, the source entity gets the tag ``glib.hasInFront``.

*Example:*

Know if the position 0 5 0 is in front of you:

::

    # Once
    execute as @s positioned 0 5 0 run function glib.view:has_in_front_ata
