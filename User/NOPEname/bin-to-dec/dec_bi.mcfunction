##Function by NOPEname
#input: conv.in
#output: conv.out
#operation: dec -> bi



#before loop
scoreboard players set @s conv.out 0
scoreboard players set algorithm_conv_2 conv.tmp 2
scoreboard players set algorithm_conv_10 conv.tmp 10
scoreboard players set algorithm_conv_tmp conv.tmp 1

#error
tellraw @s[score_conv.in=0] {"text":"\n\nInput value too small","color":"red"}
tellraw @s[score_conv.in_min=512] {"text":"\n\nInput value too big","color":"red"}

#loop
execute @s[score_conv.in_min=0,score_conv.in=511] ~ ~ ~ function algorithm:conv/dec_bi_loop

#after loop
scoreboard players operation @s conv.out /= algorithm_conv_10 conv.tmp