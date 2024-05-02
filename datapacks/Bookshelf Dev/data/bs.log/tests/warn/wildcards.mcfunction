# Warn logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar._
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Level wildcard warn log message"' }
assert chat "Level wildcard warn log message"
tag @s remove bs.foo.log.bar._

tag @s add bs.foo.log._.warn
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Tag wildcard warn log message"' }
assert chat "tag wildcard warn log message"
tag @s remove bs.foo.log._.warn

tag @s add bs.foo.log._._
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"All wildcards warn log message"' }
assert chat "Tag and level wildcards warn log message"
tag @s remove bs.foo.log._._

tag @s add _.log._._
function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"All wildcards warn log message"' }
assert chat "All wildcards warn log message"
tag @s remove _.log._._
