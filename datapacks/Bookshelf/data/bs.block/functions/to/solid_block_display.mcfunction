$summon block_display ~ ~ ~ { \
  Tags:[ "bs", "bs.block.solid_display_block" ], \
  teleport_duration: 1, \
  transformation: { \
    left_rotation: [ 0f, 0f, 0f, 1f ], \
    right_rotation:[ 0f, 0f, 0f, 1f ], \
    translation: [ -0.5f, 0f, -0.5f ], \
    scale: [ 1f, 1f, 1f ] \
  }, \
  block_state: { \
    Name: "$(type)", \
    Properties: $(state_struct) \
  }, \
  Passengers: [ \
    { \
      id: "minecraft:shulker", \
      Tags: [ "bs" ], \
      NoGravity: 1b, \
      Silent: 1b, \
      Invulnerable: 1b, \
      PersistenceRequired: 1b, \
      AttachFace: 0b, \
      NoAI: 1b, \
      active_effects: [ \
        { \
          id: "invisibility", \
          Amplifier: 1b, \
          duration: -1, \
          show_particles: 0b \
        } \
      ] \
    } \
  ] \
}
