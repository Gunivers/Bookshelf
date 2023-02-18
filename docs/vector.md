# ↗️ Vector

**`bs.vector:_`**

Vector are fundamental and extremly powerfull tool to manage motions, forces and.. well... do physics!

<div align=center>

![](img/2023-01-27-23-43-58.png)

</div>



```{button-link} https://www.youtube.com/watch?v=IzASD7R80vQ
:color: primary
:shadow:
:align: center

{octicon}`device-camera-video` Watch a demo
```

```{epigraph}

"With vectors, physics has found a magnificent language."

-- Richard Feynman
```

---

## Canonical

**`bs.vector:classic/_`**

"Classic" vectors are vectors that use the default base of the game (canonical one), corresponding to tilds. Thus, a classic position vector (1000,3000,5000) will correspond to the position \~1 \~3 \~5

---

### Get vector by actual orientation

**`get_by_actual_orientation`**

Compute the displacement vector of the entity according to its orientation. This vector is composed of 3 elementary vectors stored on the scores `bs.vector[X,Y,Z]` (each between -1000 and 1000).

*Example:*

Create, for each Creeper, a vector from their respective orientation

```
# Once
execute as @e[type=creeper] run function bs.vector:classic/get_by_actual_orientation
```

```{admonition} Dependencies
:class: important

This function require the following modules to work properly:
- [`bs.location`](location)
```

---

### Get vector "as to at"

**`get_ata`**

Compute a vector from the source entity to the execution position of the function.

*Example:*

Create a vector that connects you to the nearest skeleton:

```
# Once
execute as @s at @e[type=skeleton] run function bs.vector:classic/get_ata
```

```{admonition} Dependencies
:class: important

This function require the following modules to work properly:
- [`bs.location`](location)
```

---

### Get vector lenght

`get_lenght`: compute the norm of the vector and store it on the score `bs.res0`

```{admonition} Dependencies
:class: important

This function require the following modules to work properly:
- [`bs.math`](math)
```

```{tip}

If you want to minimize the performance impact, we recomande you to use the `get_lenght_squared` function instead of this one when it's possible. In fact, computing the lenght of a vector require to perform square root operation which is not a simple task for a computer, especially in Minecraft.
```

---

### Get vector leght squared

**`get_lenght_squared`**

Compute the norm of the squared vector and store it on the score `bs.res0`.

---

### Fast normalize

**`fast_normalize`**

Allows to normalize the components of the vector by placing the largest component at 1000 while respecting the proportions linking these components.

```{tip}
This function compute a not very accurate normalized vector, but avoid doing square root calculations. It is then recommanded to use it when you don't really need precision, in order to minimize the performance impact.
```

---

## Local

**`bs.vector:local/_`**

Local vectors are vectors that use the base defined according to the orientation of the entity, corresponding to the powers (^). Thus, a position vector in local (1000,3000,5000) will correspond to the position ^1 ^3 ^5

---

### Convert classic to local vector

**`get_from_classic_vector`**

Allows to convert a "normal" vector (using the relative reference frame) into local coordinates (using the local reference frame)
* Takes the 3 scores `bs.vector[X,Y,Z]` as input
* Stores the result on the 3 scores `bs.vector[Left,Up,Front]`

*Example:*

Find the local vector corresponding to the vector X=1000, Y=0, Z=0

```
# Once
scoreboard players set @s bs.vectorX 1000
scoreboard players set @s bs.vectorY 0
scoreboard players set @s bs.vectorZ 0
function bs.vector:classic/get_from_classic_vector

# Display the result
tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" VectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs. vectorLeft"}, "color": "gold"},{"text": "VectorUp: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs. vectorUp"}, "color": "gold"},{"text":" VectorFront: ", "color": "dark_gray"},{"score":{"name":"@s", "objective": "bs.vectorFront"}, "color": "gold"}]
```

```{admonition} Dependencies
:class: important

This function require the following modules to work properly:
- [`bs.math`](math)
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