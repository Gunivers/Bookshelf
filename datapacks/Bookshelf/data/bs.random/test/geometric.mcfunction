# Geometric distribution returns acceptable values
# @batch bs.random

# if probabilty is 1, should stop at first trial
function #bs.random:geometric {probability:1}
assert score $random.geometric bs.out matches 1

# if probability is 0, should not stop and should reach the bound (1000)
function #bs.random:geometric {probability:0}
assert score $random.geometric bs.out matches 1000
