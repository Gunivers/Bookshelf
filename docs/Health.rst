******
Health
******

``glib:health/``: Management by scoreboard of the life of an entity.

.. note::

    If you are not using the `Glib-Core <https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/glib-core>`_, you need to install the `Entity Health <https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/addons/entity-health>`_ datapack in order to use this module.

Safe kill
~~~~~~~~~

``safe_kill``: Allows to cleanly delete an entity. This function erases
the scores of the entity and teleports it to layer 0 before killing it.
\* Players cannot be killed \* Entities with the tag ``glib.permanent``
cannot be killed \* It is recommended to put the ``glib.permanent`` tag
to all decorative entities (arrays, item frames etc ...)

*Example:*

Kill all zombies:

::

    # Once
    execute as @e[type=zombie] run function glib:health/safe_kill

Time to live
~~~~~~~~~~~~

``time_to_live``: Allows to define the time of life of the entities. \*
By default, this time is 10 seconds (= 200 ticks) \* The entity will
live before being applied the end of life action (default: function
glib:health/safe\_kill). \* Before being applied the end of life action,
the entity will receive the tag ``glib.ttl.timeOut`` during 1 tick \*
You can change each of the default values by opening the file and going
to the "CONFIG" section.

*Example:*

Give the Creepers a 10 second life time:

::

    # At each tick
    execute as @e[type=creeper] run function glib:health/time_to_live

Give a time to live of 20 seconds to the Creepers:

::

    # At least once
    scoreboard players set @e[type=cow,tag=glib.ttl.default] glib.ttl 400
    # At each tick
    execute as @e[type=cow] run function glib:time_to_live

Give an explosion effect to Creepers at the end of their life

::

    # At each tick
    execute as @e[type=creeper] run function glib:health/time_to_live
    execute as @e[tag=glib.ttl.timeOut] at @s run playsound minecraft:entity.generic.explode master @a
    execute as @e[tag=glib.ttl.timeOut] at @s run article minecraft:explosion_emitter ~ ~ ~

    Warning: if the TTL function is called twice on the same entity, its
    lifetime will decrease twice as fast.
