**********
↗️ Vector
**********

``bs.vector:_``

Vector are fundamental and extremly powerfull tool to manage motions, forces and.. well... do physics!

.. image:: img/2023-01-27-23-43-58.png



.. button-link:: https://www.youtube.com/watch?v=IzASD7R80vQ
    :color: primary
    :shadow:
    :align: center

    :octicon:`device-camera-video` Watch the video

Classic
=======

``bs.vector:classic/``: Classic vectors are vectors that use the default base of the game, corresponding to tilds. Thus, a classic position vector (1000,3000,5000) will correspond to the position \~1 \~3 \~5

Get vector by actual orientation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note::

    This function require the `Location <location.html>`_ module.

``get_by_actual_orientation``: Compute the displacement vector of the entity according to its orientation. This vector is composed of 3 elementary vectors stored on the scores ``bs.vector[X,Y,Z]`` (each between -1000 and 1000).

*Example:*

Create, for each Creeper, a vector from their respective orientation

::

  # Once
  execute as @e[type=creeper] run function bs.vector:classic/get_by_actual_orientation

Get vector "as to at"
~~~~~~~~~~~~~~~~~~~~~

.. note::

    This function require the `Location <location.html>`_ module.

``get_ata``: Compute a vector from the source entity to the execution position of the function.

*Example:*

Create a vector that connects you to the nearest skeleton:

::

  # Once
  execute as @s at @e[type=skeleton] run function bs.vector:classic/get_ata

Get vector lenght
~~~~~~~~~~~~~~~~~

.. note::

    This function require the `Math <math.html>`_ module.

``get_lenght``: compute the norm of the vector and store it on the score ``bs.res0``

.. warning::
  
  This function calls the sqrt function, it is not recommended to use it frequently for performance reasons.

Get vector leght squared
~~~~~~~~~~~~~~~~~~~~~~~~

``get_lenght_squared``: compute the norm of the squared vector and store it on the score ``bs.res0``.

Fast normalize
~~~~~~~~~~~~~~

``fast_normalize``: allows to normalize the components of the vector by placing the largest component at 1000 while respecting the proportions linking these components.

> WARNING: For optimization purposes and to avoid doing square root calculations, this function reduces the vector to a cube of 2 blocks centered on the entity (instead of a sphere of radius 1 centered on the entity)

Local
=====

``bs.vector:local/``: Local vectors are vectors that use the base defined according to the orientation of the entity, corresponding to the powers (^). Thus, a position vector in local (1000,3000,5000) will correspond to the position ^1 ^3 ^5

Convert classic to local vector
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. note::

    This function require the `Math <math.html>`_ module.

``get_from_classic_vector``: Allows to convert a "normal" vector (using the relative reference frame) into local coordinates (using the local reference frame)
* Takes the 3 scores ``bs.vector[X,Y,Z]`` as input
* Stores the result on the 3 scores ``bs.vector[Left,Up,Front]``

*Example:*

Find the local vector corresponding to the vector X=1000, Y=0, Z=0

::

  # Once
  scoreboard players set @s bs.vectorX 1000
  scoreboard players set @s bs.vectorY 0
  scoreboard players set @s bs.vectorZ 0
  function bs.vector:classic/get_from_classic_vector

  # Display the result
  tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" VectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs. vectorLeft"}, "color": "gold"},{"text": "VectorUp: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs. vectorUp"}, "color": "gold"},{"text":" VectorFront: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.vectorFront"}, "color": "gold"}]

