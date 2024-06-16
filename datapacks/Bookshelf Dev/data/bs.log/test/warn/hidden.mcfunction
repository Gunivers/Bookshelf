# Warn logs are not shown when missing tag
# @batch bs.log
# @dummy

function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "bar", message: '"Hidden warn log message"' }
assert not chat "Hidden warn log message"
