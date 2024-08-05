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
  **Storage `bs:out random.choose`**: {nbt}`any` The randomly selected value.

  **Return**: The index of the chosen value.
```

*Pick a random fruit from the list:*

```mcfunction
# Populate list with values
data modify storage bs:in random.choose.options set value ["Apples", "Bananas", "Strawberries", "Blueberries", "Mango", "Watermelon", "Honeydew Melon"]

# Randomly select one
function #bs.random:choose

# Display the result
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

# Display the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.uniform", "objective": "bs.out"}, "color": "gold"}]
```

::::
::::{tab-item} Binomial

```{function} #bs.random:binomial {trials:<trials>,probability:<probability>}

Generates a random number with a binomial distribution using the specified `trials` and `probability`.

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

*Generate a random number with 10 trials and a 20% success chance:*

```mcfunction
# Generate random number
function #bs.random:binomial {trials:10,probability:0.2}

# Display the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.binomial", "objective": "bs.out"}, "color": "gold"}]
```

::::
::::{tab-item} Geometric

```{function} #bs.random:geometric {probability:<probability>}

Generates a random number following a geometric distribution with the given `probability`.

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

# Display the result
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
  **Return | Score `$random.poisson bs.out`**: A random integer, biased towards the `lambda` value.
```

*Generate a random number biased towards 5:*

```mcfunction
# Generate random number
function #bs.random:poisson {lambda:5}

# Display the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.poisson", "objective": "bs.out"}, "color": "gold"}]
```

::::
:::::

> **Credits**: SBtree


### Noise

:::::{tab-set}
::::{tab-item} Simplex Noise

```{function} #bs.random:simplex_noise

Computes the simplex noise value at given coordinates. Simplex noise is equivalent to Perlin noise and can be used as a base function for texture or procedural generation.

:Inputs:
  **Score `$random.simplex_noise.seed bs.in`**: The seed used for generation.

  **Scores `$random.simplex_noise.[x,y] bs.in`**: The coordinates. These values are scaled by 1000, which means that if you want a cell size of 16, you need to multiply each coordinate by 1000/16.

:Outputs:
  **Return | Score `$random.simplex_noise bs.out`**: The noise value in range [-1000,1000]
```

*Generate a random noise value:*

```mcfunction
# Generate random noise value
scoreboard players set $random.simplex_noise.x bs.in 15589
scoreboard players set $random.simplex_noise.y bs.in 812
execute store result score $random.simplex_noise.seed bs.in run random value -2147483648..2147483647
function #bs.random:simplex_noise
```

::::
::::{tab-item} Simplex Noise 2D

```{function} #bs.random:simplex_noise_2d {width:<width>,height:<height>,with:{}}

Generates a simplex noise texture with the size `width` by `height`. Simplex noise is equivalent to Perlin noise.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`int` **width**: The width of the array to generate.
    - {nbt}`int` **height**: The height of the array to generate.
    - {nbt}`compound` **with**:
      - {nbt}`int` **size**: The size of the "cell" of noise - lower size means more detail and unpredictability, higher size means less detail but more predictable (defaults to 16).
      - {nbt}`int` **seed**: The seed used for generation. By changing it, you can create different patterns of randomness (defaults to a random int).
  :::

:Outputs:
  **Storage `bs:out random.simplex_noise_2d`**: The generated 2-dimensional array of values between -1 and 1.
```

*Generate a 16x16 random noise pattern:*

```mcfunction
# Generate random noise
function #bs.random:simplex_noise_2d {width:16,height:16,with:{size:8}}

# Display the result
tellraw @a [{"text": "Noise: ", "color": "dark_gray"},{"nbt":"simplex_noise_2d","storage":"bs:out", "color": "gold"}]
```

::::
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

# Display the result
tellraw @a [{"text": "Noise: ", "color": "dark_gray"},{"nbt":"white_noise_1d","storage":"bs:out", "color": "gold"}]
```

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

# Display the result
tellraw @a [{"text": "Noise: ", "color": "dark_gray"},{"nbt":"white_noise_2d","storage":"bs:out", "color": "gold"}]
```
::::
:::::

::::{grid} 3
:::{grid-item-card} White noise
:margin: 0 3 0 0
:text-align: center

![](/_imgs/modules/random/white_noise.png)

:::

:::{grid-item-card} Simplex noise
:margin: 0 3 0 0
:text-align: center

![](/_imgs/modules/random/simplex_noise.png)
:::

:::{grid-item-card} Fractal noise
:margin: 0 3 0 0
:text-align: center

![](/_imgs/modules/random/fractal_noise.png)
:::
::::

> **Credits**: Aksiome, SBtree
