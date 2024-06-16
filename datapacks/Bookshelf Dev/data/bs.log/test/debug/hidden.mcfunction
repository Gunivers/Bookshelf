# Debug logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:debug { namespace: "bs.foo", path: "bs.foo:bar", feature: "bar", message: '"Hidden debug log message"' }
assert not chat "Hidden debug log message"
