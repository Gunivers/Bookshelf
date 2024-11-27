# Weighted choice should return a random index and its value
# @batch bs.random

# return a value that match the index
data modify storage bs:in random.weighted_choice.options set value [0,1,2,3,4]
execute store result score #i bs.ctx run function #bs.random:weighted_choice
execute if score #i bs.ctx matches 0 run assert data storage bs:out random{weighted_choice:0}
execute if score #i bs.ctx matches 1 run assert data storage bs:out random{weighted_choice:1}
execute if score #i bs.ctx matches 2 run assert data storage bs:out random{weighted_choice:2}
execute if score #i bs.ctx matches 3 run assert data storage bs:out random{weighted_choice:3}
execute if score #i bs.ctx matches 4 run assert data storage bs:out random{weighted_choice:4}

# the weight has an impact on the returned value
data modify storage bs:in random.weighted_choice.options set value [0,42,0,0,0,0]
data modify storage bs:in random.weighted_choice.weights set value [0,1,0,0,0,0]
execute store result score #i bs.ctx run function #bs.random:weighted_choice
assert data storage bs:out random{weighted_choice:42}
assert score #i bs.ctx matches 1
