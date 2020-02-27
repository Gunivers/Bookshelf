# NAME: Missing Tag Fixer
# PATH: gunivers-lib:utils/durability_modifier/child/fix_missing_tag

# AUTHOR: Syl2010

# CHILD OF: gunivers-lib:utils/durability_modifier/apply_damage

# VERSION: 1.0
# MINECRAFT: 1.14

# INPUT:
# - Damaging item hold in hand (item)

# OUTPUT:
# - SelectedItem.tag.Damage (NBT)

# NOTE:
# Replace the hold's item to the same item with the default damage tag

# CODE:

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe" }}] weapon.mainhand minecraft:wooden_axe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"  }}] weapon.mainhand minecraft:stone_axe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe" }}] weapon.mainhand minecraft:golden_axe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"   }}] weapon.mainhand minecraft:iron_axe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] weapon.mainhand minecraft:diamond_axe{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel" }}] weapon.mainhand minecraft:wooden_shovel{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"  }}] weapon.mainhand minecraft:stone_shovel{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel" }}] weapon.mainhand minecraft:golden_shovel{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"   }}] weapon.mainhand minecraft:iron_shovel{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] weapon.mainhand minecraft:diamond_shovel{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe" }}] weapon.mainhand minecraft:wooden_pickaxe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"  }}] weapon.mainhand minecraft:stone_pickaxe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe" }}] weapon.mainhand minecraft:golden_pickaxe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"   }}] weapon.mainhand minecraft:iron_pickaxe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] weapon.mainhand minecraft:diamond_pickaxe{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe" }}] weapon.mainhand minecraft:wooden_hoe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"  }}] weapon.mainhand minecraft:stone_hoe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe" }}] weapon.mainhand minecraft:golden_hoe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"   }}] weapon.mainhand minecraft:iron_hoe{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] weapon.mainhand minecraft:diamond_hoe{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword" }}] weapon.mainhand minecraft:wooden_sword{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"  }}] weapon.mainhand minecraft:stone_sword{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword" }}] weapon.mainhand minecraft:golden_sword{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"   }}] weapon.mainhand minecraft:iron_sword{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] weapon.mainhand minecraft:diamond_sword{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"    }}] weapon.mainhand minecraft:leather_helmet{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] weapon.mainhand minecraft:leather_chestplate{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"  }}] weapon.mainhand minecraft:leather_leggings{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots"     }}] weapon.mainhand minecraft:leather_boots{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"    }}] weapon.mainhand minecraft:chainmail_helmet{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] weapon.mainhand minecraft:chainmail_chestplate{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"  }}] weapon.mainhand minecraft:chainmail_leggings{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"     }}] weapon.mainhand minecraft:chainmail_boots{Damage:0}
                                                                      
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"    }}] weapon.mainhand minecraft:golden_helmet{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}}] weapon.mainhand minecraft:golden_chestplate{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings"  }}] weapon.mainhand minecraft:golden_leggings{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots"     }}] weapon.mainhand minecraft:golden_boots{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"    }}] weapon.mainhand minecraft:iron_helmet{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] weapon.mainhand minecraft:iron_chestplate{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"  }}] weapon.mainhand minecraft:iron_leggings{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots"     }}] weapon.mainhand minecraft:iron_boots{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"    }}] weapon.mainhand minecraft:diamond_helmet{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] weapon.mainhand minecraft:diamond_chestplate{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"  }}] weapon.mainhand minecraft:diamond_leggings{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"     }}] weapon.mainhand minecraft:diamond_boots{Damage:0}

execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:bow"            }}] weapon.mainhand minecraft:bow{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:trident"        }}] weapon.mainhand minecraft:trident{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"    }}] weapon.mainhand minecraft:fishing_rod{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] weapon.mainhand minecraft:flint_and_steel{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:shears"         }}] weapon.mainhand minecraft:shears{Damage:0}
execute unless entity @s[nbt={SelectedItem:{tag:{}}}] run replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"  }}] weapon.mainhand minecraft:turtle_helmet{Damage:0}
