******
🏷️ ID
******

``bs.id:`` : The management of entity IDs allows to identify precisely
an entity. Useful for example in the case of a shooting game to know who
is shooting at whom.

Check ID
~~~~~~~~

``check`` : Allows to compare the ``bs.id`` scores of the entities
with the ``bs.targetId`` score of the entity having executed the
function.

* The latter receives the tag ``bs.id.checker``.
* The other entities receive the tag
   * ``bs.id.upper`` if their ``bs.id`` is higher than the ``bs.targetId``.
   * ``bs.id.lower`` if their ``bs.id`` is lower than the ``bs.targetId``.
   * ``bs.id.match`` if their ``bs.id`` is equal to ``bs.targetId``.

*Example:*

Find the entity (or entities) with ID 3:

::

    # Once
    scoreboard players set @s bs.targetId 3
    function bs.id:check

    # See the result
    execute unless entity @e[tag=bs.id.match] run tellraw @a [{"text": "No entity found :'(", "color": "dark_gray"}]
    execute as @e[tag=bs.id.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "Hey! Are you looking for me?", "color": "dark_gray"}]

Check parent ID
~~~~~~~~~~~~~~~

``check_parent`` : Compares the ``bs.parentId`` scores of the entities
with the ``bs.id.target`` score of the entity that executed the
function.

* The latter receives the tag ``bs.parentId.checker``.
* The other entities receive the tag
   * ``bs.parentId.upper`` if their score ``bs.id.parent`` is higher than the ``id.targetId``
   * ``bs.parentId.lower`` if their score ``bs.id.parent`` is lower than the ``id.targetId``
   * ``bs.parentId.match`` if their score ``bs.id.parent`` is equal to the ``id.targetId``

*Example:*

Find all child entities of Bob:

::

    # Once
    execute as @e[name=Bob,limit=1] run scoreboard players operation @s bs.targetId = @s bs.id
    function bs.id:check_parent

    # See the result
    execute unless entity @e[tag=bs.parentId.match] run tellraw @a [{"text": "No entity found :'(", "color": "dark_gray"}]
    execute as @e[tag=bs.parentId.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":">"},{"text": "Hey! Are you looking for me?", "color": "dark_gray"}]

Get simple unique ID
~~~~~~~~~~~~~~~~~~~~

``get_suid`` : (Simple Unique ID) Allows the entity executing the
function to get a ``bs.id`` score different from all other entities
that have already executed the function.

* Returns the ID on the bs.id score of the executing entity.
* Gives the tag ``bs.id.set`` and ``bs.id.type.suid`` to the entities that have already executed the function

*Example:*

Give an ID to all players:

::

    # In a loop to give an ID to the players who connect
    execute as @a[tag=!bs.id.set] run function bs.id:get_suid

    # See the result
    scoreboard objective setdisplay sidebar bs.id

Get chain unique ID
~~~~~~~~~~~~~~~~~~~

``get_cuid`` : (Chain Unique ID) Allows the entity running the function
to get a score ``bs.id`` different from all other entities that have
already run the function. The difference with ``get_suid`` is in the way
the scores are assigned.

* ID scores are assigned dynamically based on the available scores, so that they form a string. So, if there are 5 entities, they will be numbered from 1 to 5, without any "hole". In order not to break this string, you must also execute the ``update_cuid`` function in a loop.
* Returns the ID on the ``bs.id`` score of the executing entity.
* Give the tag ``bs.id.set`` and ``bs.id.type.cuid`` to the entities that have already executed the function

*Example:*

Give an ID to all players:

::

    # In a loop to give an ID to the players who connect
    execute as @a[tag=!bs.id.set] run function bs.id:get_cuid

    # See the result
    scoreboard objective setdisplay sidebar bs.id

Update chain unique ID
~~~~~~~~~~~~~~~~~~~~~~

``update_cuid`` : Allows to update all the CUID of the entities.
Executes globally (the source entity does not matter, executing it
multiple times per tick will have no effect)

*Example:*

Keep the ID string free of holes and duplicates:

::

    # To be executed once at the beginning of each tick
    function bs.id:update_cuid

    # See the result
    scoreboard objective setdisplay sidebar bs.id

