# Vector

`glib:vector/`: Vectors are used to define the trajectory of an entity. Thus, they allow to manage projectiles easily, offering the possibility to make them undergo collisions, to imitate gravity, wind etc ... They are always defined with a 10^3 factor (1000 = 1 block/tick).

## Classic

`glib:vector/classic/`: Classic vectors are vectors that use the default base of the game, corresponding to tilds. Thus, a classic position vector (1000,3000,5000) will correspond to the position \~1 \~3 \~5

**Get vector by actual orientation**

`get_by_actual_orientation`: Compute the displacement vector of the entity according to its orientation. This vector is composed of 3 elementary vectors stored on the scores `glib.vector[X,Y,Z]` (each between -1000 and 1000).
  * Example:

Create, for each Creeper, a vector from their respective orientation
```
# Once
execute as @e[type=creeper] run function glib:vector/classic/get_by_actual_orientation
```

**Get vector "as to at"**

`get_ata`: Compute a vector from the source entity to the execution position of the function.

*Example:*

Create a vector that connects you to the nearest skeleton:
```
# Once
execute as @s at @e[type=skeleton] run function glib:vector/classic/get_ata
```

**Get vector lenght**

`get_lenght`: compute the norm of the vector and store it on the score `glib.res0`

> WARNING: This function calls the sqrt function, it is not recommended to use it frequently for performance reasons.

**Get vector leght squared**

`get_lenght_squared`: compute the norm of the squared vector and store it on the score `glib.res0`.

**Fast normalize**

`fast_normalize`: allows to normalize the components of the vector by placing the largest component at 1000 while respecting the proportions linking these components.

> WARNING: For optimization purposes and to avoid doing square root calculations, this function reduces the vector to a cube of 2 blocks centered on the entity (instead of a sphere of radius 1 centered on the entity)

## Local

`glib:vector/local/`: Local vectors are vectors that use the base defined according to the orientation of the entity, corresponding to the powers (^). Thus, a position vector in local (1000,3000,5000) will correspond to the position ^1 ^3 ^5

**Convert classic to local vector**

`get_from_classic_vector`: Allows to convert a "normal" vector (using the relative reference frame) into local coordinates (using the local reference frame)
* Takes the 3 scores `glib.vector[X,Y,Z]` as input
* Stores the result on the 3 scores `glib.vector[Left,Up,Front]`

*Example:*

Find the local vector corresponding to the vector X=1000, Y=0, Z=0
```
# Once
scoreboard players set @s glib.vectorX 1000
scoreboard players set @s glib.vectorY 0
scoreboard players set @s glib.vectorZ 0
function glib:vector/classic/get_from_classic_vector

# Display the result
tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" VectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib. vectorLeft"}, "color": "gold"},{"text": "VectorUp: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib. vectorUp"}, "color": "gold"},{"text":" VectorFront: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.vectorFront"}, "color": "gold"}]
```
