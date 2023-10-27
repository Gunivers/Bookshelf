function bs.sidebar:destroy/do with storage bs:data sidebar.registry[0]
execute if data storage bs:data sidebar.registry[0] run function bs.sidebar:reset/loop
