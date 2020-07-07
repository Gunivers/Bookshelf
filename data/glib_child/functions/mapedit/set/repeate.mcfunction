
#Si il reste des set on le rapelle ds 1 tick 
execute if score setCount Set_Option matches 0.. run schedule function glib_child:mapedit/set/repeate 1t 

#On appele le while 
function glib_child:mapedit/set/while