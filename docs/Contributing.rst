**********
Contribute
**********

.. important::

   **Pour les francophones** : Ce projet est géré principalement par une équipe francophone. Cependant, dans le but d'être accessible par l'ensemble de la communauté Minecraft, nous réalisons l'ensemble des systèmes et documentations en anglais. Si vous n'êtes pas à l'aise avec l'anglais, vous pouvez installer un plugin de traduction de page web sur votre navigateur. Notre anglais étant relativement simple, les traductions seront suffisament précises. Si vous souhaitez contribuer au projet, vous pourrez simplement écrire en français, puis traduire via des outils comme `DeepL.com <https://DeepL.com>`_ puis demander une vérification. La langue n'est donc pas un obstacle ;)

The Gunivers-Libs is a community project and can therefore be developed by several people at the same time. To keep the project clean and coherent, it is necessary for the different developers to respect certain conventions when developing functions.

.. note::

   Everything concerning the development of the Data Pack must be in English, so this concerns the typography of folders and functions, the names of scoreboards, tags, entities, teams etc. or even the comments and documentation within a function.

Definitions
===========

In order to speak with the same vocabulary, here is some words that have a specific meaning in this project:

- **Module**: a group of features that share a common purpose and that are contained in a namespace (i.e. datapack structures)
- **Feature**: something designed for the final user in order to allow him to perform a task. A feature can be a function, a loot_table, a structure, a predicate or whatever.
- **MVP**: for "Minimum Viable Product" correspond to a feature that can not be decomposed in several smaller features. In this lib, all features should be decomposed in MVP, and use theses MVP instead of redefining them.
- **Brigadier**: This is the command completer and highlighter of Minecraft that you can see when you enter a command in the chat. We define it here because most of people doesn't know that this system have a name.

Tree Structure
==============

File nomenclature
~~~~~~~~~~~~~~~~~

The Gunivers-Libs respects a certain tree structure which can be similar to the Java packages, called "modules" in this project. The added features must therefore be positioned in these various folders (corresponding to a namespaces) according to their usefulness. If no namespace folder (i.e. module) seems appropriate for the addition of a feature, it can be considered to add a new namespace. A category must respect a particular structure:

-  Files and folders must respect the Snake Case typographical convention, which consists of writing a set of words entirely in lower case and separated by an underscore (*). The name must be explicit as to the purpose of the feature and must be as short as possible. It is possible to put abbreviations in a name as long as they are recognized. Example: Square Root -> sqrt, Block to Identifier -> block_to_id
-  A feature is equal to an unique utility, so we should not hesitate to decompose its features in MVP in order to make it more readable and to promote the reusability of the MVP. In addition to these few constraints, the contributor is free to organize his files as he wishes as long as it remains coherent and understandable, and it respect the global structure detailed below.
-  In some folders are files nammed "_". The main purpose of these files is to reorganize the display of the Gunivers-Libs folders during the auto-completion proposed by Brigadier. Thus, the first proposals are not all the files of a particular folder but the folder itself, followed only by "_" (wich can be easily removed to allow to press 'tab' again and continue to explore the tree structure). These files can be added in all folders, and if possible, they may describe and/or represent, the category in question or a redirection to the section of the documentation related to the category.

The lib must respect this global structure:

::

    📁data
    ├─ 📁 <module1>
    │  └─ 📁 functions/predicates/loot_tables/...
    │     ├─ 📁 <feature1>
    │     ├─ 📁 <feature2>
    │     ├─ 📄 <feature1>
    │     └─ 📄 <feature2>
    ├─ 📁 <module2>
    │  └─ ...
    └─ ...

.. note::

   Functions, predicates, structures, loot tables etc. must respect the same structure.

.. important::

   Modules can be separated in 2 types:
   
   - library: a set of tools for datapackers and/or builds for builders/terraformers
   - system: ready-to-use system, for demos, mini-games or user interface that allow to configure a complex system
   
   The prefix of the namespace must be respectively:

   - ``glib.<moduleName>``
   - ``gsys.<moduleName>``

In this structure, you can find a "feature" file and it's associated folder. This "feature" représent a "minimal viable product" (something that have a specific utility but that can require to be a part of another system in order to work)

Features files must respect this structure:
::

   📄 <featureName>
   📁 <featureName>
      ├─ 📁 accuracy
      │  │  # Same function, but with another precision, ex:
      │  ├─ 📄 10-3.mcfunction
      │  └─ 📄 ...
      ├─ 📁 child
      │  │  # sub-functions, not destined to be executed by the user, ex:
      │  ├─ 📄 loop.mcfunction
      │  └─ 📄 ...
      ├─ 📁 config
      │  │  # mcfunction editable by the user to allwo him to customize the function behavior, ex:
      │  ├─ 📄 entity_concerned.mcfunction
      │  └─ 📄 ...
      └─ 📁 debug
         │  # tools dedicated to debug a system, ex:
         ├─ 📄 print.mcfunction
         └─ 📄 ...

.. note::

   The main file is the only file that is required. Other files/folders depends on the needs of the feature.

"Accuracy" folders
~~~~~~~~~~~~~~~~~~

They allow to manage the precision of the functions. Minecraft allowing to store only integers, to use decimals, you have to be clever. Thus, a function in "accuracy/10-3" will be a function which will see its parameters (at least most of them), multiplied by 1000 to be able to store 3 digits after the decimal point (3.14159 * 10^3 = 3141.59, which gives 3141 once in a score). Not all functions have an equivalent in the above specifications. If you need a function with a precision that is not supported, contact us on our Discord, a dev will do that quickly ;)

"Child" folder
~~~~~~~~~~~~~~

Child folder contain every function used by other functions to make them
works. These functions are not supposed to be executed or edited by the
user.

"Config" folders:
~~~~~~~~~~~~~~~~~

The lib has several systems that manage different behavior (e.g.
pathfinding, a bat will not have the same behavior as a villager). You
will then find a "main" file that will list the different files and call
the right one according to a certain condition. This allows the user of
the lib to create his own behavior by copying an existing behavior file,
adapting it, and linking it to the system via the "main" file.

"Debug" folders:
~~~~~~~~~~~~~~~~

The "debug" folders contain functions that are intended to display a
certain number of parameters specific to the folder in which they are
located (e.g. debug in the vector folder will display the different
vectors). These functions are usually called by other functions but can
also be executed by the user in order to debug one of his systems at a
specific location.

File format
===========

All the functions of the Gunivers-Lib implement documentation to
describe for other developers as well as for users what the function is
for and how to use it. This is what this one looks like:

::

    #__________________________________________________
    ## INFO     Copyright © 2021 Altearn.

    ## Authors:
    ## Contributors: 
    ## MC Version:
    ## Last check:

    ## Original path:
    ## Documentation:
    ## Note:

    #__________________________________________________
    ## PARAMETERS

    ## Input: Foo (score): Lorem Ipsum
    ## Input: Bar (tag): Lorem Ipsum
    ## Output: Qux (score): Lorem Ipsum

    #__________________________________________________
    ## INIT

    #__________________________________________________
    ## CONFIG

    #__________________________________________________
    ## CODE

We can find various information about the function itself (the example is not exhaustive), of which the following is a complete list:

-  **Authors:** The list of authors of the function.
-  **Contributors:** The list of contributors to the function. A contributor is someone who helps to create the function without developing it (the one who gives a track to realize the function or the one who fixes a bug for example).
-  **MC Version:** Version of Minecraft for which the system was created.
-  **Last check:** Version of Minecraft until which the system is certified functional.
-  **Original path:** The path to the function so that it can be copied to a /function command.
-  **Documentation:** Link to the documentation of the function
-  **Note:** Allows you to provide additional information about the function such as a description of what the function does, how to use it if the use is particular, the behaviors of the function or the side effects of its use.

Initialization
~~~~~~~~~~~~~~

In order to make use as easy as possible, each function must limit its dependencies as much as possible. It must then declare each of the variables it uses in the "INIT" part. It is not necessary to initialize variables used by child functions because child functions are supposed to initialize them. On the other hand, it is forbidden to neglect a declaration for any other reason (example: "Var1 is already used everywhere").

Some scores, used by the lib in a global way, do not need to be
declared. You can find the list of global scores by `here <https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/glib-core/-/blob/master/data/glib.core/functions/import/scores.mcfunction>`_. Also, in order to simplify arithmetical operations, the lib define plenty of constants stored on the score ``glib.const``. You can find them `here <https://gitlab.com/Altearn/gunivers/minecraft/datapack/Glibs/glib-core/-/blob/master/data/glib.core/functions/import/constants.mcfunction>`_. All constants used in the lib must be defined in this file.

Configuration
~~~~~~~~~~~~~

Some functions require parameters that are usually fixed. However, the function can manage other parameters and the user, in a particular case, may need to change this parameter. So we call them configuration parameters, which are parameters with a default value. These values are initialized in the "CONFIG" part.

As you can see in several files, some lines in the configuration part call the "glib.config.override" tag. It allows you not to rewrite the score values (or other) if they have been voluntarily set to another value. So, if you want to use something else than the default value for a function, add the "glib.config.override" tag before executing the function, then remove this tag immediately afterwards.

Comments
~~~~~~~~

The development of the Gunivers-Libs is collaborative, which means that other people can read the code. Moreover, the Gunivers-Lib is also meant to be pedagogical and accessible to people curious about the way the functions of the Gunivers-Lib work. Therefore, it is important to make it understood by other developers or users, and this, in addition to the
documentation, also goes through the commentary of the code. Thus, it is important to regularly and cleanly comment on functions in order to explain how the function works.

Debug
~~~~~

It is possible to add debug lines anywhere in the code. However, these must be subject to conditions. For the debug to be displayed to a player, that player must have the tags;

-  ``Glib_Debug``
-  ``Glib_Debug_<tag_path>``

Where is the path to the function after the namespace, replacing the / with . (tag format requires)

-  Example: ``glib:entity/vector/get_from_actual_orientation`` becomes ``entity.vector.get_from_actual_orientation``

**Error Messages**

Error tellraws must be displayed to all players with the glib.debug tag and must be in this form:

.. code:: plaintext

    tellraw @a[tag=glib.debug] [{"text":"[ERROR] in <PATH>","color":"red"}]
    function glib:core/debug/message/error/entity_info
    tellraw @a[tag=glib.debug] [{"text":"   <MESSAGE>","color":"red"}]

For readability, all lines except this [ERROR] container must have a 3 space indentation.

Lines of code concerning error messages must be preceded by ``## Start Error`` and followed by ``## End Error`` in order to be removed by a program.

**Debug messages**

In the same logic, debug messages must be conditioned to an additional tag linked to the path of the function concerned and must start with:

.. code:: plaintext

   tellraw @a[tag=glib.debug.<TAG_PATH>] [{"text":"> DEBUG | <PATH>","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove glib.debug.<TAG_PATH>"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]

   execute as @e[tag=glib.debug.<TAG_PATH>] run function glib:core/debug/message/info/entity_info

In order to distinguish between nested function debugs, this debug must be followed by

.. code:: plaintext

    execute if entity @a[tag=Glib_Debug_<TAG_PATH>] run function glib:core/debug/message/info/end_debug

Lines of code concerning debug messages should be preceded by ``## Start Debug`` and followed by ``## End Debug`` in order to be removed by a program.

Special functions
=================

The "ata" functions
~~~~~~~~~~~~~~~~~~~

This is a reduction of "as to at". Several functions require 2 positions to work (example: retrieve the distance between 2 points) or an entity and a position. To simplify the use, no need to pass 3 scores for each position. You will be able to place an entity on point 1 (if it is useful), then execute the function on point 2 by executing it on the entity on point 1.

The "tti" functions
~~~~~~~~~~~~~~~~~~~

This is a reduction of "to target id". Several functions require 2 a source and a target entity (example: get a vector to another entity). To simplify the use, no need to always use the ``id/check`` function.
