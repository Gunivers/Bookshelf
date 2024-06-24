# Uniform distribution returns acceptable values
# @batch bs.random

execute store result score #packtest.0 bs.data run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #packtest.1 bs.data run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #packtest.2 bs.data run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #packtest.3 bs.data run function #bs.random:uniform {min:-10000000,max:10000000}
execute store result score #packtest.4 bs.data run function #bs.random:uniform {min:-10000000,max:10000000}
execute if score #packtest.0 bs.data = #packtest.1 bs.data if score #packtest.1 bs.data = #packtest.2 bs.data if score #packtest.2 bs.data = #packtest.3 bs.data if score #packtest.3 bs.data = #packtest.4 bs.data run fail "The uniform distribution should not always return the same value"
