##Function by NOPEname
##"get_rot" by Koder
##output: x & y & z & rx & ry



##get rotation
function main:get_rot/tick

##get coordinates
function main:get_pos/x
function main:get_pos/z

#get y
summon area_effect_cloud ~ ~-0.4999 ~ {Duration:1,Tags:[get_y]}
scoreboard players set @s y -1
scoreboard players set @s[y=256,dy=255] y 256
execute @e[tag=get_y,y=0,dy=255] ~ ~ ~ function main:get_pos/y
scoreboard players operation @s y = @e[tag=get_y] y
kill @e[tag=get_y]