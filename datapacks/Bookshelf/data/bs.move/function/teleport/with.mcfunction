data modify storage bs:data move set value { \
  blocks: true, \
  entities: false, \
  on_collision: "#bs.move:on_collision/bounce", \
  ignored_blocks: "#bs.hitbox:intangible", \
  ignored_entities: "#bs.hitbox:intangible", \
}
$data modify storage bs:data move merge value $(with)
