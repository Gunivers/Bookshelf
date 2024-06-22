# 🎲 Random

**`#bs.random:help`**

Contains many random functions for different distributions and noise patterns.

```{image} /_imgs/modules/random.png
:align: center
:class: dark_light p-2
```

```{epigraph}
"Creativity is the ability to introduce order into the randomness of nature."

-- Eric Hoffer
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Random Distributions

:::::{tab-set}
::::{tab-item} Binomial

```{function} #bs.random:distributions/binomial {chance:<chance>,trials:<trials>}

Generates a random number with binomial distribution of parameters `trials`, `chance`

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **chance**: The probability of success of each Bernoulli trial, with a scale of 1,000,000,000.
    - {nbt}`number` **trials**: The number of Bernoulli trials. Maximum accepted value is 1000. Otherwise, output is 0.
  :::

:Outputs:
  **Return | Score `$random.binomial bs.out`**: An random integer in [0, `trials`]
```

*Generate a random number between 1 and 10, with a 20% chance*

```mcfunction
# Generate random number
function #bs.random:distributions/binomial {chance:200000000,trials:10}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.binomial", "objective": "bs.out"}, "color": "gold"}]
```

```{admonition} Low chance values appear to fail
:class: warning

If you input a low `chance` value (in the 10s or 1000s) *and* a low `trial` value (in the 10s) then it will appear to fail. This is due to the fact that the `chance`s are scaled down by 1 billion, or 1000000000. This means that if you have a `chance` value of 1000 and a `trial` amount of 10, then it will have 0.0001% of a chance of returning a value. Be sure that if you use low `trial` values, use higher `chance` values. **Always test to make sure the function gives you the distribution you want.**
```

::::
::::{tab-item} Geometric

```{function} #bs.random:distributions/geometric {chance:<chance>}

Generates a random number following a geometric distribution given parameter `chance`.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **chance**: The probability of stopping at each trial.
  :::

:Outputs:
  **Return | Score `$random.geometric bs.out`**: A random integer in [0, 1000]
```

*Generate a random number with a 2% chance of stopping*

```mcfunction
# Generate random number
function #bs.random:distributions/geometric {chance:20000000}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.geometric", "objective": "bs.out"}, "color": "gold"}]
```

::::
::::{tab-item} Poisson

```{function} #bs.random:distributions/poisson {lambda:<lambda>}

Generates a random number following a poisson distribution, given the expected value `lambda`.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **lambda**: The expected value with a scale of 10, a number between 1 and 100
  :::

:Outputs:
  **Return | Score `$random.poisson bs.out`**: A random integer, biased towards the `lambda` variable
```

*Generate a random number biased towards 5*

```mcfunction
# Generate random number
function #bs.random:distributions/poisson {lambda:50}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.poisson", "objective": "bs.out"}, "color": "gold"}]
```

::::
:::::

> **Credits**: SBtree

### Random Choice

```{function} #bs.random:choose

Picks a random value from an array

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`array` **lise**: The list of values to choose from
  :::

:Outputs:
  **Storage `bs:out random.choose.selection`**: {nbt}`any` Value that is randomly selected
```

*Generate a random number between 1 and 10, with a 20% chance*

```mcfunction
# Populate list with test values
data modify storage bs:in random.choose.list set value ["Apples", "Bananas", "Strawberries", "Blueberries", "Mango", "Watermelon", "Honeydew Melon"]

# Randomly select one
function #bs.random:choose

# See the result
tellraw @a [{"text": "Value: ", "color": "dark_gray"},{"nbt":"random.choose.selection","storage":"bs:out", "color": "gold"}]
```

> **Credits**: SBtree

### Noise

:::::{tab-set}
::::{tab-item} White Noise

```{function} #bs.random:noise/white_noise {width:<width>,height:<height>,with:{}}

Generates a white noise texture with the size `width` by `height`

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **width**: The width of the noise
    - {nbt}`number` **height**: The height of the noise
    - {nbt}`number` **range**: The range of values
    - {nbt}`compound` **with**: Callback settings
      - {nbt}`string` **function**: The callback function to run when a tile is generated
      - {nbt}`number` **spacing**: The amount of rows to generate before calling the callback
      - {nbt}`number` **postpone**: Whether to postpone to the next tick after calling the callback, values higher than 0 mean postpone.
  :::

:Outputs:
  **Storage `bs:out random.noise`**: A two-dimensional array of 0s and 1s, with the size of `width` by `height`.
```

*Generate a 4x4 random noise pattern*

```mcfunction
# Generate random noise
function #bs.random:noise/white_noise {width:4, height:4, range:3}

# See the result
tellraw @a [{"text": "Noise: ", "color": "dark_gray"},{"nbt":"noise","storage":"bs:out", "color": "gold"}]
```

![](/_imgs/modules/random/white_noise.jpeg)

::::
::::{tab-item} Value Noise

```{function} #bs.random:noise/value_noise {width:<width>,height:<height>,with:{}}

Generates a value noise texture with the size `width` by `height`

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **tile_size**: The size of the "tiles" of noise - lower tile size means more detail and unpredictability, higher tile size means less detail but more predictable.
    - {nbt}`number` **width**: The width of the noise
    - {nbt}`number` **height**: The height of the noise
    - {nbt}`number` **range**: The range of values
    - {nbt}`compound` **with**: Callback settings
      - {nbt}`string` **function**: The callback function to run when a tile is generated
      - {nbt}`number` **spacing**: The amount of rows to generate before calling the callback
      - {nbt}`number` **postpone**: Whether to postpone to the next tick after calling the callback, values higher than 0 mean postpone.
  :::

:Outputs:
  **Storage `bs:out random.noise`**: A two-dimensional array of 0s and 1s, with the size of `width` by `height`.
```

*Generate a 16x16 random noise pattern and use it to create a small terain model*

```mcfunction
# Generate random noise
function #bs.random:noise/value_noise/ {tile_size:4, width:16, height:16, with:{spacing:1, postpone:1, function:"demo:noise_loop"}}

# /function demo:noise_loop
execute store result score #tmp demo run data get storage bs:out random.noise[0][0] 100
execute at @e[tag=test] if score #tmp demo matches 0..25 run setblock ~ ~ ~ sand
execute at @e[tag=test] if score #tmp demo matches 0..25 run setblock ~ ~1 ~ water
execute at @e[tag=test] if score #tmp demo matches 26..50 run setblock ~ ~1 ~ grass_block
execute at @e[tag=test] if score #tmp demo matches 51..75 run setblock ~ ~2 ~ stone
execute at @e[tag=test] if score #tmp demo matches 75..100 run setblock ~ ~3 ~ grass_block
execute as @e[tag=test] at @s run tp ~1 ~ ~
data remove storage bs:out random.noise[0][0]
execute as @e[tag=test] at @s unless data storage bs:out random.noise[0][0] run tp ~-16 ~ ~1
execute if data storage bs:out random.noise[0][0] run function demo:noise_loop
```

![](/_imgs/modules/random/value_noise.jpeg)

::::
:::::

> **Credits**: SBtree