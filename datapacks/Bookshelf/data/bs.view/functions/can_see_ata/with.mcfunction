data modify storage bs:data raycast set value { \
  blocks: true, \
  entities: false, \
  ignored_blocks: "#bs.view:can_see_through", \
  ignored_entities: "#bs.hitbox:intangible", \
}
$data modify storage bs:data raycast merge value $(with)
