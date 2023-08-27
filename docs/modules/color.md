# 🎨 Color

**`#bs.color:help`**

Convert colors to your preferred format.

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Rgb to int

**`#bs.color:rgb_to_int`**

:::::{tab-set}
::::{tab-item} Macro variable

Convert a color from rgb to int.

Inputs

:   (macro variable) `color`: array
    : A 3D vector representing the rgb color (example: [0,255,128])


Outputs

:   (return): int
    : The color as an integer.

Example

:   Update the color of a leather armor piece using the rgb color format.

    ```mcfunction
    # Summon a test subject with a leather helmet
    summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

    # Change the helmet color of all zombie to red
    execute as @e[type=minecraft:zombie] store result entity @s ArmorItems[3].tag.display.color int 1 run function #bs.color:rgb_to_int {color:[255,0,0]}
    ```

::::
::::{tab-item} Storage

Convert a color from rgb to int.

Inputs

:   (storage) `bs:in color.rgb_to_int.color`: array
    : A 3D vector representing the rgb color (example: [0,255,128])


Outputs

:   (storage) `bs:out color.rgb_to_int`: int
    : The color as an integer.

Example

:   Update the color of a leather armor piece using the rgb color format.

    ```mcfunction
    # Summon a test subject with a leather helmet
    summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

    # Compute the int representation of a pure red color
    data modify storage bs:in color.rgb_to_int set value [255,0,0]
    function #bs.color:rgb_to_int

    # Change the helmet color of all zombie to red
    execute as @e[type=minecraft:zombie] store result entity @s ArmorItems[3].tag.display.color int 1 run data get storage bs:out color.rgb_to_int
    ```

::::
::::{tab-item} Score

Convert a color from rgb to int.

Inputs

:   (scores) `#color.rgb_to_int.[r,g,b] bs.in`
    : The 3 vector elements representing the rgb color


Outputs

:   (score) `#color.rgb_to_int bs.out`
    : The color as an integer.

Example

:   Update the color of a leather armor piece using the rgb color format.

    ```mcfunction
    # Summon a test subject with a leather helmet
    summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

    # Compute the int representation of a pure red color
    scobreboard players set $color.rgb_to_int.r bs.in 255
    scobreboard players set $color.rgb_to_int.g bs.in 0
    scobreboard players set $color.rgb_to_int.b bs.in 0
    function #bs.color:rgb_to_int/score

    # Change the helmet color of all zombie to red
    execute as @e[type=minecraft:zombie] store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get $color.rgb_to_int bs.out
    ```

::::
:::::

```{admonition} Input / Output flexibility
:class: tip

All version use the same function tag. It allow to use any input and ouput source you want. For example, you can input the RGB using score and get the output in the storage.

Be careful, if serveral inputs are given, lower priority inputs will be overwritten. Macro variable have the highest priority, then storage and finally score.

If you are searching for the best performances, you can use `function bs.color:rgb_to_int/score` to bypass flexibility interfaces (but then you only have score input and output).
```

> **Credits**: theogiraudet, Aksiome

---

### Int to rgb

**`#bs.color:int_to_rgb`**

Convert a color from int to rgb. The score version of this function is also available inside the lib (bs.color:int_to_rgb/score).

Inputs

:   (storage) `bs:in color.int_to_rgb.color` or (macro variable) `color`: int
    : The color as an integer.

Outputs

:   (storage) `bs:out color.int_to_rgb`
    : A vec3 representing the rgb color (example: [0,255,128])

Example

:   Get the rgb color of a piece of armor.

    ```mcfunction
    # Get the rgb representation of a dropped armor piece
    function #bs.color:int_to_rgb with entity @e[type=item,tag=my_armor,limit=1] tag.display
    ```

> **Credits**: theogiraudet, Aksiome

---

<div align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>

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
