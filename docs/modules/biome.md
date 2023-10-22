# ⛰️ Biome

**`#bs.biome:help`**

Everything concerning biome properties.

```{image} img/biome_light.jpg
:align: center
:class: only-light
```

```{image} img/biome_dark.jpg
:align: center
:class: only-dark
```

```{epigraph}
"The most dangerous worldview is the worldview of those have not viewed the world."

-- Alexander von Humboldt
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Get temperature

::::{tab-set}
:::{tab-item} Base temperature

```{function} #bs.biome:get_base_temperature

Get the base temperature of the biome at the execution position of the function.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which you want to get the temperature.

:Outputs:
  **Return | Score `$biome.get_base_temperature bs.out`**: Base temperature of the biome (scaled by 10^8).
```

*Get the base temperature of the current biome:*

```mcfunction
# Once
function #bs.biome:get_base_temperature
```

:::
:::{tab-item} At a given position

```{function} #bs.biome:get_temperature

Get the temperature at the execution position of the function taking the altitude into account.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which you want to get the temperature.

:Outputs:
  **Return | Score `$biome.get_base_temperature bs.out`**: Temperature at a given position (scaled by 10^8).
```

*Get the temperature at the current altitude:*

```mcfunction
# Once
function #bs.biome:get_temperature
```

:::
::::

> **Credits**: Aksiome, theogiraudet

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
