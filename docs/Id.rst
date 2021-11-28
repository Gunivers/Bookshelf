**
ID
**

``glib.id:`` : The management of entity IDs allows to identify precisely
an entity. Useful for example in the case of a shooting game to know who
is shooting at whom.

Check ID
~~~~~~~~

``check`` : Allows to compare the ``glib.id`` scores of the entities
with the ``glib.targetId`` score of the entity having executed the
function.

* The latter receives the tag ``glib.id.checker``.
* The other entities receive the tag
   * ``glib.id.upper`` if their ``glib.id`` is higher than the ``glib.targetId``.
   * ``glib.id.lower`` if their ``glib.id`` is lower than the ``glib.targetId``.
   * ``glib.id.match`` if their ``glib.id`` is equal to ``glib.targetId``.

*Example:*

Find the entity (or entities) with ID 3:

::

    # Once
    scoreboard players set @s glib.targetId 3
    function glib:id/check

    # See the result
    execute unless entity @e[tag=glib.id.match] run tellraw @a [{"text": "No entity found :'(", "color": "dark_gray"}]
    execute as @e[tag=glib.id.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "Hey! Are you looking for me?", "color": "dark_gray"}]

Check parent ID
~~~~~~~~~~~~~~~

``check_parent`` : Compares the ``glib.parentId`` scores of the entities
with the ``glib.id.target`` score of the entity that executed the
function.

* The latter receives the tag ``glib.parentId.checker``.
* The other entities receive the tag
   * ``glib.parentId.upper`` if their score ``glib.id.parent`` is higher than the ``id.targetId``
   * ``glib.parentId.lower`` if their score ``glib.id.parent`` is lower than the ``id.targetId``
   * ``glib.parentId.match`` if their score ``glib.id.parent`` is equal to the ``id.targetId``

*Example:*

Find all child entities of Bob:

::

    # Once
    execute as @e[name=Bob,limit=1] run scoreboard players operation @s glib.targetId = @s glib.id
    function glib:id/check_parent

    # See the result
    execute unless entity @e[tag=glib.parentId.match] run tellraw @a [{"text": "No entity found :'(", "color": "dark_gray"}]
    execute as @e[tag=glib.parentId.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "Hey! Are you looking for me?", "color": "dark_gray"}]

Get simple unique ID
~~~~~~~~~~~~~~~~~~~~

``get_suid`` : (Simple Unique ID) Allows the entity executing the
function to get a ``glib.id`` score different from all other entities
that have already executed the function.

* Returns the ID on the glib.id score of the executing entity.
* Gives the tag ``glib.id.set`` and ``glib.id.type.suid`` to the entities that have already executed the
function

*Example:*

Give an ID to all players:

::

    # In a loop to give an ID to the players who connect
    execute as @a[tag=!glib.id.set] run function glib:id/get_suid

    # See the result
    scoreboard objective setdisplay sidebar glib.id

Get chain unique ID
~~~~~~~~~~~~~~~~~~~

``get_cuid`` : (Chain Unique ID) Allows the entity running the function
to get a score ``glib.id`` different from all other entities that have
already run the function. The difference with ``get_suid`` is in the way
the scores are assigned.

* ID scores are assigned dynamically based on the available scores, so that they form a string. So, if there are 5 entities, they will be numbered from 1 to 5, without any "hole". In order not to break this string, you must also execute the ``update_cuid`` function in a loop.
* Returns the ID on the ``glib.id`` score of the executing entity.
* Give the tag ``glib.id.set`` and ``glib.id.type.cuid`` to the entities that have already executed the function

*Example:*

Give an ID to all players:

::

    # In a loop to give an ID to the players who connect
    execute as @a[tag=!glib.id.set] run function glib:id/get_cuid

    # See the result
    scoreboard objective setdisplay sidebar glib.id

Update chain unique ID
~~~~~~~~~~~~~~~~~~~~~~

``update_cuid`` : Allows to update all the CUID of the entities.
Executes globally (the source entity does not matter, executing it
multiple times per tick will have no effect)

*Example:*

Keep the ID string free of holes and duplicates:

::

    # To be executed once at the beginning of each tick
    function glib:id/update_cuid

    # See the result
    scoreboard objective setdisplay sidebar glib.id

