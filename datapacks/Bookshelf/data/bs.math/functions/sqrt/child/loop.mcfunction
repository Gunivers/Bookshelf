#__________________________________________________
#                     SQRT
#__________________________________________________
# X := unkown number
# A := search head
# B := incrementor/decrementor
#__________________________________________________
# A = 0
# B = 32769 // limit for X
# Diff = A^2 - X
#                                  // Start of this function - it represent only the while() block
# While Diff != 0 && B > 1
#    B /= 2
#    if A^2 < X
#       A += B
#    else
#       A -= B
#    Diff = A^2 - X
#__________________________________________________

# B /= 2
scoreboard players operation math.sqrt.B bs /= 2 bs.const

# C = A^2
scoreboard players operation math.sqrt.C bs = math.sqrt.A bs
scoreboard players operation math.sqrt.C bs *= math.sqrt.A bs

#    if  (                    C < X                  ){                             A += B                               }
execute if score math.sqrt.C bs < math.sqrt.X bs run scoreboard players operation math.sqrt.A bs += math.sqrt.B bs

#    if  (                    C > X                  ){                             A -= B                               }
execute if score math.sqrt.C bs > math.sqrt.X bs run scoreboard players operation math.sqrt.A bs -= math.sqrt.B bs

# Diff = A^2 - X
scoreboard players operation math.sqrt.diff bs = math.sqrt.A bs
scoreboard players operation math.sqrt.diff bs *= math.sqrt.A bs
scoreboard players operation math.sqrt.diff bs -= math.sqrt.X bs


# while(                  Diff != 0                   &&                 B > 1                  ){                  run                 }
execute unless score math.sqrt.diff bs matches 0 if score math.sqrt.B bs matches 2.. run function bs.math:sqrt/child/loop
