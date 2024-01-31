# t1 = out//i; t2 = out%i; t3 = k//i; t4 = k%i
# out*k//i = t1*t3*i + t2*t3 + t1*t4 + t2*t4//i
#tellraw @a {"score":{"name": "#math.combine.max_out_nonoverflow","objective": "bs.data"}}
# t2
scoreboard players operation #math.combine.temp2 bs.data = $math.combine bs.out
execute store result score #math.combine.add2 bs.data run scoreboard players operation #math.combine.temp2 bs.data %= #math.combine.i bs.data

# t1
scoreboard players operation $math.combine bs.out /= #math.combine.i bs.data

# t3 & t4
execute store result score #math.combine.temp3 bs.data run scoreboard players operation #math.combine.temp4 bs.data = #math.combine.k bs.data
scoreboard players operation #math.combine.temp3 bs.data /= #math.combine.i bs.data
execute store result score #math.combine.add3 bs.data store result score #math.combine.add4 bs.data run scoreboard players operation #math.combine.temp4 bs.data %= #math.combine.i bs.data

# add1 = t1 * t3 * i
scoreboard players operation $math.combine bs.out *= #math.combine.temp3 bs.data
scoreboard players operation $math.combine bs.out *= #math.combine.i bs.data

# add2 = t2 * t3
scoreboard players operation #math.combine.add2 bs.data *= #math.combine.temp3 bs.data

# add3 = t4 * t1
scoreboard players operation #math.combine.add3 bs.data *= #math.combine.temp1 bs.data

# add4 = t4 * t2 // i
scoreboard players operation #math.combine.add3 bs.data *= #math.combine.temp2 bs.data
scoreboard players operation #math.combine.add3 bs.data /= #math.combine.i bs.data

# add together
scoreboard players operation $math.combine bs.out += #math.combine.add2 bs.data
scoreboard players operation $math.combine bs.out += #math.combine.add3 bs.data
scoreboard players operation $math.combine bs.out += #math.combine.add4 bs.data
