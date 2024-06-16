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
function bs.random:uniform {min:1,max:10}

# See the result
tellraw @a [{"text": "Number: ", "color": "dark_gray"},{"score":{"name":"$random.uniform", "objective": "bs.out"}, "color": "gold"}]
```