***********
Orientation
***********

``glib:orientation/``: This folder contains functions that facilitate
the management of the orientation of entities.

.. note::

    If you are not using the `Glib-Core <https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/glib-core>`_, you need to install the `Entity Location <https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/addons/entity-location>`_ datapack in order to use this module.

Get orientation
~~~~~~~~~~~~~~~

``get``: Detects the orientation of an entity and stores it on the
scores "OriH" and "OriV", corresponding respectively to the angles
formed on the horizontal and vertical plane by the orientation of the
entity.

Normalize orientation
~~~~~~~~~~~~~~~~~~~~~

``normalize``: Allows to normalize the oriantations (replace the OriH
and OriV scores respectively in the interval [0;360[ and [0;180[)

Set orientation
~~~~~~~~~~~~~~~

``set``: Allows to orientate the entity according to its scores "OriH"
and "OriV". This function has variations on h and v, useful for players
for whom the orientation cannot be modified directly via a /data.
