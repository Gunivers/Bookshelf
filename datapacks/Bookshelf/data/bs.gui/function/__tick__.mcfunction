execute as @a if entity @e[tag=bs.gui.hover] run function bs.gui:interaction/on_event/hover/detect_hover
execute as @a[tag=bs.gui.hotbar_slider] run function bs.gui:hotbar/slider/update_slider_state