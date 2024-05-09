# 🔦 Raycast

**`#bs.raycast:help`**

Cast rays and see if they collide with blocks or entities.

```{note}
Unlike traditional raycasts, this module uses a [voxel traversal algorithm](http://www.cse.yorku.ca/~amana/research/grid.pdf) which is a lot more precise. Also, thanks to the `bs.hitbox` module, it supports all different hitboxes, including both blocks & entities.
```

```{epigraph}
"Reality only reveals itself when it is illuminated by a ray of poetry."

-- Georges Braque
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Run the raycast

```{function} #bs.raycast:run {with:{}}

Cast a ray from the execution position and check if it hits something.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z> rotated <rot>`**: Origin of the ray.

  **Function macro**:
  :::{treeview}
  - {nbt}`compound` Arguments
    - {nbt}`compound` **with**: Ray input data.
      - {nbt}`bool` **blocks**: Whether the ray should stop on blocks (default: true).
      - {nbt}`bool` {nbt}`string` **entities**: Whether the ray should stop on entities (default: false). Can also be a tag that entities must have.
      - {nbt}`number` **max_distance**: Maximum ray travel distance (default: 16.0).
      - {nbt}`string` **ignored_blocks**: Blocks to ignore (default: `#bs.hitbox:intangible`).
      - {nbt}`string` **ignored_entities**: Entities to ignore (default: `#bs.hitbox:intangible`).
  :::

:Outputs:
  **Return**: Whether the ray collides with a hitbox or not (1 or 0).

  **Storage `bs:out raycast`**:
  :::{treeview}
  - {nbt}`compound` Ray output data
    - {nbt}`double` **distance**: The distance from the ray's origin to the impact point.
    - {nbt}`array` **hit_point**: The coordintates of the impact point.
    - {nbt}`array` **hit_normal**: The normal of the surface the ray hit.
    - {nbt}`array` **targeted_block**: The coordinates of the block that was hit.
    - {nbt}`array` **targeted_entity**: The UUID array of the entity that was hit.
  :::
```

*Cast a ray from your eyes and see, if it stopped, where it stopped:*

```mcfunction
# Once (return 0 if no collision occured)
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{}}

# If a collision occured, see the collision point
data get storage bs:out raycast.hit_point
```

> **Credits**: Aksiome

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
