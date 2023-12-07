# 🎨 Color

**`#bs.color:help`**

Facilitate color conversion between various formats.

```{image} /_imgs/modules/color.png
:align: center
:class: dark_light
```

```{epigraph}
"Color helps to express light—not the physical phenomenon, but the only light that really exists, that in the artist's brain."

-- Henri Matisse
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Rgb to int

```{function} #bs.color:rgb_to_int

Convert a color from rgb to int.

:Inputs:
  **Macro Var `color` [array]**: Vector representing the rgb color (example: [0,255,128]).

:Outputs:
  **Return | Score `$color.rgb_to_int bs.out`**: Color as an int.

  **Storage `bs:out color.rgb_to_int` [int]**: Color as an int.
```

*Change the color of the nearest zombie's leather helmet using the rgb format:*
```mcfunction
# Summon a test subject
summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}]}

# Set the helmet color
execute as @e[type=minecraft:zombie,sort=nearest,limit=1] store result entity @s ArmorItems[3].tag.display.color int 1 run function #bs.color:rgb_to_int {color:[255,0,0]}
```

> **Credits**: Aksiome, theogiraudet

---

### Int to rgb

```{function} #bs.color:int_to_rgb

Convert a color from int to rgb.

:Inputs:
  **Macro Var `color` [int]**: Color as an int.

:Outputs:
  **Storage `bs:out color.int_to_rgb` [array]**: Vector representing the rgb color.

  **Scores `$color.int_to_rgb.[r,g,b] bs.out`**: Vector components representing the rgb color.
```

*Get the rgb color of the nearest zombie's leather helmet:*
```mcfunction
# Get the rgb color
function #bs.color:int_to_rgb with entity @e[type=minecraft:zombie,sort=nearest,limit=1] ArmorItems[3].tag.display

# Show the result
data get storage bs:out color.int_to_rgb
```

> **Credits**: Aksiome, theogiraudet

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
