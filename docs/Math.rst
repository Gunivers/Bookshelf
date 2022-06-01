********
🧮 Math
********

``glib.math:``: The "Math" functions, as their name suggests, are for
doing math. Before you run away remembering your indigestible and
incomprehensible lessons that you had to endure at school, you should
know that here, you won't need to do any math (in fact, it's the purpose
of the lib to simplify your life). Nevertheless, the following math
functions are theoretical, but they are also what most other systems are
based on. If you don't know what I mean, you can easily create (among
other things) raycasting with this lib. This system is essentially based
on trigonometry. But again, nothing complicated, everything is already
done ;)

Algebra
=======

``glib.math:algebra``: this folder allows you to perform algebra
operations

Basic rotation
~~~~~~~~~~~~~~

``basis_rotation_3d``: Allows to obtain the equivalent of the vector
passed in parameter in a base with a different orientation. Useful to
convert an absolute/relative position into a local position for a given
entity.

-  Takes in parameter the scores ``glib.var[0,1,2]`` corresponding to
   the X, Y and Z compositors of the vector in the starting base
-  Takes as parameter the scores ``glib.var[3,4]`` corresponding to the
   difference in orientation of the bases, respectively horizontal (Phi)
   and vertical (Theta) 
-  Returns the X', Y' and Z' components respectively on the scores
   ``glib.res[0,1,2]``

*Examples:*

A block is in ~2 ~5 ~10 from me, I want to have this position in local
coordinate (^? ^? ^?)

::

    # One time

    # Relative coordinates (we multiply by 1000 to have more precision on the result, which will also be multiplied by 1000)
    scoreboard players set @s glib.var0 2000
    scoreboard players set @s glib.var1 5000
    scoreboard players set @s glib.var2 10000

    # Difference between my orientation (= that of the coondata grid ^X ^Y ^Z) and the orientation of the Minecraft blocks grid (~X ~Y ~Z)
    function glib.orientation:get
    scoreboard players operation @s glib.var3 = @s glib.oriH
    scoreboard players operation @s glib.var4 = @s glib.oriV

    # Perform the basic rotation
    function glib.math:algebra/basis_rotation_3d

    # See the result
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib. res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]

I want to have a vector pointing to where I'm looking, but in relative
coordinates ~X ~Y ~Z (also called "classical" vector in this library)

::

    # Once

    # Retrieve a vector ^ ^ ^1 corresponding to a vector directed according to the orientation of the entity (we multiply by 1000 to have more precision on the result, which will also be multiplied by 1000)
    scoreboard players set @s glib.var0 0
    scoreboard players set @s glib.var1 0
    scoreboard players set @s glib.var2 1000

    # Get the orientation
    function glib.orientation:get
    scoreboard players operation @s glib.var3 = @s glib.oriH
    scoreboard players operation @s glib.var4 = @s glib.oriV

    # Reversal of the orientation since we want to have the relative orientation of the game grid compared to the orientation of the player (unlike the previous example)
    scoreboard players operation @s glib.var3 *= -1 glib.const
    scoreboard players operation @s glib.var4 *= -1 glib.const

    # Perform the basic rotation
    function glib.math:algebra/basis_rotation_3d

    # See the result
    tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib. res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]

Bitwise
=======

``glib.math:bitwise``: This folder contains various bitwise operators to
apply to scores.

logical AND
~~~~~~~~~~~

``and``: Computes the bitwise conjunction of the two input numbers

-  Takes the scores ``glib.var0`` and ``glib.var1`` as parameters
-  Returns the value of the operation ``glib.var0 & glib.var1`` on the
   score ``glib.res0``.
-  If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second

*Example:*

Calculate and display -9 & 57

::

    # Once
    scoreboard players set @s glib.var0 -9
    scoreboard players set @s glib.var1 57
    function glib.math:bitwise/and
    tellraw @a [{"text":"-9 & 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Get number of bits
~~~~~~~~~~~~~~~~~~

``get_number_of_bits``: Calculates the number of bits needed to store
the input

-  Takes the score ``glib.var0`` as parameter
-  Returns the number of bits needed to store the input
-  If the input is negative, returns the number of bits needed to store
   the absolute value of the number

*Example:*

Calculate and display the number of bits of 12

::

    # Once
    scoreboard players set @s glib.var0 12
    function glib.math:bitwise/get_number_of_bits
    tellraw @a [{"text": "Number of bits of 12 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

logical NOT
~~~~~~~~~~~

``not``: Computes the bit by bit negation of the input

-  Takes the score ``glib.var0`` as parameter
-  Returns the value of the operation ``~glib.var0`` on the score
   ``glib.res0``.

*Example:*

Calculate and display ~452

::

    # Once
    scoreboard players set @s glib.var0 452
    function glib.math:bitwise/not
    tellraw @a [{"text":"~452 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

OR logic
~~~~~~~~

``or``: Computes the bit to bit disjunction of the two input numbers

-  Takes as parameters the scores ``glib.var0`` and ``glib.var1``.
-  Returns the value of the operation ``glib.var0 | glib.var1`` on the
   score ``glib.res0``.
-  If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second

*Example:*

Calculate and display -9 \| 57.

::

    # Once
    scoreboard players set @s glib.var0 -9
    scoreboard players set @s glib.var1 57
    function glib.math:bitwise/gold
    tellraw @a [{"text":"-9 | 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Complement to 2
~~~~~~~~~~~~~~~

``two_complement``: Computes the two's complement of the input

-  Takes the score ``glib.var0`` as parameter
-  Returns the two's complement of ``glib.var0`` over the score
   ``glib.res0``.

*Example:*

Calculate and display the two's complement of 12

::

    # Once
    scoreboard players set @s glib.var0 12
    function glib.math:bitwise/to_complement
    tellraw @a [{"text": "Two's complement of 12 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

OR exclusive
~~~~~~~~~~~~

``xor``: Computes the exclusive bit by bit disjunction of the two input
numbers

-  Takes as parameters the scores ``glib.var0`` and ``glib.var1``.
-  Returns the value of the operation ``glib.var0 ^ glib.var1`` on the
   score ``glib.res0``
-  If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second

*Example:*

Calculate and display -9 ^ 57

::

    # Once
    scoreboard players set @s glib.var0 -9
    scoreboard players set @s glib.var1 57
    function glib.math:bitwise/xor
    tellraw @a [{"text":"-9 ^ 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Common
======

``glib.math:common/``: this folder contains the usual math functions

Rounded division
~~~~~~~~~~~~~~~~

``divide``: Allows you to divide one number by another by rounding the
result to the nearest whole number (where Minecraft rounds down to the
next whole number).

-  Takes as input the scores ``glib.var0`` and ``glib.var1``
-  Returns the result on the score ``glib.res0``

*Example:*

Calculate 9 / 5:

::

    # Once
    scoreboard players set @s glib.var0 9
    scoreboard players set @s glib.var1 5
    function glib.math:common/divide
    tellraw @a [{"text": "9 / 5 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Exponential
~~~~~~~~~~~

``exp``: Compute the exponential of the number passed in parameter on
the score ``glib.var0`` and return the result on the score ``glib.res0``

-  In order to take into account a certain number of decimals,
   ``glib.var0`` must be multiplied by 100 and ``glib.res0`` is
   multiplied by 1000
-  Due to technical constraints, this system is limited to a glib.var0
   within an interval of ``[-600,1200``] (i.e. ``[-6;12``] in real
   value)

*Example:*

Calculate exp(3):

::

    # Once
    scoreboard players set @s glib.var0 300
    function glib.math:common/exp
    tellraw @a [{"text":"exp(3)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Factorial
~~~~~~~~~

``factorial``: Compute the factorial of the number passed in parameter
on the score ``glib.var0`` and return the result on the score
``glib.res0``.

*Example:*

Compute 3!

::

    # Once
    scoreboard players set @s glib.var0 3
    function glib.math:common/factorial
    tellraw @a [{"text": "3! = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Greatest common denominator
~~~~~~~~~~~~~~~~~~~~~~~~~~~

``gcd``: Compute the greatest common denominator of the two numbers
passed in parameter on the scores ``glib.var0`` and ``glib.var1`` then
return the result on the score ``glib.res0``.

*Example:*

Calculate the greatest common denominator between 16 and 12 :

::

    # Once
    scoreboard players set @s glib.var0 16
    scoreboard players set @s glib.var1 12
    function glib.math:common/gcd
    tellraw @a [{"text": "gcd(16,12) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Neperian logarithm
~~~~~~~~~~~~~~~~~~

``log``: Compute the Neperian logarithm (base e) of the number passed in
parameter on the score ``glib.var0`` and return the result on the score
``glib.res0``.

-  For precision, the parameters of the function and the returned value
   are multiplied by 1000 in order to store 3 decimals

*Example:*

Calculate ln(28):

::

    # Once
    scoreboard players set @s glib.var0 28000
    function glib.math:common/log
    tellraw @a [{"text":"ln(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Logarithm in base 2
~~~~~~~~~~~~~~~~~~~

``log2``: Compute the logarithm in base 2 of the number passed in
parameter on the score ``glib.var0`` and return the result on the score
``glib.res0``.

-  For precision, the parameters of the function and the returned value
   are multiplied by 1000 in order to store 3 decimals

*Example:*

Calculate log2(28):

::

    # Once
    scoreboard players set @s glib.var0 28000
    function glib.math:common/log2
    tellraw @a [{"text":"log2(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Logarithm in base 10
~~~~~~~~~~~~~~~~~~~~

``log10``: Compute the logarithm in base 10 of the number passed in
parameter on the score ``glib.var0`` and return the result on the score
``glib.res0``.

-  For precision, the parameters of the function and the returned value
   are multiplied by 1000 in order to store 3 decimals

*Example:*

Calculate log10(28):

::

    # Once
    scoreboard players set @s glib.var0 28000
    function glib.math:common/log10
    tellraw @a [{"text":"log10(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Logarithm in base a
~~~~~~~~~~~~~~~~~~~

``loga``: Computes the logarithm of the number passed in parameter on
the score ``glib.var0`` using as base the name passed in parameter on
the score ``glib.var1`` and returns the result on the score
``glib.res0``

-  For precision, the parameters of the function and the returned value
   are multiplied by 1000 in order to store 3 decimals

*Example:*

Calculate log4(28):

::

    # Once
    scoreboard players set @s glib.var0 28000
    scoreboard players set @s glib.var1 4
    function glib.math:common/loga
    tellraw @a [{"text":"log4(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Power
~~~~~

``pow``: Compute the product of the number passed in parameter on the
score ``glib.var0`` raised to the power of the number passed in
parameter on the score ``glib.var1``, then return the result on the
score ``glib.res0``

*Example:*

Compute 2^6:

::

    # Once
    scoreboard players set @s glib.var0 2
    scoreboard players set @s glib.var1 6
    function glib.math:common/pow
    tellraw @a [{"text": "2^6 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Square root
~~~~~~~~~~~

``sqrt``: Compute the square root of the number (ex: Sqrt(16) = 4
because 4^2 = 4x4 = 16) 

-  Takes as parameter the score ``glib.var0`` greater than or equal to 0
   (corresponding to a value with a precision of 1:1)
-  Returns the value of the cosine on the score ``glib.res0`` greater
   than or equal to 0 (corresponding to a value with a precision of 1:1)

*Example:*

Calculate and display the square root of 42:

::

    # Once
    scoreboard players set @s glib.var0 42
    function glib.math:common/sqrt
    tellraw @a [{"text": "sqrt(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Special
=======

``glib.math:special/``: this folder contains functions that are of
special interest in algortihms (but not or not much in formal
mathematics)

Retrieve the next power of 2
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``get_next_pow2``: compute the power of 2 directly superior to the
number given in parameter on the score ``glib.var0`` and return the
result on ``glib.res0``.

*Example:*

Find the power of 2 greater than 43

::

    # Once
    scoreboard players set @s glib.var0 43
    function glib.math:special/get_next_pow2
    tellraw @a [{"text":"get_next_pow2(43) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Random number generator
~~~~~~~~~~~~~~~~~~~~~~~

``random``: Generates a random number and returns the result on the
``glib.res0`` score

-  To reduce this interval, execute the function then do a "modulo"
   operation on the result (random % 10 -> the random number will be
   included in the interval [0;9])

*Example:*

Get and display a random number between 0 and 100:

::

    # Once
    function glib.math:special/random
    scoreboard players operation @s glib.res0 %= 101 glib.const
    tellraw @a [{"text": "random() = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

    Beware: the score ``glib.const`` does not contain all possible
    values. Make sure the value you want to use exists and initialize it
    if necessary.

Trig
====

``glib.math:trig/``: this folder contains basic trigonometry functions,
opening a lot of doors to creative possibilities in Minecraft.

Arccosinus
~~~~~~~~~~

``arccos``: Calculate the arccosinus of a value between -1 and 1

-  Takes as parameter the score ``glib.var0`` between -1000 and 1000
   (translating a value from -1 to 1 with a precision of 1:1000)
-  Returns the value of the arccosine on the score ``glib.res0``
   (corresponding to an angle with a precision of 1:1 degree)

*Example:*

Calculate and display the arccos of 0,42

::

    # Once
    scoreboard players set @s glib.var0 420
    function glib.math:trig/arccos
    tellraw @a [{"text":"arccos(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Arcsinus
~~~~~~~~

``arcsin``: Compute the arcsinus of a value between -1 and 1

-  Takes as parameter the score ``glib.var0`` between -1000 and 1000
   (translating a value from -1 to 1 with a precision of 1:1000)
-  Returns the value of the arcsine on the score ``glib.res0``
   (corresponding to an angle with a precision of 1:1 degree)

*Example:*

Calculate and display the arcsinus of 0.42

::

    # Once
    scoreboard players set @s glib.var0 420
    function glib.math:trig/arcsin
    tellraw @a [{"text":"arcsin(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Arctangent
~~~~~~~~~~

``arctan``: Compute the arctangent of a value between -infinite and
+infinite

-  Takes as parameter the score ``glib.var0`` (translating a value with
   a precision of 1:1000)
-  Returns the value of the arctangeant on the score ``glib.res0``
   (corresponding to an angle with a precision of 1:1 degree)

*Example:*

Calculate and display the arctan of 0.42

::

    # Once
    scoreboard players set @s glib.var0 420
    function glib.math:trig/arctan
    tellraw @a [{"text":"arctan(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]

Cosine
~~~~~~

``cos``: Compute the cosine of an angle between 0 and 360

-  Takes as parameter the score ``glib.var0`` between 0 and 360
   (corresponding to an angle with a precision of 1:1 degree)
-  Returns the value of the cosine on the score ``glib.res0`` between
   -1000 and 1000 (translating a value from -1 to 1 with a precision of
   1:1000)

*Example:*

Calculate and display the cosine of 42

::

    # Once
    scoreboard players set @s glib.var0 42
    function glib.math:trig/cos
    tellraw @a [{"text": "cos(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

Sinus
~~~~~

``sin``: Computes the sine of an angle between 0 and 360

-  Takes as parameter the score ``glib.var0`` between 0 and 360
   (corresponding to an angle with a precision of 1:1 degree)
-  Returns the value of the sine on the score ``glib.res0`` between
   -1000 and 1000 (translating a value from -1 to 1 with a precision of
   1:1000)

*Example:*

Calculate and display the sine of 42

::

    # Once
    scoreboard players set @s glib.var0 42
    function glib.math:trig/sin
    tellraw @a [{"text": "sin(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

``tan``: Compute the tangeant of an angle between 0 and 360

-  Takes as parameter the score ``glib.var0`` between 0 and 360
   (corresponding to an angle with a precision of 1:1 degree)
-  Returns the value of the tangeante on the score ``glib.res0`` between
   -infinite and +infinite (translating a value with a precision of
   1:1000)

*Example:*

Calculate and display the tengeante of 42

::

    # Once
    scoreboard players set @s glib.var0 42
    function glib.math:trig/tan
    tellraw @a [{"text": "tan(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "glib.res0"}, "color": "gold"}]

