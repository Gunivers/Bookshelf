data modify storage bs:const block set value [ \
  { id: 1, group: 0, type: "minecraft:stone", item:"minecraft:stone" }, \
  { id: 2, group: 1, type: "minecraft:oak_stairs", item:"minecraft:oak_stairs" }, \
  { id: 3, group: 1, type: "minecraft:spruce_stairs", item:"minecraft:spruce_stairs" }, \
  { id: 4, group: 2, type: "minecraft:oak_slab", item:"minecraft:oak_slab" }, \
  { id: 5, group: 2, type: "minecraft:spruce_slab", item:"minecraft:spruce_slab" }, \
]

data modify storage bs:const block[{group:1}].iterable_properties set value [ \
  { \
    name: "facing", \
    options: [ \
      { index: 0, value: "north", state: "facing=north,", property: { facing: "north" } }, \
      { index: 1, value: "south", state: "facing=south,", property: { facing: "south" } }, \
      { index: 2, value: "west", state: "facing=west,", property: { facing: "west" } }, \
      { index: 3, value: "east", state: "facing=east,", property: { facing: "east" } }, \
    ] \
  }, \
  { \
    name: "shape", \
    options: [ \
      { index: 0, value: "straight", state: "shape=straight,", property: { shape: "straight" } }, \
      { index: 1, value: "inner_left", state: "shape=inner_left,", property: { shape: "inner_left" } }, \
      { index: 2, value: "inner_right",state: "shape=inner_right,", property: { shape: "inner_right" } }, \
      { index: 3, value: "outer_left", state: "shape=outer_left,", property: { shape: "outer_left" } }, \
      { index: 4, value: "outer_right", state: "shape=outer_right,", property: { shape: "outer_right" } }, \
    ] \
  }, \
]

data modify storage bs:const block[{group:2}].iterable_properties set value [ \
  { \
    name: "type", \
    options: [ \
      { index: 0, value: "bottom", state: "type=bottom,", property: { type: "bottom" } }, \
      { index: 1, value: "double", state: "type=double,", property: { type: "double" } }, \
      { index: 2, value: "top", state: "type=top,", property: { type: "top" } }, \
    ] \
  }, \
]
