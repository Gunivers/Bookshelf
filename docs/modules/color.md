# 🎨 Color

**`#bs.color:help`**

Convert colors to your preferred format.

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Rgb to int

**`#bs.color:rgb_to_int`**

Convert a color from rgb to int. The score version of this function is also available inside the lib (bs.color:rgb_to_int/score).

Inputs

:   (storage) `bs:in color.rgb_to_int.color` or (macro variable) `color`: array
    : A vec3 representing the rgb color (example: [0,255,128])


Outputs

:   (return) or (storage) `bs:out color.rgb_to_int`: int
    : The color as an integer.

Example

:   Update the color of a leather armor piece using the rgb color format.

    ```mcfunction
    # Summon a test subject with a leather helmet
    summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

    # Change the helmet color of all zombie to red
    execute as @e[type=minecraft:zombie] store result entity @s ArmorItems[3].tag.display.color int 1 run function #bs.color:rgb_to_int {color:[255,0,0]}
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
