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
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

  # ~~ Glib_Debug_global ~~
scoreboard objectives remove glib.data
scoreboard objectives remove glib.config
scoreboard objectives remove glib.const
scoreboard objectives remove glib.var
scoreboard objectives remove glib.res


	# ~~ Bool ~~
scoreboard objectives remove Output
scoreboard objectives remove Input
scoreboard objectives remove Memory
	# ~~ glib.id ~~
scoreboard objectives remove glib.id
scoreboard objectives remove glib.id.target
scoreboard objectives remove glib.id.parent
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
	# ~~ Orientation ~~
scoreboard objectives remove OriV
scoreboard objectives remove OriH
	# ~~ Path Finder ~~
scoreboard objectives remove PathCost
	# ~~ Relative Location ~~
scoreboard objectives remove glib.link.r.x
scoreboard objectives remove glib.link.r.y
scoreboard objectives remove glib.link.r.z
	# ~~ Relative Orientation ~~
scoreboard objectives remove glib.link.r.v
scoreboard objectives remove glib.link.r.h
	# ~~ Vectors ~~
scoreboard objectives remove VectorX
scoreboard objectives remove VectorY
scoreboard objectives remove VectorZ
scoreboard objectives remove VectorSpeed
scoreboard objectives remove Collision
