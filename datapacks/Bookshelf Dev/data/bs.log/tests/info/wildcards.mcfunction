# Info logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar._
function #bs.log:info { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Level wildcard info log message"' }
assert chat "Level wildcard info log message"
tag @s remove bs.foo.log.bar._

tag @s add bs.foo.log._.info
function #bs.log:info { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Tag wildcard info log message"' }
assert chat "Tag wildcard info log message"
tag @s remove bs.foo.log._.info

tag @s add bs.foo.log._._
function #bs.log:info { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Tag and level wildcards info log message"' }
assert chat "Tag and level wildcards info log message"
tag @s remove bs.foo.log._._

tag @s add _.log._._
function #bs.log:info { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"All wildcards info log message"' }
assert chat "All wildcards info log message"
tag @s remove _.log._._
