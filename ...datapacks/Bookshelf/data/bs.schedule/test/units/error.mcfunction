# Invalid unit should throw an error
# @batch bs.schedule
# @dummy

await entity B5-0-0-0-2

tag @s add bs.schedule.log.schedule._
function #bs.schedule:schedule {with:{command:"say _",time:1,unit:"¯|_(ツ)_|¯"}}
assert chat "(?i).*unit.*¯\\|_\\(ツ\\)_\\|¯"
