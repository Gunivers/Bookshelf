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
scoreboard players operation math.sqrt.B glib.tmp /= 2 glib.const

# C = A^2
scoreboard players operation math.sqrt.C glib.tmp = math.sqrt.A glib.tmp
scoreboard players operation math.sqrt.C glib.tmp *= math.sqrt.A glib.tmp

#    if   (                         C < X                  ){                                 A += B                                     }
execute if score math.sqrt.C glib.tmp < math.sqrt.X glib.tmp run scoreboard players operation math.sqrt.A glib.tmp += math.sqrt.B glib.tmp

#    if   (                         C > X                  ){                                 A -= B                                     }
execute if score math.sqrt.C glib.tmp > math.sqrt.X glib.tmp run scoreboard players operation math.sqrt.A glib.tmp -= math.sqrt.B glib.tmp

# Diff = A^2 - X
scoreboard players operation math.sqrt.diff glib.tmp = math.sqrt.A glib.tmp
scoreboard players operation math.sqrt.diff glib.tmp *= math.sqrt.A glib.tmp
scoreboard players operation math.sqrt.diff glib.tmp -= math.sqrt.X glib.tmp


# while(                  Diff != 0                   &&                 B > 1                  ){                  run                 }
execute unless score math.sqrt.diff glib.tmp matches 0 if score math.sqrt.B glib.tmp matches 2.. run function glib_child:math/sqrt
