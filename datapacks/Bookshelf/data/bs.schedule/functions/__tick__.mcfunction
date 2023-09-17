# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

execute store result score #schedule.game_time bs.data run time query gametime

# Compare the current game time with the execution time of the first command of the stack,
# if the execution time is equal or lower than the game time, execute the command.
execute unless score #schedule.next_time bs.data matches 0 \
  if score #schedule.game_time bs.data >= #schedule.next_time bs.data \
  run function bs.schedule:execute/loop
