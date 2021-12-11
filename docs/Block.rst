*****
Block
*****

``glib.block:``: Systems for manipulating blocks

Get block ID
~~~~~~~~~~~~

``get`` : Gives the executing entity a score corresponding to a unique identifier of the block + blockstate located where the function is executed.

- The result is stored on the score ``glib.blockId``

*Example:* 

Make the player named Steve retrieve the block id under his feet.

::

    # Once
    execute as Steve at @s positioned ~ ~-1 ~ run function glib.block:get

    # See the result
    scoreboard objectives setdisplay sidebar glib.blockId

Set block from ID
~~~~~~~~~~~~~~~~~

``set``: Places a block (and associated blockstates) corresponding to the identifier stored on the executing entity.

- The identifier must be given via the score ```glib.blockId``.

*Example:*

Make the player named Steve put the block on top of him, corresponding to the identifier he has given on his score ``glib.blockId``

::

    # Once
    execute as Steve at @s positioned ~ ~2 ~ run function glib.block:set

    # See the result
    # Look above Steve

Convert block ID to item ID
~~~~~~~~~~~~~~~~~~~~~~~~~~~

``convert_to_item``: Convert a block id stored on the executing entity to an item id.

- The block identifier must be indicated by the ``glib.blockId`` score
- The item identifier will be stored on the score ``glib.itemId``

*Example:*

Make the player named Steve get the item identifier corresponding to the block that is indicated by his score ``glib.blockId``

::

    # Once
    execute as Steve run function glib.block:convert_to_item

    # See the result
    scoreboard objectives setdisplay sidebar glib.itemId

