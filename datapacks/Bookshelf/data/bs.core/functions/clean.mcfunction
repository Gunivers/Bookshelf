#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: A~Z
# Contributors:
# MC Version:
# Last check:

# Original path: bs.core:clean
# Documentation: https://bs-core.readthedocs.io//core
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
scoreboard objectives remove bs
scoreboard objectives remove bs.config
scoreboard objectives remove bs.const
scoreboard objectives remove bs.data
scoreboard objectives remove bs.debug
scoreboard objectives remove bs.res0
scoreboard objectives remove bs.res1
scoreboard objectives remove bs.res2
scoreboard objectives remove bs.res3
scoreboard objectives remove bs.res4
scoreboard objectives remove bs.res5
scoreboard objectives remove bs.res6
scoreboard objectives remove bs.res7
scoreboard objectives remove bs.res8
scoreboard objectives remove bs.res9
scoreboard objectives remove bs.var0
scoreboard objectives remove bs.var1
scoreboard objectives remove bs.var2
scoreboard objectives remove bs.var3
scoreboard objectives remove bs.var4
scoreboard objectives remove bs.var5
scoreboard objectives remove bs.var6
scoreboard objectives remove bs.var7
scoreboard objectives remove bs.var8
scoreboard objectives remove bs.var9

  # ~~ Health ~~
scoreboard objectives remove bs.ttl

	# ~~ Id ~~
scoreboard objectives remove bs.id
scoreboard objectives remove bs.targetId
scoreboard objectives remove bs.parentId

 # ~~ Link ~~
scoreboard objectives remove bs.link.rx
scoreboard objectives remove bs.link.ry
scoreboard objectives remove bs.link.rz
scoreboard objectives remove bs.link.rv
scoreboard objectives remove bs.link.rh
scoreboard objectives remove bs.link.lx
scoreboard objectives remove bs.link.ly
scoreboard objectives remove bs.link.lz
scoreboard objectives remove bs.link.to

	# ~~ Location ~~
scoreboard objectives remove bs.locX
scoreboard objectives remove bs.locY
scoreboard objectives remove bs.locZ

	# ~~ Orientation ~~
scoreboard objectives remove bs.ori.v
scoreboard objectives remove bs.ori.h

	# ~~ Vectors ~~
scoreboard objectives remove bs.vectorX
scoreboard objectives remove bs.vectorY
scoreboard objectives remove bs.vectorZ
scoreboard objectives remove bs.vectorLeft
scoreboard objectives remove bs.vectorUp
scoreboard objectives remove bs.vectorFront
scoreboard objectives remove bs.collision
