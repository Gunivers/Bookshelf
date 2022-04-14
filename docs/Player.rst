*****
Player
*****

``glib.player:`` all function concerning players.

Total XP
~~~~~~~~

``get_total_xp``: Get the total amount of XP of the player.

-  Returns the amount of XP on the score ``glib.xp``

*Example:*

Get your amount of XP

::

    # Once (execute on you)
    glib.player:get_total_xp

    # See the result (execute on you)
    tellraw @s ["",{"text":"I have "},{"score":{"name":"@s","objective":"glib.xp"}},{"text":" XP"}]