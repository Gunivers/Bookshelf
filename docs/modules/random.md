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

### Random choice

```{function} #bs.random:choose

Selects a random value from a list.

:Inputs:
  **Storage `bs:in random.choose.options`**: {nbt}`list` The list of values to choose from.

:Outputs:
  **Storage `bs:out random.choose`**: {nbt}`any` Value that is randomly selected.

  **Return**: The chosen index.
```

*Pick a random fruit from the list:*

```mcfunction
# Populate list with values
data modify storage bs:in random.choose.options set value ["Apples", "Bananas", "Strawberries", "Blueberries", "Mango", "Watermelon", "Honeydew Melon"]

# Randomly select one
function #bs.random:choose

# See the result
tellraw @a [{"text":"Value: ","color":"dark_gray"},{"nbt":"random.choose","storage":"bs:out","color":"gold"}]
```

> **Credits**: SBtree


### Random distributions

:::::{tab-set}
::::{tab-item} Uniform

```{function} #bs.random:uniform {min:<min>,max:<max>}

Generates a random number uniformly distributed between `min` and `max`.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`int` **min**: The lower bound.
    - {nbt}`int` **max**: The upper bound.
  :::

:Outputs:
  **Return | Score `$random.uniform bs.out`**: A random integer in range [`min`, `max`].
```

*Generate a random number between 1 and 100:*

```mcfunction
# Generate random number
function #bs.random:uniform {min:1,max:100}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.uniform", "objective": "bs.out"}, "color": "gold"}]
```

::::
::::{tab-item} Binomial

```{function} #bs.random:binomial {trials:<trials>,probability:<probability>}

Generates a random number with a binomial distribution using the parameters `trials` and `probability`.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`int` **trials**: The number of Bernoulli trials. Maximum accepted value is 1000.
    - {nbt}`double` **probability**: The probability of success of each Bernoulli trial, in range [0,1].
  :::

:Outputs:
  **Return | Score `$random.binomial bs.out`**: A random integer in range [0, `trials`].
```

*Generate a random number between 1 and 10, with a 20% chance:*

```mcfunction
# Generate random number
function #bs.random:binomial {trials:10,probability:0.2}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.binomial", "objective": "bs.out"}, "color": "gold"}]
```

::::
::::{tab-item} Geometric

```{function} #bs.random:geometric {probability:<probability>}

Generates a random number following a geometric distribution with the parameter `probability`.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`double` **probability**: The probability of stopping at each trial, in range [0,1].
  :::

:Outputs:
  **Return | Score `$random.geometric bs.out`**: A random integer in range [0, 1000].
```

*Generate a random number with a 2% chance of stopping:*

```mcfunction
# Generate random number
function #bs.random:geometric {probability:0.02}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.geometric", "objective": "bs.out"}, "color": "gold"}]
```

::::
::::{tab-item} Poisson

```{function} #bs.random:poisson {lambda:<lambda>}

Generates a random number following a Poisson distribution with the expected value `lambda`.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`double` **lambda**: The expected value in range [0,10].
  :::

:Outputs:
  **Return | Score `$random.poisson bs.out`**: A random integer, biased towards the `lambda` variable.
```

*Generate a random number biased towards 5:*

```mcfunction
# Generate random number
function #bs.random:poisson {lambda:5}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.poisson", "objective": "bs.out"}, "color": "gold"}]
```

::::
:::::

> **Credits**: SBtree


### Noise

:::::{tab-set}
::::{tab-item} White noise 1D

```{function} #bs.random:white_noise_1d {length:<length>}

Generates a 1-dimensional array of white noise values.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`int` **length**: The length of the array to generate.
  :::

:Outputs:
  **Storage `bs:out random.white_noise_1d`**: {nbt}`list` The generated array of values between 0 and 1.
```

*Generate 4 random values:*

```mcfunction
# Generate random noise
function #bs.random:white_noise_1d {length:4}

# See the result
tellraw @a [{"text": "Noise: ", "color": "dark_gray"},{"nbt":"white_noise_1d","storage":"bs:out", "color": "gold"}]
```

![](/_imgs/modules/random/white_noise.jpeg)

::::
::::{tab-item} White noise 2D

```{function} #bs.random:white_noise_2d {width:<width>,height:<height>}

Generates a 2-dimensional array of white noise values.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`int` **width**: The width of the array to generate.
    - {nbt}`int` **height**: The height of the array to generate.
  :::

:Outputs:
  **Storage `bs:out random.white_noise_2d`**: {nbt}`list` The generated 2-dimensional array of values between 0 and 1.
```

*Generate a 4x4 random noise pattern:*

```mcfunction
# Generate random noise
function #bs.random:white_noise_2d {width:4,height:4}

# See the result
tellraw @a [{"text": "Noise: ", "color": "dark_gray"},{"nbt":"white_noise_2d","storage":"bs:out", "color": "gold"}]
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
