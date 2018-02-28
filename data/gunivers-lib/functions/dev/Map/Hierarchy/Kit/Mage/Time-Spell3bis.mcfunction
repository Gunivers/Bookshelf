execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=1,score_Timer=1,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B","MT3G"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=11,score_Timer=11,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B","MT3G"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=21,score_Timer=21,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B","MT3G"],NoGravity:1}
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=31,score_Timer=31,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3B","MT3G"],NoGravity:1}

execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=1,score_Timer=1,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R","MT3G"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=11,score_Timer=11,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R","MT3G"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=21,score_Timer=21,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R","MT3G"],NoGravity:1}
execute @a[team=Orange,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=31,score_Timer=31,score_Spell3=100,m=2] ~ ~ ~ /summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["MT3R","MT3G"],NoGravity:1}

execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=1,score_Timer=1,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3G,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=11,score_Timer=11,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3G,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=21,score_Timer=21,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3G,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]
execute @a[team=Blue,score_Class_min=1,score_Class=1,score_InGame_min=1,score_Timer_min=31,score_Timer=31,score_Spell3=100,m=2] ~ ~ ~ /tp @e[type=armor_stand,tag=MT3G,r=3,c=1] @p[r=1,score_Class_min=1,score_Class=1,team=Blue]

scoreboard players set @e[type=armor_stand,tag=MT3G,score_Timer_min=1] Timer -100