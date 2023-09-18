scoreboard players set #schedule.selector bs.data 0
$execute as $(selector) store success score #schedule.selector bs.data run loot replace entity B5-0-0-0-3 container.0 loot bs.schedule:interpret_selector
function bs.schedule:schedule/resolve_uuid with entity B5-0-0-0-3 item.tag.display
