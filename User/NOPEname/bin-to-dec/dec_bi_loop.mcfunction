##Function by NOPEname
#calculation
scoreboard players operation @s conv.Tmp1 = @s conv.in
scoreboard players operation @s conv.Tmp1 %= algorithm_conv_2 conv.tmp
scoreboard players operation @s conv.in /= algorithm_conv_2 conv.tmp
scoreboard players operation algorithm_conv_Tmp1 conv.Tmp1 *= algorithm_conv_10 conv.tmp
scoreboard players operation @s conv.Tmp1 *= algorithm_conv_Tmp1 conv.tmp
scoreboard players operation @s conv.out += @a conv.tmp

#loop
execute @s[score_conv.in_min=1] ~ ~ ~ function algorithm:conv/dec_bi_loop