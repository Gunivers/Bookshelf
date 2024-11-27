# Clear history works as expected
# @batch bs.log

function #bs.log:warn { namespace: "bs.foo", path: "bs.foo:bar", tag: "history", message: '"History warn log message"' }
function #bs.log:error { namespace: "bs.foo", path: "bs.foo:bar", tag: "history", message: '"History error log message"' }

function #bs.log:clear_history {with:{severity:"error"}}

assert data storage bs:data log.history[{severity:"warn"}]
assert not data storage bs:data log.history[{severity:"error"}]
