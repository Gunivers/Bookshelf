Location
========

``glib.location:``: The "Location" functions allow to manage the
position of entities via scores. It is thus possible to detect the
position of an entity or to place it at a position defined by a score.

Add up coordinates
~~~~~~~~~~~~~~~~~~

``add``: Adds the position passed via the scores ``glib.loc[X,Y,Z]`` to
the one where the command was executed, then teleports the entity to
this new position.

*Example:*

Move Aypierre by 3 blocks on the X axis, -2 on the Y axis and 5 on the Z
axis

::

    scoreboard players set Aypierre glib.locX 3
    scoreboard players set Aypierre glib.locY -2
    scoreboard players set Aypierre glib.locZ 5
    execute as Aypierre at @s run function glib.location:add

``fast_set``: Changes the position of the executing entity to the X,Y
and Z coordinates respectively indicated by the scores ``glib.loc[X,Y,Z]``. To the user, this function is used in the same
way as the ``set`` function and produces the same results. The
differences are:

* This function goes through a succession of teleports and not via NBT modification, which makes it more cumbersome to execute
* It avoids the problem of latency in displaying the position of entities after modifications of their NBT (especially when there is a large number of entities).
* The system is limited to positions between -32000 and +32000 on each axis.

*Example:*

Place Boblennon at coordinate -5 63 26 (absurd case because the position
is hard-coded, so a simple /tp would suffice, but here the scores can be
modified unlike the parameters of a /tp command)

::

    scoreboard players set Boblennon glib.locX -5
    scoreboard players set Boblennon glib.locY 63
    scoreboard players set Boblennon glib.locZ 26
    execute as Boblennon run function glib.location:fast_set

Get location
~~~~~~~~~~~~

``get`` : Detect the position of the entity (coordinates)

* Stores the values on the scores ``glib.loc[X,Y,Z]`` with a precision of 1:1.

*Example:*

Detect and display the position of the nearest spider:

::

    # Once
    execute as @e[type=spider,limit=1,sort=nearest] run function glib.location:get
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "glib. locX"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "glib. locY"}, "color": "gold"}{"text":", Z = ", "color": "dark_gray"},{"score":{"name":"@e[type=spider,limit=1,sort=nearest]", "objective": "glib.locZ"}, "color": "gold"}]

Get distance "as to at"
~~~~~~~~~~~~~~~~~~~~~~~

``get_distance_ata`` : Calculates the distance between the source entity
and the execution position of the function.

* The result is returned on the score ``glib.res0``.
* * Be careful, this function calls ``get_distance_squared_ata``, on which it applies the math/sqrt operation. It is therefore relatively heavy and is subject to the same constraint as ``get_distance_squared_as_to_at`` on integer size.

*Example:*

Calculate the distance between you and the nearest sheep:

::

    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function glib.location:get_distance_ata
    tellraw @a [{"text": "Distance: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Get distance squared "as to at"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``get_distance_squared_ata`` : Calculates the squared distance between
the source entity and the execution position of the function.

* The result is returned on the score ``glib.res0``.

.. warning::
    
    The scores on Minecraft represent the size of an int variable in java. The latter
    is huge, but not unlimited. However, calculations involving powers give
    results that can quickly rise to more than billions, exceeding the size
    limit of the variable. The game will then have no choice but to "loop"
    the value (if you exceed the limit of 1, the variable will go negative).

*Example:*

Calculate the squared distance between you and the nearest sheep:

::

    # Once
    execute as @s at @e[type=sheep,limit=1,sort=nearest] run function glib.location:get_distance_squared_ata
    tellraw @a [{"text": "Distance^2 : ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Get relative corrdinates "as to at"
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``get_relative_ata`` : Allows to obtain the position of the source
entity, relative to the execution position of the function.

* The result is then placed on the scores ``glib.loc[X,Y,Z]``.

*Example:*

Get your position relative to the nearest Creeper:

::

    # Once
    execute as @s at @e[type=creeper,limit=1,sort=nearest] run function glib.location:get_relative_ata
    tellraw @a [{"text": "Relative position : X=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.locX"}, "color": "gold"},{"text":", Y=", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib. locY"},"color":"gold"},{"text":", Z=","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.locZ"},"color":"gold"}]

Is in cave?
~~~~~~~~~~~

``is_in_cave``: Allows to know if the location indicated by the
execution mosition of the function is located in a cellar.

* Stores the result on glib.res0 (1 if in a cellar, 0 otherwise)

*Example:*

To know if the skeletons are in cellars or not:

::

    # Once
    execute as @e[type=skeleton] at @s run function glib.location:is_in_cave

    # See the result:
    effect give @e[type=skeleton,scores={glib.res0=1}] glowing 1 1 true

Set location
~~~~~~~~~~~~

``set``: Allows to place the entity at a precise coordinate given via
the scores ``glib.loc[X,Y,Z]``.

* This function has variations on x, y and z, useful for players, for whom the position can not be changed directly via the /data command.

*Example:*

Teleport in 15 100 25

::

    # Once
    scoreboard players set @s glib.locX 15
    scoreboard players set @s glib.locY 100
    scoreboard players set @s glib.locZ 25
    function glib.location:set

Spread entity
~~~~~~~~~~~~~

``spread`` : Allows to randomly teleport an entity in a given area.

* The difference with the spreadplayers command is that this function does not teleport to the highest block, it simply does not change the Y
position of the entity
* Takes as parameters the scores ``glib.var[0,1,2]`` corresponding respectively to the X and Z coordinates, as well as to the radius of the area in which the entity will be teleported.

*Example:*

Teleport to an area with a radius of 10 blocks, having as its center the
coordinate X=15, Z=25

::

    # Once
    scoreboard players set @s glib.var0 15
    scoreboard players set @s glib.var1 25
    scoreboard players set @s glib.var2 10
    function glib.location:spread

