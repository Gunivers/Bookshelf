# Invalid unit should throw an error
# @batch bs.schedule
# @dummy

tag @s add bs.schedule.log.schedule._
function #bs.schedule:schedule {with:{command:"",time:1,unit:"¯|_(ツ)_|¯"}}
assert chat "(?i).*error.*¯\\|_\\(ツ\\)_\\|¯"
