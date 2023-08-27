# if E = -57
execute store result score #in bs.data run data get storage bs.in math.sqrt 154742504910672534362390528
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000049065389333867973960059331123937808123761111557287629275636575698626984376460313797 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -58
execute store result score #in bs.data run data get storage bs.in math.sqrt 309485009821345068724781056
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000034694469519536141888238489627838134765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -59
execute store result score #in bs.data run data get storage bs.in math.sqrt 618970019642690137449562112
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000024532694666933986980029665561968904061880555778643814637818287849313492188230156898 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -60
execute store result score #in bs.data run data get storage bs.in math.sqrt 1237940039285380274899124224
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000000000000173472347597680709441192448139190673828125 run scoreboard players get #out bs.data