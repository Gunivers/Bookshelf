data modify storage bs:data view.raycast merge from storage bs:in view.raycast
execute store result score #view.raycast.max_distance bs.data run data get storage bs:in view.raycast.max_distance 1000
execute store result score #view.raycast.target_entities bs.data run data get storage bs:in view.raycast.target_entities
