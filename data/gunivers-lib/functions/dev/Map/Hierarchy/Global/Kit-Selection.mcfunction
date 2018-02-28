#Kit menu
clear @a[score_InGame_min=-3,score_InGame=-3]
clear @a[score_InGame_min=-1,score_InGame=-1]
scoreboard players add @a[score_InGame_min=-1,score_InGame=-1] InGame 1
scoreboard players add @a[score_InGame_min=-3,score_InGame=-3] InGame 1
scoreboard players add @a[score_InGame_min=-6,score_InGame=-5] InGame 1
replaceitem entity @a[score_InGame_min=-4,score_InGame=-2,m=2] slot.hotbar.0 barrier 1 0 {Unbreakable:1,display:{Name:"Back to previous menu (Drop to select)"}}
scoreboard players set @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] Class 0 {SelectedItem:{id:"minecraft:barrier",tag:{display:{Name:"Back to previous menu (Drop to select)"}}}}
scoreboard players set @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=2,score_Drop=2] InGame 0 {SelectedItem:{id:"minecraft:barrier",tag:{display:{Name:"Back to previous menu (Drop to select)"}}}}
scoreboard players set @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame -4 {SelectedItem:{id:"minecraft:barrier",tag:{display:{Name:"Back to previous menu (Drop to select)"}}}}
scoreboard players add @a[score_InGame_min=-6,score_InGame=-5] InGame 1
replaceitem entity @a[score_InGame_min=-4,score_InGame=-2,m=2] slot.hotbar.1 air 1 0
replaceitem entity @a[score_InGame_min=-4,score_InGame=-4,m=2] slot.hotbar.3 stick 1 0 {Unbreakable:1,display:{Name:"Mage (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-4,score_InGame=-4,m=2] slot.hotbar.4 iron_sword 1 0 {Unbreakable:1,display:{Name:"Assassin (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-4,score_InGame=-4,m=2] slot.hotbar.5 bow 1 0 {Unbreakable:1,display:{Name:"Hunter (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-4,score_InGame=-4,m=2] slot.hotbar.6 shield 1 0 {Unbreakable:1,display:{Name:"Guardian (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-4,score_InGame=-4,m=2] slot.hotbar.2 air 1 0
replaceitem entity @a[score_InGame_min=-4,score_InGame=-4,m=2] slot.hotbar.7 air 1 0
replaceitem entity @a[score_InGame_min=-4,score_InGame=-2,m=2] slot.hotbar.8 air 1 0
scoreboard players set @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] Class 0 {SelectedItem:{id:"minecraft:stick",tag:{display:{Name:"Mage (Drop to select)"}}}}
scoreboard players set @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] Class 10 {SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:"Assassin (Drop to select)"}}}}
scoreboard players set @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] Class 20 {SelectedItem:{id:"minecraft:bow",tag:{display:{Name:"Hunter (Drop to select)"}}}}
scoreboard players set @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] Class 30 {SelectedItem:{id:"minecraft:shield",tag:{display:{Name:"Guardian (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:stick",tag:{display:{Name:"Mage (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:iron_sword",tag:{display:{Name:"Assassin (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:bow",tag:{display:{Name:"Hunter (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-4,score_InGame_min=-4,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:shield",tag:{display:{Name:"Guardian (Drop to select)"}}}}
replaceitem entity @a[score_InGame_min=-2,score_InGame=-2,m=2] slot.hotbar.2 clock 1 0 {Unbreakable:1,display:{Name:"Time Master (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-2,score_InGame=-2,m=2] slot.hotbar.3 blaze_powder 1 0 {Unbreakable:1,display:{Name:"Burner (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-2,score_InGame=-2,m=2] slot.hotbar.4 nether_star 1 0 {Unbreakable:1,display:{Name:"Thunder (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-2,score_InGame=-2,m=2] slot.hotbar.5 quartz 1 0 {Unbreakable:1,display:{Name:"Freezer (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-2,score_InGame=-2,m=2] slot.hotbar.6 feather 1 0 {Unbreakable:1,display:{Name:"Wind Howler (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
replaceitem entity @a[score_InGame_min=-2,score_InGame=-2,m=2] slot.hotbar.7 bone 1 0 {Unbreakable:1,display:{Name:"Invoker (Drop to select)",Lore:["See all kits description on our website: Gunivers.nethierarchy !"]},HideFlags:63}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] Class 1 {SelectedItem:{id:"minecraft:clock",tag:{display:{Name:"Time Master (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] Class 2 {SelectedItem:{id:"minecraft:blaze_powder",tag:{display:{Name:"Burner (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] Class 3 {SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:"Thunder (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] Class 4 {SelectedItem:{id:"minecraft:quartz",tag:{display:{Name:"Freezer (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] Class 5 {SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"Wind Howler (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] Class 6 {SelectedItem:{id:"minecraft:bone",tag:{display:{Name:"Invoker (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:clock",tag:{display:{Name:"Time Master (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:blaze_powder",tag:{display:{Name:"Burner (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:"Thunder (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:quartz",tag:{display:{Name:"Freezer (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"Wind Howler (Drop to select)"}}}}
scoreboard players add @a[score_InGame=-2,score_InGame_min=-2,score_Drop_min=3,score_Drop=3] InGame 1 {SelectedItem:{id:"minecraft:bone",tag:{display:{Name:"Invoker (Drop to select)"}}}}