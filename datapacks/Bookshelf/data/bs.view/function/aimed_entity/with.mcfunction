data modify storage bs:data raycast set value { \
  blocks: true, \
  entities: true, \
  max_distance: 16.0, \
  ignored_blocks: "#bs.hitbox:intangible", \
  ignored_entities: "#bs.hitbox:intangible", \
}
$data modify storage bs:data raycast merge value $(with)
