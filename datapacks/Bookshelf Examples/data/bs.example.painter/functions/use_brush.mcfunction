# Executes a function to replace the block the player is aiming at, within a maximum distance of 5 blocks.
function #bs.view:at_aimed_block { run: "function bs.example.painter:replace_block", with: { max_distance: 5 }}

# Revokes the brush use advancement. This must be done after everything else to keep track of which brush was used.
advancement revoke @s only bs.example.painter:use_brush
