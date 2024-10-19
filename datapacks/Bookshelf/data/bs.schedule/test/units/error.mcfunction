# Invalid unit should throw an error
# @batch bs.schedule
# @dummy

await entity B5-0-0-0-4

tag @s add bs.schedule.log.schedule._
function #bs.schedule:schedule {with:{command:"help",time:1,unit:"¯|_(ツ)_|¯"}}
assert chat "(?i).*unit.*¯\\|_\\(ツ\\)_\\|¯"
