# 🖥️ Bitwise

**`bs.math:bitwise`**

This folder contains various bitwise operators to
*apply to scores.

<div align=center>

![](img/bitwise.png)

</div>

```{button-link} https://youtu.be/itgPhvTMSZQ
:color: primary
:align: center
:shadow:

{octicon}`device-camera-video` Watch a demo
```

<div align=center>

_Friendly advice: decrease the volume before clicking_ 😅

</div>

```{epigraph}
"Binary is a very simple numbering system, but it is incredibly powerful when used correctly."

-- Alan Turing
```

---

## logical AND

**`bs.bitwise:and`**

Computes the bitwise conjunction of the two input numbers

:Inputs:

   (execution) `as <entities>`
   : The entities to perform the operation on

   (score) `@s bs.in.0`
   : The first operand $a$

   (score) `@s bs.in.1`
   : The second operand $b$

   ```{admonition} Negative input
   :class: hint
      
   If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second
   ```

:Outputs:

   (score) `@s bs.out.0`
   : The result of the operation = $a \times b$

:Example:

   Calculate and display $-9 \times 57$
   ```
   # Once
   scoreboard players set @s bs.in.0 -9
   scoreboard players set @s bs.in.1 57
   function bs.math:bitwise/and
   tellraw @a [{"text":"-9 & 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
   ```

---

## Get number of bits

**`get_number_of_bits`**

Calculates the number of bits needed to store
the input

:Inputs:

   (execution) `as <entities>`
   : The entities to perform the operation on

   (score) `@s bs.in.0`
   : The number you want to know the number of bits

:Outputs:

   (score) `@s bs.out.0`
   : The number of bits needed to store the input

   ```{admonition} Negative input
   :class: hint
      
   If the input is negative, returns the number of bits needed to store
   the absolute value of the number
   ```

:Example:

   Calculate and display the number of bits of 12
   ```
   # Once
   scoreboard players set @s bs.in.0 12
   function bs.math:bitwise/get_number_of_bits
   tellraw @a [{"text": "Number of bits of 12 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
   ```

---

## logical NOT

**`bs.bitwise:not`**

Computes the bit by bit negation of the input

:Inputs:

   (execution) `as <entities>`
   : The entities to perform the operation on

   (score) `@s bs.in.0`
   : The number you want to negate

:Example:

   Calculate and display $~452$
   ```
   # Once
   scoreboard players set @s bs.in.0 452
   function bs.math:bitwise/not
   tellraw @a [{"text":"~452 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
   ```

---

## OR logic

**`bs.bitwise:or`**

Computes the bit to bit disjunction of the two input numbers

:Inputs:

   (execution) `as <entities>`
   : The entities to perform the operation on

   (score) `@s bs.in.0`
   : The first operand $a$

   (score) `@s bs.in.1`
   : The second operand $b$

   ```{admonition} Negative input
   :class: hint
      
   If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second
   ```

:Outputs:

   (score) `@s bs.out.0`
   : The result of the operation = $a + b$

:Example:

   Calculate and display $-9 + 57$.
   ```
   # Once
   scoreboard players set @s bs.in.0 -9
   scoreboard players set @s bs.in.1 57
   function bs.math:bitwise/gold
   tellraw @a [{"text":"-9 | 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
   ```

---

## Complement to 2

**`bs.bitwise:two_complement`**

Computes the two's complement of the input

:Inputs:

   (execution) `as <entities>`
   : The entities to perform the operation on

   (score) `@s bs.in.0`
   : The number you want to compute the two's complement

:Outputs:

   (score) `@s bs.out.0`
   : The two's complement of the input

:Example:

   Calculate and display the two's complement of 12
   ```
   # Once
   scoreboard players set @s bs.in.0 12
   function bs.math:bitwise/to_complement
   tellraw @a [{"text": "Two's complement of 12 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
   ```

---

## OR exclusive

**`bs.bitwise:xor`**

Computes the exclusive bit by bit disjunction of the two input
numbers

:Inputs:

   (execution) `as <entities>`
   : The entities to perform the operation on

   (score) `@s bs.in.0`
   : The first operand $a$

   (score) `@s bs.in.1`
   : The second operand $b$

   ```{admonition} Negative input
   :class: hint
      
   If one of the inputs is negative, the operation will be done between
   the first operand and the two's complement of the second
   ```

:Outputs:

   (score) `@s bs.out.0`
   : The result of the operation = $a \oplus b$

:Example:

   Calculate and display $-9 \oplus 57$.
   ```
   # Once
   scoreboard players set @s bs.in.0 -9
   scoreboard players set @s bs.in.1 57
   function bs.math:bitwise/xor
   tellraw @a [{"text":"-9 ^ 57 = ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.out.0"}, "color": "gold"}]
   ```

---

# 💬 Did it help you?

Feel free to leave your questions and feedbacks below!

<script src="https://giscus.app/client.js"
        data-repo="Gunivers/Glibs"
        data-repo-id="R_kgDOHQjqYg"
        data-category="Documentation"
        data-category-id="DIC_kwDOHQjqYs4CUQpy"
        data-mapping="title"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="light"
        data-lang="fr"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>