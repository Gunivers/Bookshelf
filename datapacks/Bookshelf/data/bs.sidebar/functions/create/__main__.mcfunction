execute store result score #sidebar.height bs.data if data storage bs:in sidebar.create.contents[]

execute unless score #sidebar.height bs.data matches 1..15 run function #bs.log:error { \
    path: "#bs.sidebar:create", \
    feature: "sidebar.create", \
    message: '[{"text":"Contents must have between 1 and 15 lines (found "},{"score":{"name":"#sidebar.height","objective":"bs.data"}},{"text":")"}]' \
}
execute unless score #sidebar.height bs.data matches 1..15 run return -1

function bs.sidebar:create/do with storage bs:in sidebar.create
