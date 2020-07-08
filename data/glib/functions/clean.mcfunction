#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: A~Z
# Contributors:
# MC Version:
# Last check:

# Original path: glib:core/clean
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/core
# Parallelizable: <true/false/global>
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

  # ~~ Global ~~
scoreboard objectives remove glib
scoreboard objectives remove glib.config
scoreboard objectives remove glib.const
scoreboard objectives remove glib.data
scoreboard objectives remove glib.debug
scoreboard objectives remove glib.res0
scoreboard objectives remove glib.res1
scoreboard objectives remove glib.res2
scoreboard objectives remove glib.res3
scoreboard objectives remove glib.res4
scoreboard objectives remove glib.res5
scoreboard objectives remove glib.res6
scoreboard objectives remove glib.res7
scoreboard objectives remove glib.res8
scoreboard objectives remove glib.res9
scoreboard objectives remove glib.var0
scoreboard objectives remove glib.var1
scoreboard objectives remove glib.var2
scoreboard objectives remove glib.var3
scoreboard objectives remove glib.var4
scoreboard objectives remove glib.var5
scoreboard objectives remove glib.var6
scoreboard objectives remove glib.var7
scoreboard objectives remove glib.var8
scoreboard objectives remove glib.var9

  # ~~ Health ~~
scoreboard objectives remove glib.ttl

	# ~~ Id ~~
scoreboard objectives remove glib.id
scoreboard objectives remove glib.targetId
scoreboard objectives remove glib.parentId

 # ~~ Link ~~
scoreboard objectives remove glib.link.r.x
scoreboard objectives remove glib.link.r.y
scoreboard objectives remove glib.link.r.z
scoreboard objectives remove glib.link.r.v
scoreboard objectives remove glib.link.r.h
scoreboard objectives remove glib.link.l.x
scoreboard objectives remove glib.link.l.y
scoreboard objectives remove glib.link.l.z

	# ~~ Location ~~
scoreboard objectives remove glib.locX
scoreboard objectives remove glib.locY
scoreboard objectives remove glib.locZ

	# ~~ Orientation ~~
scoreboard objectives remove glib.ori.v
scoreboard objectives remove glib.ori.h

	# ~~ Vectors ~~
scoreboard objectives remove glib.vectorX
scoreboard objectives remove glib.vectorY
scoreboard objectives remove glib.vectorZ
scoreboard objectives remove glib.vectorLeft
scoreboard objectives remove glib.vectorUp
scoreboard objectives remove glib.vectorFront
scoreboard objectives remove glib.collision
