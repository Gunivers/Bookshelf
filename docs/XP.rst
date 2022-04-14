*****
XP
*****

``glib.xp:`` all function concerning the experience points and levels.

Add levels
~~~~~~~~~~

``add_levels``: Add levels from a score

-  Take the amount of levels to add on the score ``glib.var0``

*Example:*

Add you 123 levels

::

    # Once
    scoreboard players set @s glib.var0 123
    glib.xp:add_levels

    # See the result
    # look at your XP bar in survival mode

Add points
~~~~~~~~~~

``add_points``: Add XP from a score

-  Take the amount of XP to add on the score ``glib.var0``

*Example:*

Add you 1234 XP

::

    # Once
    scoreboard players set @s glib.var0 1234
    glib.xp:add_points

    # See the result
    function glib.xp:get_total_points
    scoreboard objectives setdisplay sidebar glib.xp
    # run the add function here
    function glib.xp:get_total_points

Set levels
~~~~~~~~~~

``set_levels``: Set levels from a score

-  Take the amount of levels to set on the score ``glib.var0``

*Example:*

Set your level to 123

::

    # Once
    scoreboard players set @s glib.var0 123
    glib.xp:set_levels

    # See the result
    # look at your XP bar in survival mode

Set points
~~~~~~~~~~

``set_points``: Set XP from a score

-  Take the amount of XP to set on the score ``glib.var0``

*Example:*

Set your XP to 1234

::

    # Once
    scoreboard players set @s glib.var0 1234
    glib.xp:set_points

    # See the result
    function glib.xp:get_total_points
    scoreboard objectives setdisplay sidebar glib.xp
    # run the set function here
    function glib.xp:get_total_points

Set total points
~~~~~~~~~~~~~~~~

``set_total_points``: Set XP from a score

-  Take the total amount of XP to set on the score ``glib.var0``

*Example:*

Set your total XP amount to 1234

::

    # Once
    scoreboard players set @s glib.var0 1234
    glib.xp:set_total_points

    # See the result
    function glib.xp:get_total_points
    scoreboard objectives setdisplay sidebar glib.xp

Level Points
~~~~~~~~~~~~

``get_level_points``: Get the points required to pass to the next level.

-  Returns the number of points required on ``glib.res0``

*Example:*

Get the number of points required to pass from the level 15 to the level 16

::

    # Once
    scoreboard players set @s glib.var0 15
    glib.xp:get_total_points

    # See the result
    tellraw @a ["",{"text":"I need "},{"score":{"name":"@s","objective":"glib.res0"}},{"text":" to pass this level"}]

Total Points
~~~~~~~~~~~~

``get_total_points``: Get the total amount of points of the player.

-  Returns the amount of XP points on the score ``glib.xp``

*Example:*

Get your amount of points

::

    # Once (execute on you)
    glib.xp:get_total_points

    # See the result (execute on you)
    tellraw @a ["",{"text":"I have "},{"score":{"name":"@s","objective":"glib.xp"}},{"text":" XP"}]

