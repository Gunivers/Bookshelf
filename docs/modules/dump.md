# 🔬 Dump

**`#bs.dump:help`**

The dump module provides mechanisms for extracting the state out of any "variables".

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Dump var

```{function} #bs.dump:var

Dump the content of given variables to the chat.

:Inputs:
  **Macro var `var` [any]**: Can be any structured data. The only requirement is that each value must be a valid data or score path:

  :::{list-table}
  *   - **data**
      - `<entity|block|storage> <target> <path> <depth>`
  *   - **score**
      - `<target> <objective>`
  :::
```

*View position scores as an array:*
```mcfunction
function #bs.position:get_pos {scale:1}
function #bs.dump:var {var: ["@s bs.pos.x", "@s bs.pos.y", "@s bs.pos.z"]}
```

*View an undefined score and the player recipe book (with a depth of 1):*
```mcfunction

function #bs.dump:var {var: {_: "foo bar", recipes: "entity @s recipeBook 1"}}
```

*View the content of the Bookshelf const storage (value must be escaped at the top level only):*
```mcfunction

function #bs.dump:var {var: '"storage bs:const"'}
```

> **Credits**: Aksiome

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
