$data modify storage bs:in color.rgb_to_int.color set value $(color)

# Currently needed to avoid adding 1 to returned values
# TODO: Check that it is still needed in 1.20.2
return 0
