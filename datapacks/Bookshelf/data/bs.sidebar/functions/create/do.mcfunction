# Create the scoreboard and the registry
$scoreboard objectives add bs.sidebar.$(id) dummy $(name)
$data modify storage bs:sidebar registry append value {id:'$(id)',refresh:[]}

# Initialize line count
execute store result storage bs:sidebar do.line int 1 run scoreboard players set #sidebar.line bs.data 0

# Set guard constraint to check that the content is a valid text component
data modify storage bs:sidebar do.guard set from storage bs:sidebar do.contents[0]

# Set interpreted text and raw text to check if the text component uses dynamic data
data modify entity @s CustomName set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.rawtext set from entity @s CustomName
data modify entity @s text set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.text set from entity @s text

function bs.sidebar:create/loop with storage bs:sidebar do
