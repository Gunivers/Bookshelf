# ⛰️ Biome

`#bs.biome:help`

Everything concerning biome properties.

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Get temperature

::::{tab-set}
:::{tab-item} Base temperature

**`#bs.biome:get_base_temperature`**

Allows to retrieve the base temperature of the
biome at the execution position of the function.

Inputs

:   (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position where you want to get the temperature.

Output

:   (score) `$biome.get_base_temperature bs.out` as an int scaled by 10^8
    : The base temperature of the biome.

Example

:   Get the base temperature of the current biome

    ```
    # Once
    function #bs.biome:get_base_temperature

    # See the result
    tellraw @a [{"text": "The temperature of my biome: ", "color": "dark_gray"},{"score":{"name":"$biome.get_base_temperature", "objective": "bs.out"}, "color": "gold"}]
    ```

:::
:::{tab-item} At a given location

**`#bs.biome:get_temperature`**

Allows to retrieve the temperature at the execution
position of the function taking into account the temperature of the
biome and its altitude.

Inputs

:   (execution) `at <entity>` or `positioned <x> <y> <z>`
    : The position where you want to get the temperature.

Output

:   (score) `$biome.get_temperature bs.out` as an int scaled by 10^8
    : The temperature at the given location.

Example

:   Get the temperature at the current altitude

    ```
    # Once
    function #bs.biome:get_temperature

    # See the result
    tellraw @a [{"text": "The temperature: ", "color": "dark_gray"},{"score":{"name":"$biome.get_temperature", "objective": "bs.out"}, "color": "gold"}]
    ```

:::
::::

> **Credits**: theogiraudet, Aksiome

---

## 👁️ Predicates

You can find below all predicates available in this module.

---

### Can it rain?

**`bs.biome:can_rain`**

Determine if it can rain or not.

---

### Can it snow?

**`bs.biome:can_snow`**

Determine if it can snow or not.

---

### Can it rain or snow?

**`bs.biome:has_precipitation`**

Determine if the biome has precipitation or not.

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
