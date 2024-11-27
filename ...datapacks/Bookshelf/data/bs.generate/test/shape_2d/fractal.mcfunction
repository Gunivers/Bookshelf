# Check fractal algorithm
# @batch bs.generate

scoreboard players reset $random.fractal_noise_2d bs.out
function #bs.generate:fractal_shape_2d {width:1,height:2,run:"assert score $random.fractal_noise_2d bs.out matches -1000..1000",with:{limit:1}}
scoreboard players reset $random.fractal_noise_2d bs.out
