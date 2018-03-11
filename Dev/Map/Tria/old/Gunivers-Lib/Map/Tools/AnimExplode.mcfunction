#Explosion proche
effect @s[score_TimerTool3_min=6,score_TimerTool3=6] blindness 1 1 true
tp @s[score_TimerTool3_min=6,score_TimerTool3=6] ~ ~ ~ ~-2 ~1
tp @s[score_TimerTool3_min=5,score_TimerTool3=5] ~ ~ ~ ~1 ~-2
tp @s[score_TimerTool3_min=4,score_TimerTool3=4] ~ ~ ~ ~1 ~1
#Explosion loin
tp @s[score_TimerTool3_min=3,score_TimerTool3=3] ~ ~ ~ ~1 ~-1
tp @s[score_TimerTool3_min=2,score_TimerTool3=2] ~ ~ ~ ~-2 ~
tp @s[score_TimerTool3_min=1,score_TimerTool3=1] ~ ~ ~ ~1 ~1
scoreboard players remove @s[score_TimerTool3_min=1] TimerTool3 1
scoreboard players tag @s[score_TimerTool3_min=0,score_TimerTool3=0] remove AnimExplode

