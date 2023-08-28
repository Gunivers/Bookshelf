# Configure team and scoreholder for the current line
$team add bs.sidebar.$(id).$(line)
$scoreboard players set $(score) bs.sidebar.$(id) 0
$team join bs.sidebar.$(id).$(line) $(score)
$team modify bs.sidebar.$(id).$(line) prefix $(text)

# Check if the line is considered complex (has dynamic data)
execute store success score #sidebar.complex bs.data run data modify storage bs:sidebar do.text set from entity @s CustomName
$execute if score #sidebar.complex bs.data matches 1 run data modify storage bs:sidebar registry[{id:'$(id)'}].refresh append value {"text":'$(rawtext)',line:$(line)}

# Update line count
execute store result storage bs:sidebar do.line int 1 run scoreboard players add #sidebar.line bs.data 1

data remove storage bs:sidebar do.contents[0]
execute unless data storage bs:sidebar do.contents[0] run return 1

# Each scoreholder must be unique so update it
$data modify storage bs:sidebar do.score set value "$(score)‌"

# Update guard, interpreted text and raw text for the next iteration
data modify storage bs:sidebar do.guard set from storage bs:sidebar do.contents[0]
data modify entity @s CustomName set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.rawtext set from entity @s CustomName
data modify entity @s text set from storage bs:sidebar do.contents[0]
data modify storage bs:sidebar do.text set from entity @s text

function bs.sidebar:create/loop with storage bs:sidebar do

# Guard check, if the function compile the message is valid
return 1
$tellraw @s [$(guard)]
