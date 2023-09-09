scoreboard players operation #link.mirror_plane.v bs.data *= -1 bs.const
scoreboard players add #link.mirror_plane.v bs.data 90000
scoreboard players operation #link.mirror_plane.v bs.data %= 180000 bs.const
scoreboard players remove #link.mirror_plane.v bs.data 90000
scoreboard players add #link.mirror_plane.h bs.data 180000
