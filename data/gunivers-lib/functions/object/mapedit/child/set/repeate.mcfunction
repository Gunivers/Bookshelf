
#Si il reste des set on le rapelle ds 1 tick 
execute if score setCount Set_Option matches 0.. run schedule function gunivers-lib:object/mapedit/child/set/repeate 1t 

#On appele le while 
function gunivers-lib:object/mapedit/child/set/while