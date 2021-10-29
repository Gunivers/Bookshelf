
function glib_utils:menu/creator/place_system/remove

# Non-destructive placement system
execute positioned ~ ~1.7 ~ run summon armor_stand ^ ^ ^5 {Small:1,Marker:1,Invisible:1,NoGravity:1,Tags:["Glib","Glib_Example_System"]}
execute as @e[tag=Glib_Example_System] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
#execute as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run function glib:block/get
