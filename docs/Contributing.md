# Contribute

The Gunivers-Libs is a community project and can therefore be developed by several people at the same time. To keep the project clean and coherent, it is necessary for the different developers to respect certain conventions when developing functions.

> Everything concerning the development of the Data Pack must be in English, so this concerns the typography of folders and functions, the names of scoreboards, tags, entities, teams etc. or even the comments and documentation within a function.

## **Tree Structure**

```
📁functions
├─ 📁 <module1>
│  ├─ 📁 <function1>
│  │  ├─ 📁 accuracy
│  │  │  │  # Same function, but with another precision, ex:
│  │  │  ├─ 📄 10-3.mcfunction
│  │  │  └─ 📄 ...
│  │  ├─ 📁 child
│  │  │  │  # sub-functions, not destined to be executed by the user, ex:
│  │  │  ├─ 📄 loop.mcfunction
│  │  │  └─ 📄 ...
│  │  ├─ 📁 config
│  │  │  │  # mcfunction editable by the user to allwo him to customize the function behavior, ex:
│  │  │  ├─ 📄 entity_concerned.mcfunction
│  │  │  └─ 📄 ...
│  │  └─ 📁 debug
│  │     │  # tools dedicated to debug a system, ex:
│  │     ├─ 📄 print.mcfunction
│  │     └─ 📄 ...
│  ├─ 📁 <function2>
│  ├─ 📄 _.mcfunction
│  ├─ 📄 <function1>
│  └─ 📄 <function2>
├─ 📁 <module2>
│  └─ ...
└─ ...
```

> Predicates, structures, lott tables etc. must respect the same structure.

The Gunivers-Lib respects a certain tree structure which can be similar to the Java packages. The added systems must therefore be positioned in these various folders according to their usefulness. If no root folder seems appropriate for the addition of a category of functions, it can be considered, with the agreement of the project managers, to add a new folder. A category must respect a particular structure:

* Functions and folders must respect the Snake Case typographical convention, which consists of writing a set of words entirely in lower case and separated by an underscore (_). The name must be explicit as to the purpose of the function or folder and must be as short as possible. It is possible to put abbreviations in a name as long as they are recognized. Example: Square Root -> sqrt, Block to ID -> block_to_id
* A function is equal to an unique utility, so we should not hesitate to decompose its functions in order to make it more readable and to promote the reusability of the code. In addition to these few constraints, the developer is free to organize his files as he wishes as long as it remains coherent and understandable.
* In some folders are "_.mcfunction" functions. The main purpose of these functions is to reorganize the display of the Gunivers-Libs folders during the auto-completion proposed by Brigadier. Thus, the first proposals are not all the functions of a particular folder but a list of the different existing categories. These functions can be added in all folders, and may contain some explanations about the category in question (tellraw command) or a redirection to the section of the documentation related to the category.

### "Accuracy" folders

They allow to manage the precision of the functions. Minecraft allowing to store only integers, to use decimals, you have to be clever. Thus, a function in "accuracy/10-3" will be a function which will see its parameters (at least most of them), multiplied by 1000 to be able to store 3 digits after the decimal point (3.14159 \* 10^3 = 3141.59, which gives 3141 once in a score). Not all functions have an equivalent in the above specifications. If you need a function with a precision that is not supported, contact us on our Discord, a dev will do that quickly ;)

### "Child" folder

Child folder contain every function used by other functions to make them works. These functions are not supposed to be executed or edited by the user.

### "Config" folders:

The lib has several systems that manage different behavior (e.g. pathfinding, a bat will not have the same behavior as a villager). You will then find a "main" file that will list the different files and call the right one according to a certain condition. This allows the user of the lib to create his own behavior by copying an existing behavior file, adapting it, and linking it to the system via the "main" file.

### "Debug" folders:

The "debug" folders contain functions that are intended to display a certain number of parameters specific to the folder in which they are located (e.g. debug in the vector folder will display the different vectors). These functions are usually called by other functions but can also be executed by the user in order to debug one of his systems at a specific location.

## **File format**

All the functions of the Gunivers-Lib implement documentation to describe for other developers as well as for users what the function is for and how to use it. This is what this one looks like:

```
#__________________________________________________
## INFO     Copyright © 2020 Gunivers.

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
```

We can find various information about the function itself (the example is not exhaustive), of which the following is a complete list:

* **Authors:** The list of authors of the function.
* **Contributors:** The list of contributors to the function. A contributor is someone who helps to create the function without developing it (the one who gives a track to realize the function or the one who fixes a bug for example).
* **MC Version:** Version of Minecraft for which the system was created.
* **Last check:** Version of Minecraft until which the system is certified functional.
* **Original path:** The path to the function so that it can be copied to a /function command.
* **Documentation:** Link to the documentation of the function
* **Note:** Allows you to provide additional information about the function such as a description of what the function does, how to use it if the use is particular, the behaviors of the function or the side effects of its use.

### **Initialization**

In order to make use as easy as possible, each function must limit its dependencies as much as possible. It must then declare each of the variables it uses in the "INIT" part. It is not necessary to initialize variables used by child functions because child functions are supposed to initialize them. On the other hand, it is forbidden to neglect a declaration for any other reason (example: "Var1 is already used everywhere").

Some scores, used by the lib in a global way, do not need to be declared: Data, Constant and Glib_Id

### **Configuration**

Some functions require parameters that are usually fixed. However, the function can manage other parameters and the user, in a particular case, may need to change this parameter. So we call them configuration parameters, which are parameters with a default value. These values are initialized in the "CONFIG" part.

As you can see in several files, some lines in the configuration part call the "Glib_OverrideConfig" tag. It allows you not to rewrite the score values (or other) if they have been voluntarily set to another value. So, if you want to use something else than the default value for a function, add the "Glib_OverrideConfig" tag before executing the function, then remove this tag immediately afterwards.

### **Comments**

The development of the Gunivers-Lib is collaborative, which means that other people can read the code. Moreover, the Gunivers-Lib is also meant to be pedagogical and accessible to people curious about the way the functions of the Gunivers-Lib work. Therefore, it is important to make it understood by other developers or users, and this, in addition to the documentation, also goes through the commentary of the code. Thus, it is important to regularly and cleanly comment on functions in order to explain how the function works.

### **Debug**

It is possible to add debug lines anywhere in the code. However, these must be subject to conditions. For the debug to be displayed to a player, that player must have the tags;

* `Glib_Debug`
* `Glib_Debug_<tag_path>`

Where <tag_path> is the path to the function after the namespace, replacing the / with . (tag format requires)

* Example: `glib:entity/vector/get_from_actual_orientation` becomes `entity.vector.get_from_actual_orientation`

**Error Messages**

Error tellraws must be displayed to all players with the Glib_Debug tag and must be in this form:

```plaintext
tellraw @a[tag=Glib_Debug] [{"text":"[ERROR] in <PATH>","color":"red"}]
function glib:core/debug/message/error/entity_info
tellraw @a[tag=Glib_Debug] [{"text":"   <MESSAGE>","color":"red"}]
```

For readability, all lines except this \[ERROR\] container must have a 3 space indentation.

Lines of code concerning error messages must be preceded by `## Start Error` and followed by `## End Error` in order to be removed by a program.

**Debug messages**

In the same logic, debug messages must be conditioned to an additional tag linked to the path of the function concerned and must start with:

```plaintext
execute if entity @a[tag=Glib_Debug_<TAG_PATH>] run tellraw @a[tag=Glib_Debug] [{"text":"> DEBUG | <PATH>","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove Glib_Debug_<TAG_PATH>"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]

execute if entity @e[tag=Glib_Debug_<TAG_PATH>] run function glib:core/debug/message/info/entity_info
```

In order to distinguish between nested function debugs, this debug must be followed by

```plaintext
execute if entity @a[tag=Glib_Debug_<TAG_PATH>] run function glib:core/debug/message/info/end_debug
```

Lines of code concerning debug messages should be preceded by `## Start Debug` and followed by `## End Debug` in order to be removed by a program.

## **Special functions**

**The "ata" functions**

This is a reduction of "as to at". Several functions require 2 positions to work (example: retrieve the distance between 2 points) or an entity and a position. To simplify the use, no need to pass 3 scores for each position. You will be able to place an entity on point 1 (if it is useful), then execute the function on point 2 by executing it on the entity on point 1.

**The "tti" functions**

This is a reduction of "to target id". Several functions require 2 a source and a target entity (example: get a vector to another entity). To simplify the use, no need to always use the `id/check` function.