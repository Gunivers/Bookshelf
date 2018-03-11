#Main function
#Called every tick (by the command block at 30 100 30)

#Source entity is the armor_stand with tag Data

# ---- Global Systems -------------------------------------------------------------------------------------

#Timers
#The Timer2s on every entity that has the tag Timer2s runs from 1 to 40 constantly
#The Timer1s on every entity that has the tag Timer1s runs from 1 to 20 constantly
#The Timer10ticks on every entity that has the tag Timer10ticks runs from 1 to 10 constantly
scoreboard players add @e[tag=Timer2s] Timer2s 1
scoreboard players set @e[score_Timer2s_min=41,tag=Timer2s] Timer2s 1
scoreboard players add @e[tag=Timer1s] Timer1s 1
scoreboard players set @e[score_Timer1s_min=21,tag=Timer1s] Timer1s 1
scoreboard players add @e[tag=Timer10ticks] Timer10ticks 1
scoreboard players set @e[score_Timer10ticks_min=11,tag=Timer10ticks] Timer10ticks 1

#Slow update mains
function Tria:Main40ticks if @s[score_Timer2s=1]
function Tria:Main20ticks if @s[score_Timer1s=1]
function Tria:Main10ticks if @s[score_Timer10ticks=1]

#Useless Entities Kill 
#Tags: Perm = Permanent, CanBeAlive = Kill on next reset
#Other Life times: LifeTimeInTicks * -1 on the CanBeAlive objective
scoreboard players add @e CanBeAlive 0
scoreboard players set @e[tag=CanBeAlive,score_CanBeAlive_min=0,score_CanBeAlive=0] CanBeAlive 1
scoreboard players tag @e remove CanBeAlive
scoreboard players set @e[tag=Perm] CanBeAlive 1
scoreboard players add @e[score_CanBeAlive=-1] CanBeAlive 1 
tp @e[score_CanBeAlive=0,score_CanBeAlive_min=0,type=!player] ~ -200 ~
kill @e[score_CanBeAlive=0,score_CanBeAlive_min=0,type=!player]

# ---- Story ----------------------------------------------------------------------------------------------




# ---- Other ----------------------------------------------------------------------------------------------






