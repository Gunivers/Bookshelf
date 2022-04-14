*****
XP
*****

``glib.xp:`` all function concerning the experience points and levels.

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

