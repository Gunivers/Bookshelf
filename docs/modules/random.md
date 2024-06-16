# 🎲 Random

**`#bs.random:help`**

Contains many random functions for different distributions.

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

### Uniform random distribution

```{function} #bs.random:uniform {min:<minimum>,max:<maximum>}

Generates a random number with a uniform distribution

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`number` **max**: Maximum value allowed to be output
    - {nbt}`number` **min**: Miniumum value allowed to be output
  :::

:Outputs:
  **Return | Score `$random.uniform bs.out`**: Random value outputted
```

*Generate a random number between 1 and 10*

```mcfunction
# Generate random number
function #bs.random:uniform {min:1,max:10}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.uniform", "objective": "bs.out"}, "color": "gold"}]
```

### Binomial random distribution

```{function} #bs.random:binomial {chance:<chance>,trials:<trials>}

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
function #bs.random:binomial {chance:200000000,trials:10}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.uniform", "objective": "bs.out"}, "color": "gold"}]
```

::::
:::::

```{admonition} Low chance values appear to fail
:class: warning

If you input a low `chance` value (in the 10s or 1000s) *and* a low `trial` value (in the 10s) then it will appear to fail. This is due to the fact that the `chance`s are scaled down by 1 billion, or 1000000000. This means that if you have a `chance` value of 1000 and a `trial` amount of 10, then it will have 0.0001% of a chance of returning a value. Be sure that if you use low `trial` values, use higher `chance` values. **Always test to make sure the function gives you the distribution you want.**
```