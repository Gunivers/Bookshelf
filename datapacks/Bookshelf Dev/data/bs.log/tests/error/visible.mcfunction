# Error logs are shown when having tag
# @batch bs.log
# @dummy

tag @s add bs.log.foo.bar.debug
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Debug tag error log message"' }
assert chat "Debug tag error log message"
tag @s remove bs.log.foo.bar.debug

tag @s add bs.log.foo.bar.info
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Info tag error log message"' }
assert chat "Info tag error log message"
tag @s remove bs.log.foo.bar.info

tag @s add bs.log.foo.bar.warn
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Warn tag error log message"' }
assert chat "Warn tag error log message"
tag @s remove bs.log.foo.bar.warn

tag @s add bs.log.foo.bar.error
function #bs.log:error { path: "bs.foo:bar", feature: "foo.bar", message: '"Error tag error log message"' }
assert chat "Error tag error log message"
tag @s remove bs.log.foo.bar.error
