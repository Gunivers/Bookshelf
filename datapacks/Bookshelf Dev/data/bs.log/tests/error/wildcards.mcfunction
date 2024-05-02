# Error logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar._
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Level wildcard error log message"' }
assert chat "Level wildcard error log message"
tag @s remove bs.log.foo.bar._

tag @s add bs.log._.error
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Feature wildcard error log message"' }
assert chat "Feature wildcard error log message"
tag @s remove bs.log._.error

tag @s add bs.log._._
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"All wildcards error log message"' }
assert chat "All wildcards error log message"
tag @s remove bs.log._._
