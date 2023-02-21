#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: A~Z
# Contributors:
# MC Version:
# Last check:

# Original path: bs.core:clean
# Documentation: 
# Note:
# - Please be aware that using this function will delete each and every score used by Bookshelf,
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
scoreboard objectives remove bs.out.0
scoreboard objectives remove bs.out.1
scoreboard objectives remove bs.out.2
scoreboard objectives remove bs.out.3
scoreboard objectives remove bs.out.4
scoreboard objectives remove bs.out.5
scoreboard objectives remove bs.out.6
scoreboard objectives remove bs.out.7
scoreboard objectives remove bs.out.8
scoreboard objectives remove bs.out.9
scoreboard objectives remove bs.in.0
scoreboard objectives remove bs.in.1
scoreboard objectives remove bs.in.2
scoreboard objectives remove bs.in.3
scoreboard objectives remove bs.in.4
scoreboard objectives remove bs.in.5
scoreboard objectives remove bs.in.6
scoreboard objectives remove bs.in.7
scoreboard objectives remove bs.in.8
scoreboard objectives remove bs.in.9

  # ~~ Health ~~
scoreboard objectives remove bs.ttl

	# ~~ Id ~~
scoreboard objectives remove bs.id
scoreboard objectives remove bs.targetId
scoreboard objectives remove bs.id.parent

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
scoreboard objectives remove bs.loc.x
scoreboard objectives remove bs.loc.y
scoreboard objectives remove bs.loc.z

	# ~~ Orientation ~~
scoreboard objectives remove bs.ori.v
scoreboard objectives remove bs.ori.h

	# ~~ Vectors ~~
scoreboard objectives remove bs.vector.x
scoreboard objectives remove bs.vector.y
scoreboard objectives remove bs.vector.z
scoreboard objectives remove bs.collision
