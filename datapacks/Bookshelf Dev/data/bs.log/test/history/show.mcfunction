# Show history filter as expected
# @batch bs.log
# @dummy

function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "history", message: '"History warn log message"' }
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "history", message: '"History error log message"' }
assert not chat "History warn log message"
assert not chat "History error log message"

function #bs.log:history {with:{tag:"history",severity:"error"}}
assert not chat "History warn log message"
assert chat "History error log message"
