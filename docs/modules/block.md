# 🧱 Block

**`#bs.block:help`**

Manage blocks, including states and NBTs, while offering advanced tools for seamless transformations.

```{epigraph}
"Architecture is the thoughtful making of space."

-- Louis Kahn
```

```{admonition} Virtual block format
:class: info

To manipulate blocks and their states, Bookshelf utilizes a [virtual block format](#get) stored in the block output. It's crucial not to update it manually; instead, utilize the helper functions provided in the library.
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Fill

:::::{tab-set}
::::{tab-item} Block

```{function} #bs.block:fill_block

Fill all or parts of a region with a specific block.

:Inputs:
  **Storage `bs:in block.fill_block`**:
  :::{treeview}
  - {nbt}`compound` Fill block data
    - {nbt}`string` **block**: Block to fill the region with.
    - {nbt}`list` **from**: List of 3 numbers describing the X, Y, and Z starting position.
    - {nbt}`list` **to**: List of 3 numbers describing the X, Y, and Z ending position.
    - {nbt}`string` **mode**: Mode used to set blocks [destroy|keep|replace] (default: replace).
    - {nbt}`int` **limit**: Limit how many blocks can be set in a single tick (default: 4096).
    - {nbt}`list` **masks**: Determine which blocks will be replaced.
      - {nbt}`compound` Block mask
        - {nbt}`string` **block**: Block that act as a filter.
        - {nbt}`bool` **negate**: Reverse the mask (default: false).
        - {nbt}`int` **x**: Mask filter x offset (default: 0).
        - {nbt}`int` **y**: Mask filter y offset (default: 0).
        - {nbt}`int` **z**: Mask filter z offset (default: 0).
  :::

:Outputs:
  **State**: Blocks are placed in the world.
```

*Replace the top layer of dirt by grass:*

```mcfunction
# Setup the input
data modify storage bs:in block.fill_block set value {block:"minecraft:grass_block",from:[-16,100,0],to:[-1,103,15],masks:[{block:"minecraft:dirt"},{block:"minecraft:air",y:1}]}

# Run the process
function #bs.block:fill_block
```

*Fill an area with stone but only by a few blocks each tick:*

```mcfunction
# Setup the input
data modify storage bs:in block.fill_block set value {block:"minecraft:stone",from:[-16,100,0],to:[-1,103,15],limit:8}

# Run the process
function #bs.block:fill_block
```
::::
::::{tab-item} Type

```{function} #bs.block:fill_type

Fill all or parts of a region with a specific block type while trying to conserve states and NBTs.

:Inputs:
  **Storage `bs:in block.fill_type`**:
  :::{treeview}
  - {nbt}`compound` Fill type data
    - {nbt}`string` **type**: Block id to fill the region with.
    - {nbt}`list` **from**: List of 3 numbers describing the X, Y, and Z starting position.
    - {nbt}`list` **to**: List of 3 numbers describing the X, Y, and Z ending position.
    - {nbt}`string` **mode**: Mode used to set blocks [destroy|keep|replace] (default: replace).
    - {nbt}`int` **limit**: Limit how many blocks can be set in a single tick (default: 4096).
    - {nbt}`list` **masks**: Determine which blocks will be replaced.
      - {nbt}`compound` Block mask
        - {nbt}`string` **block**: Block that act as a filter.
        - {nbt}`bool` **negate**: Reverse the mask (default: false).
        - {nbt}`int` **x**: Mask filter x offset (default: 0).
        - {nbt}`int` **y**: Mask filter y offset (default: 0).
        - {nbt}`int` **z**: Mask filter z offset (default: 0).
  :::

:Outputs:
  **State**: Blocks are placed in the world.
```

*Replace oak_stairs by spruce_stairs while conserving states:*

```mcfunction
# Setup the input
data modify storage bs:in block.fill_type set value {type:"minecraft:spruce_stairs",from:[-16,100,0],to:[-1,103,15],masks:[{block:"minecraft:oak_stairs"}]}

# Run the process
function #bs.block:fill_type
```
::::
:::::

> **Credits**: Aksiome

---

### Get

:::::{tab-set}
::::{tab-item} Block

```{function} #bs.block:get_block

Get all data related to the block at the current location, including its state and NBTs.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get block data from.

:Outputs:
  **Storage `bs:out block`**:
  :::{treeview}
  - {nbt}`compound` **[readonly]** Block data
    - {nbt}`int` **group**: Blocks within the same group share the same possible state (e.g., stairs).
    - {nbt}`string` **block**: Full string representation of the block `type[state]{nbt}`.
    - {nbt}`string` **item**: Item string id associated with the block, if it exists.
    - {nbt}`string` **type**: String representation of the id (e.g., `minecraft:stone`).
    - {nbt}`string` **state**: Represent the state of a block (e.g., `[shape=straight]`).
    - {nbt}`compound` **nbt**: Data tags used by block entities or an empty string.
    - {nbt}`compound` **properties**: Block state as properties (used by entities like falling blocks).
  :::
```

*Get all data related to a block:*

```mcfunction
# Run the get function on a block
execute positioned ~ ~ ~ run function #bs.block:get_block

# See the result
data get storage bs:out block
```

::::
::::{tab-item} Type

```{function} #bs.block:get_type

Get the block type at the current location. Although states, NBTs, and properties will be empty, state transformation functions are still available.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to get block data from.

:Outputs:
  **Storage `bs:out block`**:
  :::{treeview}
  - {nbt}`compound` **[readonly]** Block data
    - {nbt}`int` **group**: Blocks within the same group share the same possible state (e.g., stairs).
    - {nbt}`string` **block**: Full string representation of the block (only the type).
    - {nbt}`string` **item**: Item string id associated with the block, if it exists.
    - {nbt}`string` **type**: String representation of the id (e.g., `minecraft:stone`).
    - {nbt}`string` **state**: Represent the state of a block **[empty string]**.
    - {nbt}`compound` **nbt**: Data tags used by block entities **[empty string]**.
    - {nbt}`compound` **properties**: Block state as properties **[empty compound]**.
  :::
```

*Get only type data related to a block (no property value is selected):*

```mcfunction
# Run the get function on a block
execute positioned ~ ~ ~ run function #bs.block:get_type

# See the result
data get storage bs:out block
```

::::
:::::

```{admonition} Read-only output
:class: warning

The `bs:out block` output is intended to be read-only. Modifying parts manually could lead to potential bugs. That's why the module provides numerous functions capable of making modifications to the output while preserving its integrity.
```

> **Credits**: Aksiome, theogiraudet

---

### Manage state

:::::{tab-set}
::::{tab-item} Keep

```{function} #bs.block:keep_properties {properties:[]}

Filter properties to keep only the desired ones.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`list` **properties**: List of properties to keep.
      - {nbt}`compound` Property data
        - {nbt}`string` **name**: Name of the property (e.g., `shape`).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Keep only the facing and shape properties:*

```mcfunction
# Once (on stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Run the transformation
function #bs.block:keep_properties {properties:[{name:"facing"},{name:"shape"}]}

# See the result
data get storage bs:out block.block
```

::::
::::{tab-item} Merge

```{function} #bs.block:merge_properties {properties:[]}

Merge state properties from the current location into the output. The merge occurs if the syntax is correct, regardless of logical coherence (e.g., using 'age' for different plants).

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Location of the block that act as input.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`list` **properties**: List of properties to merge.
      - {nbt}`compound` Property data
        - {nbt}`string` **name**: Name of the property (e.g., `shape`).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Merge the facing of a block onto stairs:*

```mcfunction
# Once (on stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Run the transformation (on a block with facing)
execute positioned ~ ~ ~ run function #bs.block:merge_properties {properties:[{name:"facing"}]}

# See the result
data get storage bs:out block.block
```

::::
::::{tab-item} Remove

```{function} #bs.block:remove_properties {properties:[]}

Filter properties by removing the undesired ones.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`list` **properties**: List of properties to remove.
      - {nbt}`compound` Property data
        - {nbt}`string` **name**: Name of the property (e.g., `shape`).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Remove the facing and shape properties:*

```mcfunction
# Once (on stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Run the transformation
function #bs.block:remove_properties {properties:[{name:"facing"},{name:"shape"}]}

# See the result
data get storage bs:out block.block
```

::::
::::{tab-item} Replace

```{function} #bs.block:replace_properties {properties:[]}

Replace property values. Invalid values will not be replaced.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`list` **properties**: List of properties to replace.
      - {nbt}`compound` Property data
        - {nbt}`string` **name**: Name of the property (e.g., `facing`).
        - {nbt}`string` **value**: Value of the property (e.g., `east`).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Replace the facing property value:*

```mcfunction
# Once (on stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Run the transformation
function #bs.block:replace_properties {properties:[{name:"facing",value:"east"}]}

# See the result
data get storage bs:out block.block
```

::::
::::{tab-item} Shift

```{function} #bs.block:shift_properties {properties:[]}

Shift properties by any amount, allowing cycling through their values.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`list` **properties**: List of properties to shift.
      - {nbt}`compound` Property data
        - {nbt}`string` **name**: Name of the property (e.g., `shape`).
        - {nbt}`string` **by**: Shift amount (defaults to 1).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Shift the facing property value by 2:*

```mcfunction
# Once (on stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Run the transformation
function #bs.block:shift_properties {properties:[{name:"facing",by:2}]}

# See the result
data get storage bs:out block.block
```

::::
:::::

> **Credits**: Aksiome

---

### Manage type

:::::{tab-set}
::::{tab-item} Replace

```{function} #bs.block:replace_type {type:<value>}

Replace the block type while trying to conserve the state. State is preserved only if the group of the output matches the input.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **type**: String representation of the id (e.g., `minecraft:stone`).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Replace oak stairs with spruce stairs, preserving the current state:*

```mcfunction
# Once (on oak_stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Replace type data
function #bs.block:replace_type {type:"minecraft:spruce_stairs"}

# See the result
data get storage bs:out block.block
```

::::
::::{tab-item} Replace set

```{function} #bs.block:replace_mapped_type {type:<value>,type_set:[]}

This function replaces a block type based on a type set. It matches the input type's category and index to the type set, allowing for group-based block replacement. Useful for swapping related blocks.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **type**: String representation of the id (e.g., `minecraft:stone`).
    - {nbt}`list` **type_set**: A list of mappings from one block type to another. Each mapping includes a category, an index, and a block type.
      - {nbt}`compound` Type data
        - {nbt}`int` **category**: Category of the block type.
        - {nbt}`int` **index**: Index of the block type within its category.
        - {nbt}`string` **type**: String representation of the id (e.g., `minecraft:stone`).
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` The `block`, `state` and `properties` are updated to reflect this change.
```

*Replace all oak related blocks to spruce ones (the function replaces the oak stairs block with a spruce stairs block, as they both have the same category and index):*

```mcfunction
# Once (on oak_stairs)
execute positioned ~ ~ ~ run function #bs.block:get_block

# Replace type data
function #bs.block:replace_mapped_type { \
  type: "minecraft:spruce_planks",
  type_set: [ \
    {category:0,index:0,type:"minecraft:oak_planks"}, \
    {category:0,index:1,type:"minecraft:oak_stairs"}, \
    {category:0,index:2,type:"minecraft:oak_slab"}, \
    {category:1,index:0,type:"minecraft:spruce_planks"}, \
    {category:1,index:1,type:"minecraft:spruce_stairs"}, \
    {category:1,index:2,type:"minecraft:spruce_slab"}, \
  ] \
}

# See the result
data get storage bs:out block.block
```

::::
::::{tab-item} Lookup item

```{function} #bs.block:lookup_item {item:<value>}

Get block data from the given item string id.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **item**: Item string id associated to a block.
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` Equivalent to the [`#bs.block:get_type`](#get) function.
```

*Get block data for the stone item:*

```mcfunction
# Get block type data
function #bs.block:lookup_item {item:"minecraft:stone"}

# See the result
data get storage bs:out block.block
```

```{important}
Minecraft does not perfectly map between blocks and items. Some items may correspond to multiple blocks, and this function will only return one of them.
```

::::
::::{tab-item} Lookup type

```{function} #bs.block:lookup_type {type:<value>}

Get block data from the given type string id.

:Inputs:
  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **type**: Type string id associated to a block.
  :::

:Outputs:
  **Storage `bs:out block`**: {nbt}`compound` Equivalent to the [`#bs.block:get_type`](#get) function.
```

*Get block data for the stone type:*

```mcfunction
# Get block type data
function #bs.block:lookup_type {type:"minecraft:stone"}

# See the result
data get storage bs:out block.block
```

::::
:::::

> **Credits**: Aksiome

---

### Match

```{function} #bs.block:match

Determine if the block at the specified location matches the provided one.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Location of the block to check.

  **Storage `bs:in block.match.block`**: {nbt}`string` Full string representation of the block to check against.

:Outputs:
  **Return**: Whether the check is a success or a failure (1 or 0).
```

*Check that the block at 0 0 0 matches the block at 0 1 0:*

```mcfunction
# Get block data at 0 0 0
execute positioned 0 0 0 run function #bs.block:get_block

# Setup the input
data modify storage bs:in block.match.block set from storage bs:out block.block

# Run a command if it's a match
execute positioned 0 1 0 if function #bs.block:match run say It's a match
```

> **Credits**: Aksiome, theogiraudet

---

### Set

:::::{tab-set}
::::{tab-item} Block

```{function} #bs.block:set_block

Place a block at the current location.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to set the block to.

  **Storage `bs:in block.set_block`**:
  :::{treeview}
  - {nbt}`compound` Set block data
    - {nbt}`string` **block**: Full string representation of the block to set.
    - {nbt}`string` **mode**: Mode used to set the block [destroy|keep|replace] (default: replace).
  :::

:Outputs:
  **State**: A block is placed in the world.
```

*Place a block of stone at 0 0 0 by destroying the existing one:*

```mcfunction
# Setup the input
data modify storage bs:in block.set_block set value {block:"minecraft:stone",mode:"destroy"}

# Run the function
execute positioned 0 0 0 run function #bs.block:set_block
```

::::
::::{tab-item} Type

```{function} #bs.block:set_type

Replace the block type at the current location while trying to conserve its state and NBTs.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position to set the block to.

  **Storage `bs:in block.set_type`**:
  :::{treeview}
  - {nbt}`compound` Set type data
    - {nbt}`string` **type**: String representation of the block id to set.
    - {nbt}`string` **mode**: Mode used to set the block [destroy|keep|replace] (default: replace).
  :::

:Outputs:
  **State**: A block is placed in the world.
```

*Replace any stairs with oak stairs, preserving the current state:*

```mcfunction
# Setup the input
data modify storage bs:in block.set_type.type set value "minecraft:oak_stairs"

# Run the function
execute positioned 0 0 0 run function #bs.block:set_type
```

::::
:::::

> **Credits**: Aksiome, theogiraudet

---

### Spawn

:::::{tab-set}
::::{tab-item} Block display

```{function} #bs.block:spawn_block_display

Spawn a block display representing the given block.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position where the entity will be summoned.

  **Storage `bs:in block.spawn_block_display`**:
  :::{treeview}
  - {nbt}`compound` Block display data
    - {nbt}`string` **type**: Block type (similar to block output).
    - {nbt}`compound` **properties**: Block properties (similar to block output).
    - {nbt}`compound` **extra_nbt**: Additional NBTs to summon the entity with.
  :::

:Outputs:
  **State**: The entity is summoned.
```

*Summon a block display using the block at 0 0 0:*

```mcfunction
# Get block data
execute positioned 0 0 0 run function #bs.block:get_block

# Setup the input
data modify storage bs:in block.spawn_block_display set from storage bs:out block

# Summon the block display
function #bs.block:spawn_block_display
```

::::
::::{tab-item} Falling block

```{function} #bs.block:spawn_falling_block

Spawn a falling block representing the given block.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position where the entity will be summoned.

  **Storage `bs:in block.spawn_falling_block`**:
  :::{treeview}
  - {nbt}`compound` Falling block data
    - {nbt}`string` **type**: Block type (similar to block output).
    - {nbt}`compound` **properties**: Block properties (similar to block output).
    - {nbt}`compound` **extra_nbt**: Additional NBTs to summon the entity with.
  :::

:Outputs:
  **State**: The entity is summoned.
```

*Summon a falling block using the block at 0 0 0:*

```mcfunction
# Get block data
execute positioned 0 0 0 run function #bs.block:get_block

# Setup the input
data modify storage bs:in block.spawn_falling_block set from storage bs:out block

# Summon the block display
function #bs.block:spawn_falling_block
```

::::
::::{tab-item} Solid block display

```{function} #bs.block:spawn_solid_block_display

Spawn a block display with a hitbox, representing the given block.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: Position where the entity will be summoned.

  **Storage `bs:in block.spawn_solid_block_display`**:
  :::{treeview}
  - {nbt}`compound` Block display data
    - {nbt}`string` **type**: Block type (similar to block output).
    - {nbt}`compound` **properties**: Block properties (similar to block output).
    - {nbt}`compound` **extra_nbt**: Additional NBTs to summon the entity with.
  :::

:Outputs:
  **State**: The entity is summoned.
```

*Summon a block display with a hitbox using the block at 0 0 0:*

```mcfunction
# Get block data
execute positioned 0 0 0 run function #bs.block:get_block

# Setup the input
data modify storage bs:in block.spawn_solid_block_display set from storage bs:out block

# Summon the block display
function #bs.block:spawn_solid_block_display
```

::::
:::::

> **Credits**: Aksiome, theogiraudet

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
