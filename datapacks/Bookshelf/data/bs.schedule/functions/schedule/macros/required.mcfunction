$data modify storage bs:data schedule.command set value {id:'$(id)', command:'$(command)', time:$(time)}
scoreboard players reset #schedule.selector bs.data
