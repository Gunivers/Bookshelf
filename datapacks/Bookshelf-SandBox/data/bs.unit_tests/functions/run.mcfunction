tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Starting unitary tests..."}]

scoreboard objectives add bs.unit_tests dummy

function bs.unit_tests:module/id
function bs.unit_tests:module/link

scoreboard objectives remove bs.unit_tests

tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Unitary tests completed!"}]