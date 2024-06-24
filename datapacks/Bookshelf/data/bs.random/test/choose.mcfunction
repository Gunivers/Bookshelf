# Choose should return a random index and its value
# @batch bs.random

# return a value that match the index
execute store result score #result bs.data run function #bs.random:choose {options:[0,1,2,3,4]}
execute if score #result bs.data matches 0 run assert data storage bs:out random{choose:0}
execute if score #result bs.data matches 1 run assert data storage bs:out random{choose:1}
execute if score #result bs.data matches 2 run assert data storage bs:out random{choose:2}
execute if score #result bs.data matches 3 run assert data storage bs:out random{choose:3}
execute if score #result bs.data matches 4 run assert data storage bs:out random{choose:4}

# it does not return the same index each time (using a large dataset)
execute store result score #packtest.0 bs.data run function #bs.random:choose {options:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]}
execute store result score #packtest.1 bs.data run function #bs.random:choose {options:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]}
execute store result score #packtest.2 bs.data run function #bs.random:choose {options:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]}
execute store result score #packtest.3 bs.data run function #bs.random:choose {options:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]}
execute store result score #packtest.4 bs.data run function #bs.random:choose {options:[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50]}
execute if score #packtest.0 bs.data = #packtest.1 bs.data if score #packtest.1 bs.data = #packtest.2 bs.data if score #packtest.2 bs.data = #packtest.3 bs.data if score #packtest.3 bs.data = #packtest.4 bs.data run fail "Choose must return a random index each time"
