# math magic
scoreboard players add #math.combine.n bs.data 1
scoreboard players add #math.combine.i bs.data 1

#tellraw @a {"score":{"name": "@s","objective": "bs.out.0"}}
#tellraw @a {"score":{"name": "#math.combine.n","objective": "bs.data"}}
#tellraw @a {"score":{"name": "#math.combine.i","objective": "bs.data"}}


scoreboard players set #math.combine.max_out_nonoverflow bs.data 2147483647
scoreboard players operation #math.combine.max_out_nonoverflow bs.data /= #math.combine.n bs.data
execute store result score #math.combine.flag bs.data if score @s bs.out.0 <= #math.combine.max_out_nonoverflow bs.data
execute if score #math.combine.flag bs.data matches 1 run function bs.math:combine/normal
execute if score #math.combine.flag bs.data matches 0 run function bs.math:combine/anti_overflow

#tellraw @a {"score":{"name": "@s","objective": "bs.out.0"}}


execute if score #math.combine.i bs.data < #math.combine.m bs.data run function bs.math:combine/loop