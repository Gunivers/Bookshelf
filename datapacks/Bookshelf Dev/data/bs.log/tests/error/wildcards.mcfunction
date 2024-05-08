# Error logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar._
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Level wildcard error log message"' }
assert chat "Level wildcard error log message"
tag @s remove bs.foo.log.bar._

tag @s add bs.foo.log._.error
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Tag wildcard error log message"' }
assert chat "Tag wildcard error log message"
tag @s remove bs.foo.log._.error

tag @s add bs.foo.log._._
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Tag and level wildcards error log message"' }
assert chat "Tag and level wildcards error log message"
tag @s remove bs.foo.log._._

tag @s add _.log._._
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"All wildcards error log message"' }
assert chat "All wildcards error log message"
tag @s remove _.log._._

