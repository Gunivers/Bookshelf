function bs.sidebar:destroy/do with storage bs:sidebar registry[0]
data remove storage bs:sidebar registry[0]

execute if data storage bs:sidebar registry[0] run function bs.sidebar:reset/loop
