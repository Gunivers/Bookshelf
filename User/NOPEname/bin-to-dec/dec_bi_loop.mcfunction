##Function by NOPEname
#calculation
scoreboard players operation @s conv.tmp = @s conv.in
scoreboard players operation @s conv.tmp %= algorithm_conv_2 conv.tmp
scoreboard players operation @s conv.in /= algorithm_conv_2 conv.tmp
scoreboard players operation algorithm_conv_tmp conv.tmp *= algorithm_conv_10 conv.tmp
scoreboard players operation @s conv.tmp *= algorithm_conv_tmp conv.tmp
scoreboard players operation @s conv.out += @a conv.tmp

#loop
execute @s[score_conv.in_min=1] ~ ~ ~ function algorithm:conv/dec_bi_loop