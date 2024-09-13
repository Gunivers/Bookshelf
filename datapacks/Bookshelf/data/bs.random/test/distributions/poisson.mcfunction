# Poisson distribution returns acceptable values
# @batch bs.random

execute store result score #0 bs.ctx run function #bs.random:poisson {lambda:1}
execute store result score #1 bs.ctx run function #bs.random:poisson {lambda:3}
execute store result score #2 bs.ctx run function #bs.random:poisson {lambda:5}
execute store result score #3 bs.ctx run function #bs.random:poisson {lambda:7}
execute store result score #4 bs.ctx run function #bs.random:poisson {lambda:9}
execute if score #0 bs.ctx = #1 bs.ctx if score #1 bs.ctx = #2 bs.ctx if score #2 bs.ctx = #3 bs.ctx if score #3 bs.ctx = #4 bs.ctx run fail "The poisson distribution should not always return the same value"
