
#Si il reste des set on le rapelle ds 1 tick 
execute if score setCount Set_Option matches 0.. run schedule function glib:object/mapedit/zzz_child/set/repeate 1t 

#On appele le while 
function glib:object/mapedit/zzz_child/set/while