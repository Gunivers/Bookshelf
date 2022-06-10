📚 Glib Documentation
======================

.. image:: https://gunivers.net/wp-content/uploads/2020/08/Glibs_banner.jpg

🔎 What is it?
==============

The Gunivers-libs is a modular library datapack designed to help mapmakers to implement common or complexe systems.

Watch the presentation video: https://www.youtube.com/watch?v=E2nKYEvjETk

⚙️ Features
============

- 🧮 Mathematical functions (sin, cos, exp, log, sqrt...)
- 🏷️ ID system for entities
- 🔀 Block <-> Score conversion system supporting BlockStates
- 🧠 Pathfinding and other NPC AI basic tools
- 🪃 Vectors management to give customized trajectories to your entities, which can be deflected by the wind, bounce on blocks etc.
- 📎 Entity Link to synchronize the movement of entities, create moving entity cohérent structures or adding mirrors effects

And much more!

🔌Installation
===============

⚠️ **Do not download directly from Github**

This repository contain a lot of things that you probably don't need and the datapacks are not compressed. Instead, go on the `Glib Manager <http://glib.gunivers.net>`_ to select what you want to download.

This project contain a library datapack and a map that is used as a test zone, wich can help new users to handle this tool. Also, the map show some possible features that are made possible thanks to the library datapack.

**Install the datapack only**
    #. Go on `Glib Manager <http://glib.gunivers.net>`_.
    #. Select the version you want (recommanded to use the last one)
    #. On the right panel, select the modules you want to use. You can check the modules' content in the `Documentation <https://glib-core.readthedocs.io>`_
    #. Click on the "Download" button
    #. Put the zip in the "datapacks" folder that you can find in your map folder.
    #. In game, use `/reload` to load the datapack.

or

**Install the sandbox map (contain the datapack)**
    - A clean installation process is coming soon. For now, you have to download the content of the Github repository and put it in the "map" folder. This repo contain all the modules of the lib so it's heavy. For this reason, we recommand you to go on ``play.gunivers.net``, where the map is already hosted.

⚠️ **Be sure that "cheats" are enabled**. Or, if you are on a server, be sure that ``enable-command-block`` is set on ``true`` in you ``server.properties`` file.

⚠️ **Some modules can be heavy**. Like the ``glib.block`` or ``glib.item`` that contain search trees. If you download them, the reload can take some time. If you edit the datapack, be sure to compress it in a zip file before uploading it somewhere. In the other cases, the search trees will slow down the upload due to thousands of little files.

📚Documentation & Help
=======================

The only link you need to know, which contain all the usefull links and informations about the project: `glib.gunivers.net <http://glib.gunivers.net>`_.

But to spare you 2 clicks, here is the most important links:

- `Documentation <https://glib-core.readthedocs.io>`_ (including `FAQ <https://glib-core.readthedocs.io/en/latest/FAQ.html>`_)
- `Our Discord <https://glib-core.readthedocs.io>`_ 

🏃 Motivation
==============

As developers, we know the importance of using libraries to avoid losing time by re-inventing the wheel in each project. But in Minecraft, we often see that mapmakers are not familiar with this concept.

That's why we created this library, to propose a lot of re-usable tools and try to convice mapmakers to become real developers by looking for and using the available tools.

Thus, this lib is not made to propose the best optimized functions or the more accurate ones. Instead, it is designed to be easy to install and use, and propose various features. We give a huge importance to the accessibility and we recommend talented creators to fork this project in order to make their own optimized versions of the lib.

🤝 Follow and/or contribute
============================

You can come on `our Discord <https://discord.gg/E8qq6tN>`_ server to talk with us and/or take part of the project!

If you want to contribute, please read at least the "Getting started" section in the `"Contributing" page <https://glib-core.readthedocs.io/en/latest/Contributing.html>`_ that contain all the development convention used in this project.



.. toctree::
    :maxdepth: 3
    :caption: Info

    Contributing.md
    FAQ

.. toctree::
    :maxdepth: 2
    :caption: Libs

    Biome
    Block
    Cache
    Color
    Health
    Id
    Item
    Link
    Location
    MapEdit
    Math
    Memory
    Move
    Orientation
    Schedule
    Time
    Vector
    View
    XP

.. toctree::
    :maxdepth: 2
    :caption: Systems

    BiomeDisplayer
    LGdir