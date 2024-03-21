# Warn logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:warn { path: "bs.foo:bar", feature: "foo.bar", message: '"Hidden warn log message"' }
assert not chat "Hidden warn log message"
