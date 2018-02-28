#Tips
scoreboard players tag @a[score_LifeState_min=40,score_LifeState=40] add TIP
execute @a[tag=TIP,score_Timer_min=1,score_Timer=39] ~ ~ ~ playsound minecraft:block.wood_button.click_on record @p ~ ~ ~ 1 2 0
tellraw @a[tag=TIP,score_Timer_min=1,score_Timer=1] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can return to your base and recover your life and mana by droping the book.","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=2,score_Timer=2] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can send fast messages to your team thanks to the book.","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=3,score_Timer=3] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"You can buy potions in the book.","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=4,score_Timer=4] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Use '1', '2', '3' and '4' keys to access quickly to your spells","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=5,score_Timer=5] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Stand on plateforme at your base allow you to regain some life","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=6,score_Timer=6] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Jungles allow you to be invisible but it make you slower ... (exept if you are an assassin)","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=7,score_Timer=7] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"All of your spells have been thook to make powerfull combos !","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=8,score_Timer=8] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"Cooperate with your friends to make the best strategy !","color":"yellow","bold":false}]
tellraw @a[tag=TIP,score_Timer_min=8,score_Timer=8] ["",{"text":"[TIP] ","color":"dark_purple","bold":true},{"text":"An operator can make join a player during a game by adding him the tag 'Join'.","color":"yellow","bold":false}]
scoreboard players tag @a remove TIP