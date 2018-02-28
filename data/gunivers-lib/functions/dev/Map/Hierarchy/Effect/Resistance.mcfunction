effect @e[score_EffResistance_min=1,score_EffResistance=999,tag=IsPlaying] resistance 1 0 true
effect @e[score_EffResistance_min=1000,score_EffResistance=1999,tag=IsPlaying] resistance 1 1 true
effect @e[score_EffResistance_min=2000,score_EffResistance=2999,tag=IsPlaying] resistance 1 2 true
effect @e[score_EffResistance_min=3000,score_EffResistance=3999,tag=IsPlaying] resistance 1 3 true
scoreboard players set @e[score_EffResistance_min=1000,score_EffResistance=1000] EffResistance 0
scoreboard players set @e[score_EffResistance_min=2000,score_EffResistance=2000] EffResistance 0
scoreboard players set @e[score_EffResistance_min=3000,score_EffResistance=3000] EffResistance 0
effect @e[score_EffResistance_min=0,score_EffRessitance=0] resistance 0
scoreboard players remove @e[score_EffResistance_min=0] EffResistance 1
