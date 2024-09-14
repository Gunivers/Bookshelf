# 🫵 Interaction

**`#bs.interaction:help`**

Create and manage Graphical User Interfaces (GUIs) in Minecraft.

```{epigraph}
"As far as the customer is concerned, the interface is the product."

-- Jef Raskin
```

The Interaction API is a low-level API to create GUIs based on the [Interaction](https://minecraft.wiki/w/Interaction) entity.
This API is low level since the possible events are directly and manually bind to the interaction.
In this API, the interaction that listen to events is named **listener**.

---

## 🔧 Functions

You can find below all functions available in this API.

---

### Listener

:::::{tab-set}
::::{tab-item} Create

```{function} #bs.interaction:create_listener

Create a new existing interaction and set it as listener.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z>`**: The position where summon the listener.
  **Function macro**:
    :::{treeview}
    - {nbt}`compound` Arguments
      - {nbt}`compound` **with**: the NBT of the interaction entity. See [Interaction](https://minecraft.wiki/w/Interaction) to have the exhaustive list of supported NBT tags.
    :::

:Outputs:
  **State**: A new interaction with the listener role.
```

::::
::::{tab-item} Set

```{function} #bs.interaction:set_as_listener

Set an interaction as listener.

:Inputs:
  **Execution `as <entities>`**: The interaction to set as listener.

:Outputs:
  **State**: The interaction is now a listener and events can be bind to it.
```

::::
::::{tab-item} Unset

```{function} #bs.interaction:unset_as_listener

Unset an existing interaction to its listener role.

:Inputs:
  **Execution `as <entities>`**: The interactions to unset the listener role.

:Outputs:
  **State**: The interaction is not an listener anymore.
```

::::
:::::

*Set then unset an interaction as listener:*

```mcfunction
summon minecraft:interaction ~ ~ ~ { Tags: ["bs.entity.interaction"], width: 1f, height: 1f }

# The interaction is now a listener
execute as @n[tag="bs.entity.interaction"] run function #bs.interaction:set_as_listener
# The interaction is not a listener anymore
execute as @n[tag="bs.entity.interaction"] run function #bs.interaction:unset_as_listener
```

---

### On event

:::::{tab-set}
::::{tab-item} Right click

```{function} #bs.interaction:on_right_click

Add a new callback function to execute when the right click is pressed on the current listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <entity>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when right clicked.
    - {nbt}`string`{nbt}`compound` **executor**: Must be "target", "source" or a valid selector. The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who right clicked on the listener. "target" is listener itself. Finally the selector can be used to target other entities.
      - {nbt}`string` **selector**: Entities on which the callback will be executed (`execute as <entity>`).
      - {nbt}`bool` **lazy**: If the selector should be interpreted now (`false`) or during the event (`true` - default). If `false`, the selector must target only one entity to replace the selector by the entity's UUID. Useful to optimize the execution, for instance when the entity that should be targeted is a graphical representation of the interaction. If several entities are targeted, takes the first one.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when right clicked.
```
::::
::::{tab-item} Left click

```{function} #bs.interaction:on_left_click

Add a new callback function to execute when the left click is pressed on the current listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <entity>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when right clicked.
    - {nbt}`string`{nbt}`compound` **executor**: Must be "target", "source" or a valid selector. The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who left clicked on the listener. "target" is listener itself. Finally the selector can be used to target other entities.
      - {nbt}`string` **selector**: Entities on which the callback will be executed (`execute as <entity>`).
      - {nbt}`bool` **lazy**: If the selector should be interpreted now (`false`) or during the event (`true` - default). If `false`, the selector must target only one entity to replace the selector by the entity's UUID. Useful to optimize the execution, for instance when the entity that should be targeted is a graphical representation of the interaction. If several entities are targeted, takes the first one.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when left clicked.
```
::::
::::{tab-item} Enter hover

```{function} #bs.interaction:on_enter_hover

Add a new callback function to execute when the player starts hovering the listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <entity>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when right clicked.
    - {nbt}`string`{nbt}`compound` **executor**: Must be "target", "source" or a valid selector. The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who start hovering the listener. "target" is listener itself. Finally the selector can be used to target other entities.
      - {nbt}`string` **selector**: Entities on which the callback will be executed (`execute as <entity>`).
      - {nbt}`bool` **lazy**: If the selector should be interpreted now (`false`) or during the event (`true` - default). If `false`, the selector must target only one entity to replace the selector by the entity's UUID. Useful to optimize the execution, for instance when the entity that should be targeted is a graphical representation of the interaction. If several entities are targeted, takes the first one.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when start hovered.
```
::::
::::{tab-item} Hover

```{function} #bs.interaction:on_hover

Add a new callback function to execute while the player hovers the listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <entity>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when right clicked.
    - {nbt}`string`{nbt}`compound` **executor**: Must be "target", "source" or a valid selector. The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who hovering the listener. "target" is listener itself. Finally the selector can be used to target other entities.
      - {nbt}`string` **selector**: Entities on which the callback will be executed (`execute as <entity>`).
      - {nbt}`bool` **lazy**: If the selector should be interpreted now (`false`) or during the event (`true` - default). If `false`, the selector must target only one entity to replace the selector by the entity's UUID. Useful to optimize the execution, for instance when the entity that should be targeted is a graphical representation of the interaction. If several entities are targeted, takes the first one.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback while hovered.
```
::::
::::{tab-item} Leave hover

```{function} #bs.interaction:on_leave_hover

Add a new callback function to execute when the player stops hovering the listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <entity>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when right clicked.
    - {nbt}`string`{nbt}`compound` **executor**: Must be "target", "source" or a valid selector. The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who stop hovering the listener. "target" is listener itself. Finally the selector can be used to target other entities.
      - {nbt}`string` **selector**: Entities on which the callback will be executed (`execute as <entity>`).
      - {nbt}`bool` **lazy**: If the selector should be interpreted now (`false`) or during the event (`true` - default). If `false`, the selector must target only one entity to replace the selector by the entity's UUID. Useful to optimize the execution, for instance when the entity that should be targeted is a graphical representation of the interaction. If several entities are targeted, takes the first one.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when stops hovered.
```
::::
:::::

*Glow the listener's icon while the listener is hovered and unglow it when it is not hovered anymore:*

```mcfunction
summon minecraft:interaction ~ ~ ~ { Tags: ["bs.entity.interaction"], width: 1f, height: 1f }
summon block_display ~ ~ ~ { Tags: ["bs.entity.block_display"], width: 1f, height: 1f, block_state: { Name: "minecraft:slime_block" }}

execute as @n[tag="bs.entity.interaction"] run function #bs.interaction:set_as_listener

# Callback to glow the icon when the listener is hovered
execute as @n[tag=bs.entity.interaction] run function #bs.interaction:event.listen_enter { callback: "#bs.interaction:callback.glow", executor: "@e[tag=bs.entity.block_display]" }
# Callback to unglow the icon when the listener is not hovered anymore
execute as @n[tag=bs.entity.interaction] run function #bs.interaction:event.listen_leave { callback: "#bs.interaction:callback.unglow", executor: "@e[tag=bs.entity.block_display]" }
```

> **Credits**: theogiraudet

## 👁️ Predicates

You can find below all predicates available in this API.

---

### Is listener?

**`bs.interaction:is_listener`**

Determine if the current entity is a listener or not.

> **Credits**: theogiraudet

---

### Listen a specific event?

:::::{tab-set}
::::{tab-item} Right click

```{function} bs.interaction:on_right_click

Determine if the current listener listen to right click interaction.
```
::::
::::{tab-item} Left click

```{function} bs.interaction:on_left_click

Determine if the current listener listen to left click interaction.
```
::::
::::{tab-item} Enter hover

```{function} bs.interaction:on_enter

Determine if the current listener listen to enter hover interaction.
```
::::
::::{tab-item} Hover

```{function} bs.interaction:on_hover

Determine if the current listener listen to hover interaction.
```
::::
::::{tab-item} Leave hover

```{function} bs.interaction:on_leave_hover

Determine if the current listener listen to leave hover interaction.
```
::::
:::::

> **Credits**: theogiraudet

---

### Is source?

**`bs.interaction:is_source`**

Usable only in the callback of an event.
Determine if the current entity is the source of the event.

> **Credits**: theogiraudet

---

### Is target?

**`bs.interaction:is_target`**

Usable only in the callback of an event.
Determine if the current entity is the target of the event.

> **Credits**: theogiraudet

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
