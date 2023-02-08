# 🧮 Math

**`bs.math:_`**

The beatifull world of mathematics... **in Minecraft!**

<div align=center>

![](img/2023-01-27-22-55-18.png)

</div>

```{button-link} https://youtu.be/Bt0HKaOosqU
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch a demo
```

---

## Algebra

**`bs.math:algebra/_`**

This folder allows you to perform algebra operations

---

### Basis rotation 3D

**`bs.math:algebra/basis_rotation_3d`**

Allows to obtain the equivalent of the vector
passed in parameter in a base with a different orientation. Useful to
convert an absolute/relative position into a local position for a given
entity.

```{admonition} Issue reported
:class: warning

This function is not working properly. You can follow the {octicon}`issue-opened;1em;sd-text-info` [issue](https://github.com/Gunivers/Glibs/issues/31) resolution on Github.
```

:Inputs:

   **(execution) `as <entities>`**: The entities you want to perform the computation on

   **(scores) `@s bs.var<0|1|2>`**: Vector coordinates $(X,Y,Z)$ in the starting base

   **(scores) `@s bs.var<3|4>`**: Horizontal (along $\hat{z}$) and vertical (along $\hat{\phi}$) rotation (in degree) from the starting base

:Outputs:

   **(scores) `bs.res<0|1|2>`** Vector coordinates $(X',Y',Z')$ in the target base

:Examples:

   A block is in ~2 ~5 ~10 from me, I want to have this position in local coordinate (^? ^? ^?)
   
   ```
   # One time

   # Relative coordinates (we multiply by 1000 to have more precision on the result, which will also be multiplied by 1000)
   scoreboard players set @s bs.var0 2000
   scoreboard players set @s bs.var1 5000
   scoreboard players set @s bs.var2 10000

   # Difference between my orientation (= that of the coondata grid ^X ^Y ^Z) and the orientation of the Minecraft blocks grid (~X ~Y ~Z)
   function bs.orientation:get
   scoreboard players operation @s bs.var3 = @s bs.oriH
   scoreboard players operation @s bs.var4 = @s bs.oriV

   # Perform the basic rotation
   function bs.math:algebra/basis_rotation_3d

   # See the result
   tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs. res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res2"},"color":"gold"}]
   ```

   I want to have a vector pointing to where I'm looking, but in relative coordinates ~X ~Y ~Z (also called "classical" vector in this library)
   
   ```
   # Once

   # Retrieve a vector ^ ^ ^1 corresponding to a vector directed according to the orientation of the entity (we multiply by 1000 to have more precision on the result, which will also be multiplied by 1000)
   scoreboard players set @s bs.var0 0
   scoreboard players set @s bs.var1 0
   scoreboard players set @s bs.var2 1000

   # Get the orientation
   function bs.orientation:get
   scoreboard players operation @s bs.var3 = @s bs.oriH
   scoreboard players operation @s bs.var4 = @s bs.oriV

   # Reversal of the orientation since we want to have the relative orientation of the game grid compared to the orientation of the player (unlike the previous example)
   scoreboard players operation @s bs.var3 *= -1 bs.const
   scoreboard players operation @s bs.var4 *= -1 bs.const

   # Perform the basic rotation
   function bs.math:algebra/basis_rotation_3d

   # See the result
   tellraw @a [{"text": "X = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"},{"text":", Y = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs. res1"},"color":"gold"},{"text":", Z = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res2"},"color":"gold"}]
   ```

---

## Bitwise

`bs.math:bitwise`: This folder contains various bitwise operators to
apply to scores.

```{button-link} https://youtu.be/itgPhvTMSZQ
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch the video
```

---

### logical AND

`and`: Computes the bitwise conjunction of the two input numbers

-  Takes the scores `bs.var0` and `bs.var1` as parameters
-  Returns the value of the operation `bs.var0 & bs.var1` on the
   score `bs.res0`.
-  If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second

*Example:*

-  Calculate and display -9 & 57
   ```
   # Once
   scoreboard players set @s bs.var0 -9
   scoreboard players set @s bs.var1 57
   function bs.math:bitwise/and
   tellraw @a [{"text":"-9 & 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

---

### Get number of bits

`get_number_of_bits`: Calculates the number of bits needed to store
the input

-  Takes the score `bs.var0` as parameter
-  Returns the number of bits needed to store the input
-  If the input is negative, returns the number of bits needed to store
   the absolute value of the number

*Example:*

-  Calculate and display the number of bits of 12
   ```
   # Once
   scoreboard players set @s bs.var0 12
   function bs.math:bitwise/get_number_of_bits
   tellraw @a [{"text": "Number of bits of 12 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

---

### logical NOT

`not`: Computes the bit by bit negation of the input

-  Takes the score `bs.var0` as parameter
-  Returns the value of the operation `~bs.var0` on the score
   `bs.res0`.

*Example:*

-  Calculate and display ~452
   ```
   # Once
   scoreboard players set @s bs.var0 452
   function bs.math:bitwise/not
   tellraw @a [{"text":"~452 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

---

### OR logic

`or`: Computes the bit to bit disjunction of the two input numbers

-  Takes as parameters the scores `bs.var0` and `bs.var1`.
-  Returns the value of the operation `bs.var0 | bs.var1` on the
   score `bs.res0`.
-  If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second

*Example:*

-  Calculate and display -9 \| 57.
   ```
   # Once
   scoreboard players set @s bs.var0 -9
   scoreboard players set @s bs.var1 57
   function bs.math:bitwise/gold
   tellraw @a [{"text":"-9 | 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

---

### Complement to 2

`two_complement`: Computes the two's complement of the input

-  Takes the score `bs.var0` as parameter
-  Returns the two's complement of `bs.var0` over the score
   `bs.res0`.

*Example:*

-  Calculate and display the two's complement of 12
   ```
   # Once
   scoreboard players set @s bs.var0 12
   function bs.math:bitwise/to_complement
   tellraw @a [{"text": "Two's complement of 12 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

---

### OR exclusive

`xor`: Computes the exclusive bit by bit disjunction of the two input
numbers

-  Takes as parameters the scores `bs.var0` and `bs.var1`.
-  Returns the value of the operation `bs.var0 ^ bs.var1` on the
   score `bs.res0`
-  If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second

*Example:*

-  Calculate and display -9 ^ 57
   ```
   # Once
   scoreboard players set @s bs.var0 -9
   scoreboard players set @s bs.var1 57
   function bs.math:bitwise/xor
   tellraw @a [{"text":"-9 ^ 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

---

## Common

**`bs.math:common/_`**

This folder contains the usual math functions

---

### Rounded division

**`bs.math:common/divide`**

Allows you to divide one number by another by rounding the
result to the nearest whole number (where Minecraft rounds down to the
next whole number).

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the numerator

   **(score) `@s bs.var1`**: the denominator

:Output:

   **(score) `@s bs.res0`**: the result of the division

:Example:

   Calculate $9/5$
   ```
   # Once
   scoreboard players set @s bs.var0 9
   scoreboard players set @s bs.var1 5
   function bs.math:common/divide
   tellraw @a [{"text": "9 / 5 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/divide.png)

---

### Exponential

**`bs.math:common/exp`**

Compute the exponential of the number passed in parameter on
the score `bs.var0` and return the result on the score `bs.res0`

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the number to be exponentiated shifted by two digits (1,2345 -> 123) for better precision in integer scores

   ```{admonition} Technical limitation
   :class: important
   Due to the limit of integers that can be stored in a score, the interval of `bs.var0` is limited to `[-600,1200]` (i.e. `[-6;12]` in real value)
   ```

:Output:

   **(score) `@s bs.res0`**: the result of the operation shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Example:

   Calculate $exp(3)$
   ```
   # Once
   scoreboard players set @s bs.var0 300
   function bs.math:common/exp
   tellraw @a [{"text":"exp(3)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/exp.png)

```{note}
We are looking for a better implementation of this function. If you have any ideas, please join our [Discord server](https://discord.gg/E8qq6tN) to discuss with us!
```

---

### Factorial

**`bs.math:common/factorial`**

Compute the factorial of the number

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the number to be factorialized

   ```{admonition} Technical limitation
   :class: important

   Due to the limit of integers that can be stored in a score, the interval of `bs.var0` is limited to `[0,12]`
   ```

:Output:

   **(score) `@s bs.res0`**: the result of the operation

:Example:

   Compute $3!$
   ```
   # Once
   scoreboard players set @s bs.var0 3
   function bs.math:common/factorial
   tellraw @a [{"text": "3! = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/factorial.png)

---

### Greatest common denominator

**`bs.math:common/gcd`**

Compute the greatest common denominator of two numbers

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the first number

   **(score) `@s bs.var1`**: the second number

:Output:

   **(score) `@s bs.res0`**: the greatest common denominator

:Example:

   Calculate the greatest common denominator between 16 and 12
   ```
   # Once
   scoreboard players set @s bs.var0 16
   scoreboard players set @s bs.var1 12
   function bs.math:common/gcd
   tellraw @a [{"text": "gcd(16,12) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/gcd.png)

---

### Logarithm

::::{tab-set}

:::{tab-item} Base e (Neperian)

**`bs.math:common/log`**

Compute the Neperian logarithm (base e) of a number

```{admonition} Issue reported
:class: error

This function is not working properly. You can follow the {octicon}`issue-opened;1em;sd-text-info` [issue](https://github.com/Gunivers/Glibs/issues/25) resolution on Github.
```

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the number to be logarithmized, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Output:

   **(score) `@s bs.res0`**: the result of the operation, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Example:

   Calculate $ln(28)$
   ```
   # Once
   scoreboard players set @s bs.var0 28000
   function bs.math:common/log
   tellraw @a [{"text":"ln(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

:::
:::{tab-item} Base 2

**`bs.math:common/log2`**

Compute the logarithm in base 2 of a number

```{admonition} Issue reported
:class: error

This function is based on the `log` one, so is not working properly either. You can follow the {octicon}`issue-opened;1em;sd-text-info` [issue](https://github.com/Gunivers/Glibs/issues/25) resolution on Github.
```

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the number to be logarithmized, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Output:

   **(score) `@s bs.res0`**: the result of the operation, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Example:

   Calculate $log_2(28)$:
   ```
   # Once
   scoreboard players set @s bs.var0 28000
   function bs.math:common/log2
   tellraw @a [{"text":"log2(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```
:::
:::{tab-item} Base 10

**`bs.math:common/log10`**

Compute the logarithm in base 10 of a number

```{admonition} Issue reported
:class: error

This function is based on the `log` one, so is not working properly either. You can follow the {octicon}`issue-opened;1em;sd-text-info` [issue](https://github.com/Gunivers/Glibs/issues/25) resolution on Github.
```

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the number to be logarithmized, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Output:

   **(score) `@s bs.res0`**: the result of the operation, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Example:

   Calculate $log_{10}(28)$
   ```
   # Once
   scoreboard players set @s bs.var0 28000
   function bs.math:common/log10
   tellraw @a [{"text":"log10(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

:::
:::{tab-item} Base a

**`bs.math:common/loga`**

Computes the logarithm in base a of a number

```{admonition} Issue reported
:class: error

This function is based on the `log` one, so is not working properly either. You can follow the {octicon}`issue-opened;1em;sd-text-info` [issue](https://github.com/Gunivers/Glibs/issues/25) resolution on Github.
```

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the operation on

   **(score) `@s bs.var0`**: the number to be logarithmized, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

   **(score) `@s bs.var1`**: the base of the logarithm (not shifted)

:Output:

   **(score) `@s bs.res0`**: the result of the operation, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Example:

   Calculate $log_4(28)$
   ```
   # Once
   scoreboard players set @s bs.var0 28000
   scoreboard players set @s bs.var1 4
   function bs.math:common/loga
   tellraw @a [{"text":"log4(28)*10^3 = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

:::
::::

### Power

**`bs.math:common/pow`**

Compute $x^y$

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on

   **(score) `@s bs.var0`**: the base

   **(score) `@s bs.var1`**: the exponent

:Output:

   **(score) `@s bs.res0`**: the result of the calculation

:Example:

   Compute $2^6$
   ```
   # Once
   scoreboard players set @s bs.var0 2
   scoreboard players set @s bs.var1 6
   function bs.math:common/pow
   tellraw @a [{"text": "2^6 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/power.png)

---

### Square root

**`bs.math:common/sqrt`**

Compute the square root of the number

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on

   **(score) `@s bs.var0`**: the number you want to calculate the square root of

:Output:

   **(score) `@s bs.res0`**: the result of the calculation

:Example:

   Calculate and display $\sqrt{42}$
   ```
   # Once
   scoreboard players set @s bs.var0 42
   function bs.math:common/sqrt
   tellraw @a [{"text": "sqrt(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/sqrt.png)

---

## Special

`bs.math:special/`: this folder contains functions that are of
special interest in algortihms (but not or not much in formal
mathematics)

---

### Retrieve the next power of 2

`get_next_pow2`: compute the power of 2 directly superior to the
number given in parameter on the score `bs.var0` and return the
result on `bs.res0`.

*Example:*

-  Find the power of 2 greater than 43
   ```
   # Once
   scoreboard players set @s bs.var0 43
   function bs.math:special/get_next_pow2
   tellraw @a [{"text":"get_next_pow2(43) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

---

### Random number generator

`random`: Generates a random number and returns the result on the
`bs.res0` score

-  To reduce this interval, execute the function then do a "modulo"
   operation on the result (random % 10 -> the random number will be
   included in the interval [0;9])

*Example:*

-  Get and display a random number between 0 and 100:
   ```
   # Once
   function bs.math:special/random
   scoreboard players operation @s bs.res0 %= 101 bs.const
   tellraw @a [{"text": "random() = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]

   Beware: the score `bs.const` does not contain all possible
   values. Make sure the value you want to use exists and initialize it
   if necessary.
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/random.png)

---

## Trigonometry

**`bs.math:trig/_`**

This folder contains basic trigonometry functions,
opening a lot of doors to creative possibilities in Minecraft.

---

### Arccosine

**`bs.math:trgi/arccos`

Calculate the arccosinus of a value between -1 and 1

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on

   **(score) `@s bs.var0`**: the value you want to calculate the arccosine of, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Output:

   **(score) `@s bs.res0`**: the result of the calculation, in degrees (not shifted)

:Example:

   Calculate and display the arccos of 0,42
   ```
   # Once
   scoreboard players set @s bs.var0 420
   function bs.math:trig/arccos
   tellraw @a [{"text":"arccos(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/arcsin.png)

---

### Arcsine

**`bs.math:trg/arcsin`

Compute the arcsinus of a value between -1 and 1

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on

   **(score) `@s bs.var0`**: the value you want to calculate the arcsine of, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Output:

   **(score) `@s bs.res0`**: the result of the calculation, in degrees (not shifted)

:Example:

   Calculate and display the arcsinus of 0.42
   ```
   # Once
   scoreboard players set @s bs.var0 420
   function bs.math:trig/arcsin
   tellraw @a [{"text":"arcsin(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/arccos.png)

---

### Arctangent

**`bs.math:trig/arctan`

Compute the arctangent of a value between -infinite and +infinite

```{admonition} Issue reported
:class: warning

This function is not working properly. You can follow the {octicon}`issue-opened;1em;sd-text-info` [issue](https://github.com/Gunivers/Glibs/issues/30) resolution on Github.
```

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on

   **(score) `@s bs.var0`**: the value you want to calculate the arctangent of, shifted by 3 digits (1,2345 -> 1234) for better precision in integer scores

:Output:

   **(score) `@s bs.res0`**: the result of the calculation, in degrees (not shifted)

:Example:

   Calculate and display the arctan of 0.42
   ```
   # Once
   scoreboard players set @s bs.var0 420
   function bs.math:trig/arctan
   tellraw @a [{"text":"arctan(0.42) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
   ```

---

### Cosine

**`bs.math:trig/cos`**

Compute the cosine of an angle between 0 and 360

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on
   **(score) `@s bs.var0`**: the angle in degrees

:Outputs:

   **(score) `@s bs.res0`**: the cosine of the angle shifted by 3 digits (ex: 0.42 -> 420)

:Example:

   Calculate and display the cosine of 42
   ```
   # Once
   scoreboard players set @s bs.var0 42
   function bs.math:trig/cos
   tellraw @a [{"text": "cos(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/cos.png)

---

### Sine

**`bs.math:trig/sin`**

Computes the sine of an angle between 0 and 360

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on
   **(score) `@s bs.var0`**: the angle in degrees

:Outputs:

   **(score) `@s bs.res0`**: the sine of the angle shifted by 3 digits (ex: 0.42 -> 420)

:Example:

   Calculate and display the sine of 42
   ```
   # Once
   scoreboard players set @s bs.var0 42
   function bs.math:trig/sin
   tellraw @a [{"text": "sin(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](img/2023-02-07-09-00-23.png)

---

### Tangent

**`bs.math:trig/tan`**

Compute the tangeant of an angle between 0 and 360

:Inputs:

   **(execution) `as <entities>`**: the entities you want to perform the calculation on

   **(score) `@s bs.var0`**: the angle in degrees (not shifted)

:Outputs:

   **(score) `@s bs.res0`**: the tangeant of the angle shifted by 3 digits (ex: 0.42 -> 420)

:Example:

   Calculate and display the tengeante of 42
   ```
   # Once
   scoreboard players set @s bs.var0 42
   function bs.math:trig/tan
   tellraw @a [{"text": "tan(42) = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.res0"}, "color": "gold"}]
   ```

![](https://gunivers.net/wp-content/uploads/2022/06/tan.png)
