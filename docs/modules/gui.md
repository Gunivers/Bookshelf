# 📲 GUI

**`#bs.biome:help`**

Create and manage Graphical User Interfaces (GUIs) in Minecraft.

```{epigraph}
"As far as the customer is concerned, the interface is the product."

-- Jef Raskin
```

This module proposes several APIs based on the way to create the GUI or the way the user should interact with it.

---

## 🖱️ Interaction API

The Interaction API is a low-level API to create GUIs based on the [Interaction](https://minecraft.wiki/w/Interaction) entity.
This API is low level since the possible events are directly and manually bind to the interaction that is the only component of this API.
In this API, the interaction that listen to events is named **listener**.
The listener may be linked to an entity (block display, text display…) that graphically represent the interaction area (since interaction has no textures).
This object is named the **icon**.

---

### 🔧 Functions

You can find below all functions available in this API.

---

#### Set/Unset as listener

:::::{tab-set}
::::{tab-item} Set

```{function} #bs.gui:interaction.set_as_listener

Set an interaction a listener.

:Inputs:
  **Execution `as <interactions>`**: The interaction to set as listener.

:Outputs:
  **State**: The interaction is now a listener and events can be bind to it.
```

::::
::::{tab-item} Unset

```{function} #bs.gui:interaction.unset_as_listener

Unset an interaction to its listener role.

:Inputs:
  **Execution `as <listeners>`**: The interactions to unset the listener role.

:Outputs:
  **State**: The interaction is not an listener anymore.
```

::::
:::::

*Set then unset an interaction as listener:*

```mcfunction
summon minecraft:interaction ~ ~ ~ { Tags: ["bs.entity.interaction"], width: 1f, height: 1f }

# The interaction is now a listener
execute as @n[tag="bs.entity.interaction"] run function #bs.gui:interaction.set_as_listener
# The interaction is not a listener anymore
execute as @n[tag="bs.entity.interaction"] run function #bs.gui:interaction.unset_as_listener
```

---

#### Link/Unlink icon

:::::{tab-set}
::::{tab-item} Link

```{function} #bs.gui:interaction.link_icon

Link an icon to the current listener.
When an icon is linked to a listener, the events triggers on the interaction are redirected to the icon (see events for more information).
An icon must be linked to at most one listener.
A listener must be linked at most one icon.

:Inputs:
  **Execution `as <listener>`**: The interaction to set as listener.
  **Execution `at <entity>`**: The entity to use as icon.

:Outputs:
  **State**: The listener and the icon are linked together.
```

::::
::::{tab-item} Unlink

```{function} #bs.gui:interaction.unlink_icon

Unlink a listener and its icon.

:Inputs:
  **Execution `as <listener>`**: The interaction to unlink to its icon.

:Outputs:
  **State**: The listener and the icon are note linked together anymore.
```

::::
:::::

*Set a slime block block display as icon for a listener:*

```mcfunction
summon minecraft:interaction ~ ~ ~ { Tags: ["bs.entity.interaction"], width: 1f, height: 1f }
summon block_display ~ ~ ~ { Tags: ["bs.entity.block_display"], width: 1f, height: 1f, block_state: { Name: "minecraft:slime_block" }}

execute as @n[tag="bs.entity.interaction"] run function #bs.gui:interaction.set_as_listener
# The block display is now the icon of the listener
execute as @n[tag="bs.entity.interaction"] at @n[tag="bs.entity.block_display"] run function #bs.gui:interaction.link_icon
# The block display is not the icon of the listener anymore
execute as @n[tag="bs.entity.interaction"] run function #bs.gui:interaction.unlink_icon
```

> **Credits**: theogiraudet

---

#### Listen event

:::::{tab-set}
::::{tab-item} Right click

```{function} #bs.gui:interaction.event.listen_right_click

Add a new callback function to execute when the right click is pressed on the current listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <listener>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when right clicked.
    - {nbt}`string` **executor**: Must be "target" or "source". The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who right clicked on the listener. "target" is the listener's icon or the listener itself if it does not have icon.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when right clicked.
```
::::
::::{tab-item} Left click

```{function} #bs.gui:interaction.event.listen_left_click

Add a new callback function to execute when the left click is pressed on the current listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <listener>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when left clicked.
    - {nbt}`string` **executor**: Must be "target" or "source". The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who left clicked on the listener. "target" is the listener's icon or the listener itself if it does not have icon.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when left clicked.
```
::::
::::{tab-item} Enter hover

```{function} #bs.gui:interaction.event.enter

Add a new callback function to execute when the player starts hovering the listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <listener>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when the player starts hovering the listener.
    - {nbt}`string` **executor**: Must be "target" or "source". The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who start hovering the listener. "target" is the listener's icon or the listener itself if it does not have icon.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback when start hovered.
```
::::
::::{tab-item} Hover

```{function} #bs.gui:interaction.event.hover

Add a new callback function to execute while the player hovers the listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <listener>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute while the player hovers the listener.
    - {nbt}`string` **executor**: Must be "target" or "source". The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who hovers the listener. "target" is the listener's icon or the listener itself if it does not have icon.
  :::

:Outputs:
  **Return**: The callback ID.

  **State**: The listener will trigger the callback while hovered.
```
::::
::::{tab-item} Leave hover

```{function} #bs.gui:interaction.event.leave

Add a new callback function to execute when the player stops hovering the listener.
A listener can listen to several events.

:Inputs:
  **Execution `as <listener>`**: The listener on which add the new callback.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`string` **callback**: The function to execute when the player stops hovering the listener.
    - {nbt}`string` **executor**: Must be "target" or "source". The entity on which the callback will be executed (`execute as <entity>`). "source" is the player who stops hovering the listener. "target" is the listener's icon or the listener itself if it does not have icon.
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

execute as @n[tag="bs.entity.interaction"] run function #bs.gui:interaction.set_as_listener
execute as @n[tag="bs.entity.interaction"] at @n[tag="bs.entity.block_display"] run function #bs.gui:interaction.link_icon

# Callback to glow the icon when the listener is hovered
execute as @n[tag=bs.entity.interaction] run function #bs.gui:interaction.event.listen_enter { callback: "#bs.gui:interaction.callback.glow", executor: "target" }
# Callback to unglow the icon when the listener is not hovered anymore
execute as @n[tag=bs.entity.interaction] run function #bs.gui:interaction.event.listen_leave { callback: "#bs.gui:interaction.callback.unglow", executor: "target" }
```

> **Credits**: theogiraudet

### 👁️ Predicates

You can find below all predicates available in this API.

---

### Is listener?

**`bs.gui:interaction.is_listener`**

Determine if the current entity is a listener or not.

> **Credits**: theogiraudet

---

### Listen a specific event?

:::::{tab-set}
::::{tab-item} Right click

```{function} bs.gui:interaction.listen_right_click

Determine if the current listener listen to right click interaction.
```
::::
::::{tab-item} Left click

```{function} bs.gui:interaction.listen_left_click

Determine if the current listener listen to left click interaction.
```
::::
::::{tab-item} Enter hover

```{function} bs.gui:interaction.listen_enter

Determine if the current listener listen to enter hover interaction.
```
::::
::::{tab-item} Hover

```{function} bs.gui:interaction.listen_hover

Determine if the current listener listen to hover interaction.
```
::::
::::{tab-item} Leave hover

```{function} bs.gui:interaction.listen_leave_hover

Determine if the current listener listen to leave hover interaction.
```
::::
:::::

> **Credits**: theogiraudet

---

## 🎛️ Component API

The Component API is a high-level API based on the Interaction API.
As the Interaction API, the Component API use Interaction entity but directly propose to create components (button, radio button…) instead of manually bind the events.
This API is compatible with the Interaction API, _i.e._ both can be used together.

---

### 🔧 Functions

You can find below all functions available in this API.

---

## 🎰 Hotbar API

The Hotbar API proposes to use the Player's hotbar as a way to trigger events.

---

### 🔧 Functions

You can find below all functions available in this API.

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
