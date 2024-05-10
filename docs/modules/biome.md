# ⛰️ Biome

**`#bs.biome:help`**

Comprehensive information and tools related to biome properties.

```{image} /_imgs/modules/biome.png
:align: center
:class: dark_light p-2
```

```{epigraph}
"The most dangerous worldview is the worldview of those have not viewed the world."

-- Alexander von Humboldt
```

---

## 🔧 Functions

You can find below all functions available in this module.

---


### Get biome

```{function} #bs.biome:get_biome

Get biome data at the execution position of the function.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which you want to get biome data.

:Outputs:
  **Storage `bs:out biome`**:
  :::{treeview}
  - {nbt}`compound` Biome data
    - {nbt}`string` **type**: String representation of the id (e.g., `minecraft:plains`).
    - {nbt}`double` **temperature**: The base temperature of the biome.
    - {nbt}`bool` **has_precipitation**: Whether the biome has precipitation or not.
  :::
```

*Get biome data at the current location:*

```mcfunction
# Once
function #bs.biome:get_biome
data get storage bs:out biome
```

> **Credits**: Aksiome

---

### Get temperature

```{function} #bs.biome:get_temperature {scale:<scaling>}

Get the temperature at the execution position of the function taking the altitude into account.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position from which you want to get the temperature.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **scale**: Scalar for the function's output.
  :::

:Outputs:
  **Return | Score `$biome.get_base_temperature bs.out`**: Temperature at a given position.
```

*Get the temperature at the current altitude:*

```mcfunction
# Once
function #bs.biome:get_temperature {scale:1000}
```

> **Credits**: Aksiome, theogiraudet

---

## 👁️ Predicates

You can find below all predicates available in this module.

---

### Can it rain?

**`bs.biome:can_rain`**

Determine if it can rain or not.

> **Credits**: Aksiome

---

### Can it snow?

**`bs.biome:can_snow`**

Determine if it can snow or not.

> **Credits**: Aksiome

---

### Can it rain or snow?

**`bs.biome:has_precipitation`**

Determine if the biome has precipitation or not.

> **Credits**: Aksiome

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
