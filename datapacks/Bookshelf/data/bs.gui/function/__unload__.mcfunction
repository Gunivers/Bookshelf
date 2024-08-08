execute as @e run function bs.gui:interaction/event/clear_events

data remove storage bs:data gui
scoreboard objectives remove bs.gui.hover_state
scoreboard objectives remove bs.gui.slider_step
scoreboard objectives remove bs.gui.slider_slot
scoreboard objectives remove bs.gui.slider_state