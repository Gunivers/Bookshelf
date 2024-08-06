# Uniform distribution returns acceptable values
# @batch bs.random

execute store result score #0 bs.ctx run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #1 bs.ctx run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #2 bs.ctx run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #3 bs.ctx run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #4 bs.ctx run function #bs.random:uniform {min:-10000000,max:10000000}
execute if score #0 bs.ctx = #1 bs.ctx if score #1 bs.ctx = #2 bs.ctx if score #2 bs.ctx = #3 bs.ctx if score #3 bs.ctx = #4 bs.ctx run fail "The uniform distribution should not always return the same value"
