$data modify storage bs:out block.data.state set from storage bs:block states[$(id)]
data modify storage bs:out block.state set from storage bs:out block.data.state.stringified
data modify storage bs:out block.state_struct set from storage bs:out block.data.state.block_state
