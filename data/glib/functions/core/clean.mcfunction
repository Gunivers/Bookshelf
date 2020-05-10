#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: A~Z
# Contributors:
# MC Version:
# Last check:

# Original path: glib:core/clean
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/core
# Note:
# - Please be aware that using this function will delete each and every score used by the gunivers-lib,
#   thus losing all data which may have been stored on them WITHOUT ANY POSSIBILITY OF RETRIEVAL.
#
# - If you intent on disabling the gunivers-lib for now but may reuse it later with saved data, unload it without activating this function.
# - Otherwise, if you want to remove it for good, use the shutdown function who will call this then unload the gunivers-lib in the same tick,
#   avoiding recreation of some scores.

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

	# ~~ Bool ~~
scoreboard objectives remove Output
scoreboard objectives remove Input
scoreboard objectives remove Memory
	# ~~ Constants & Data~~
scoreboard objectives remove Constant
scoreboard objectives remove Data
	# ~~ Id ~~
scoreboard objectives remove Id
scoreboard objectives remove TargetId
scoreboard objectives remove ParentId
	# ~~ Local Vectors ~~
scoreboard objectives remove VectorLeft
scoreboard objectives remove VectorUp
scoreboard objectives remove VectorFront
scoreboard objectives remove VectorSpeedLocal
scoreboard objectives remove CollisionLocal
	# ~~ Location ~~
scoreboard objectives remove LocX
scoreboard objectives remove LocY
scoreboard objectives remove LocZ
	# ~~ Math ~~
scoreboard objectives remove Res
scoreboard objectives remove Constant
	# ~~ Orientation ~~
scoreboard objectives remove OriV
scoreboard objectives remove OriH
	# ~~ Path Finder ~~
scoreboard objectives remove PathCost
	# ~~ Relative Location ~~
scoreboard objectives remove Glib_R_LocX
scoreboard objectives remove Glib_R_LocY
scoreboard objectives remove Glib_R_LocZ
	# ~~ Relative Orientation ~~
scoreboard objectives remove Glib_R_OriV
scoreboard objectives remove Glib_R_OriH
	# ~~ Vars ~~
scoreboard objectives remove Var0
scoreboard objectives remove Var1
scoreboard objectives remove Var2
scoreboard objectives remove Var3
scoreboard objectives remove Var4
scoreboard objectives remove Var5
scoreboard objectives remove Var6
scoreboard objectives remove Var7
scoreboard objectives remove Var8
scoreboard objectives remove Var9
	# ~~ Vectors ~~
scoreboard objectives remove VectorX
scoreboard objectives remove VectorY
scoreboard objectives remove VectorZ
scoreboard objectives remove VectorSpeed
scoreboard objectives remove Collision
