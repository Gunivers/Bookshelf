# compute Euclidean distance: sqrt(x^2+y^2+z^2)
# Thanks to Triton365 for sharing this trick on the Minecraft Commands discord
$data modify entity @s transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]
data modify storage bs:data raycast.max_distance set from entity @s transformation.scale[0]
