#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/help

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS: /

#INPUT: /
#OUTPUT: /

#CODE:
tellraw @s {"text":"\u00a76In order to use the pile system, you need to init it:","extra":[{"text":"\n\u00a71/function \u00a79gunivers-lib:system/pile/init"},{"text":"\n\u00a76The init file can be used as a reset file\n"},{"text":"\n\u00a71/function \u00a79gunivers-lib:system/pile/add"},{"text":"              \u00a76Add @s to the pile"},{"text":"\n\u00a71/function \u00a79gunivers-lib:system/pile/remove"},{"text":"           \u00a76Remove @s from the pile"},{"text":"\n\u00a71/function \u00a79gunivers-lib:system/pile/removelastin"},{"text":"\u00a76     Remove the last added entity\n    \u00a76from the pile"},{"text":"\n\u00a71/function \u00a79gunivers-lib:system/pile/removefirstin"},{"text":"\u00a76    Remove the first added entity\n    \u00a76from the pile"},{"text":"\n\n\u00a76The entity that is the last in the pile has the score \u00a72PILE \u00a76to \u00a750\u00a76\n\u00a76The size of the pile is stored in the fake player \u00a72pile_size"}]}