##Function by NOPEname
#calculation
scoreboard players operation @s conv.Tmp1 = @s conv.in
scoreboard players operation @s conv.Tmp1 %= algorithm_conv_2 conv.tmp
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=100000000,score_conv.in=111111111] conv.out 256
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=10000000,score_conv.in=11111111] conv.out 128
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=1000000,score_conv.in=1111111] conv.out 64
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=100000,score_conv.in=111111] conv.out 32
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=10000,score_conv.in=11111] conv.out 16
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=1000,score_conv.in=1111] conv.out 8
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=100,score_conv.in=111] conv.out 4
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=10,score_conv.in=11] conv.out 2
scoreboard players add @s[score_conv.Tmp1_min=1,score_conv.in_min=1,score_conv.in=1] conv.out 1
scoreboard players operation @s[score_conv.in_min=1] conv.in /= algorithm_conv_10 conv.tmp

#loop
execute @s[score_conv.in_min=1] ~ ~ ~ function algorithm:conv/bi_dec_loop