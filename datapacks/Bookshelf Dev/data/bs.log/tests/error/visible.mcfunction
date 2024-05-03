# Error logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.foo.log.bar.debug
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Debug tag error log message"' }
assert chat "Debug tag error log message"
tag @s remove bs.foo.log.bar.debug

tag @s add bs.foo.log.bar.info
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Info tag error log message"' }
assert chat "Info tag error log message"
tag @s remove bs.foo.log.bar.info

tag @s add bs.foo.log.bar.warn
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Warn tag error log message"' }
assert chat "Warn tag error log message"
tag @s remove bs.foo.log.bar.warn

tag @s add bs.foo.log.bar.error
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Error tag error log message"' }
assert chat "Error tag error log message"
tag @s remove bs.foo.log.bar.error
