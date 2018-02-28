effect @a[score_EffDamage_min=1,score_EffDamage=1,tag=IsPlaying,score_EffInvulnerable=0] instant_damage 1 0 true
effect @a[score_EffDamage_min=1001,score_EffDamage=1001,tag=IsPlaying,score_EffInvulnerable=0] instant_damage 1 1 true
effect @e[type=Zombie,score_EffDamage_min=1,score_EffDamage=999,score_LifeState_min=500,score_EffInvulnerable=0] instant_health 1 0 true
effect @e[type=Skeleton,score_EffDamage_min=1,score_EffDamage=999,score_LifeState_min=500,score_EffInvulnerable=0] instant_health 1 0 true
effect @e[type=Zombie,score_EffDamage_min=1000,score_EffDamage=1999,score_LifeState_min=500,score_EffInvulnerable=0] instant_health 1 1 true
effect @e[type=Skeleton,score_EffDamage_min=1000,score_EffDamage=1999,score_LifeState_min=500,score_EffInvulnerable=0] instant_health 1 1 true
scoreboard players set @e[score_EffDamage_min=1000,score_EffDamage=1000] EffDamage 0
scoreboard players remove @e[score_EffDamage_min=1] EffDamage 1
