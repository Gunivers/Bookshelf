# Binomial distribution returns acceptable values
# @batch bs.random

# if probabilty is 1, should stop at last trial
function #bs.random:binomial {trials:5,probability:1}
assert score $random.binomial bs.out matches 5

# if probability is 0, should not stop and no trial should succeed
function #bs.random:binomial {trials:5,probability:0}
assert score $random.binomial bs.out matches 0
