# if E = -117
execute store result score #in bs.data run data get storage bs.in math.sqrt 178405961588244985132285746181186892047843328
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000091391409437857519760838395215455085269661828050925637177446066771870449887 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -118
execute store result score #in bs.data run data get storage bs.in math.sqrt 356811923176489970264571492362373784095686656
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000032311742677852643549664402033982923967414535582065582275390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -119
execute store result score #in bs.data run data get storage bs.in math.sqrt 713623846352979940529142984724747568191373312
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000045695704718928759880419197607727542634830914025462818588723033385935224943 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -120
execute store result score #in bs.data run data get storage bs.in math.sqrt 1427247692705959881058285969449495136382746624
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.00000000000000000000000000161558713389263217748322010169914619837072677910327911376953125 run scoreboard players get #out bs.data