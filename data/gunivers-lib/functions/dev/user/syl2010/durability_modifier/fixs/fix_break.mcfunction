
# NAME: Durability Modifier - Item break fix
# PATH: gunivers-lib:dev/User/Syl2010/DurabilityModifier/fixs/fix_break

# AUTHOR: Syl2010

# VERSION: 1.0
# MINECRAFT: 1.13.1

# CHILD OF: gunivers-lib:dev/User/Syl2010/DurabilityModifier/apply_damage

# REQUIEREMENTS:
# - gunivers-lib:utils/import/vars (MCfunction)

# INPUT:
# - item endommageable tenu en main (item)

# NOTE: 
# Permet de casser (détruire) un item endommagée tenu dans la main principal du joueur (@s) si ses dommages dépassent sa durabilité 
# (cas possible si l'item en question est modifié par des commandes)

# CODE:
#____________________________________________________________________________________________________

execute store result score @s var5 run data get entity @s SelectedItem.tag.Damage

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe" }},scores={var5=59..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"  }},scores={var5=131..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe" }},scores={var5=32..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"   }},scores={var5=250..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}},scores={var5=1561..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel" }},scores={var5=59..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"  }},scores={var5=131..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel" }},scores={var5=32..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"   }},scores={var5=250..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}},scores={var5=1561..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe" }},scores={var5=59..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"  }},scores={var5=131..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe" }},scores={var5=32..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"   }},scores={var5=250..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},scores={var5=1561..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe" }},scores={var5=59..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"  }},scores={var5=131..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe" }},scores={var5=32..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"   }},scores={var5=250..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},scores={var5=1561..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword" }},scores={var5=59..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"  }},scores={var5=131..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword" }},scores={var5=32..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"   }},scores={var5=250..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}},scores={var5=1561..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"    }},scores={var5=55..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}},scores={var5=80..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"  }},scores={var5=75..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots"     }},scores={var5=65..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"    }},scores={var5=165..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}},scores={var5=240..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"  }},scores={var5=225..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"     }},scores={var5=195..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"    }},scores={var5=77..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}},scores={var5=112..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings"  }},scores={var5=105..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots"     }},scores={var5=91..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"    }},scores={var5=165..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}},scores={var5=240..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"  }},scores={var5=225..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots"     }},scores={var5=195..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"    }},scores={var5=363..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}},scores={var5=528..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"  }},scores={var5=495..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"     }},scores={var5=429..}] run tag @s add break_item

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"            }},scores={var5=384..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"        }},scores={var5=250..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"    }},scores={var5=64..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}},scores={var5=64..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"         }},scores={var5=238..}] run tag @s add break_item
execute if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"  }},scores={var5=275..}] run tag @s add break_item


execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe" }},tag=break_item] anchored eyes run particle minecraft:item wooden_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"  }},tag=break_item] anchored eyes run particle minecraft:item stone_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe" }},tag=break_item] anchored eyes run particle minecraft:item golden_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"   }},tag=break_item] anchored eyes run particle minecraft:item iron_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}},tag=break_item] anchored eyes run particle minecraft:item diamond_axe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel" }},tag=break_item] anchored eyes run particle minecraft:item wooden_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"  }},tag=break_item] anchored eyes run particle minecraft:item stone_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel" }},tag=break_item] anchored eyes run particle minecraft:item golden_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"   }},tag=break_item] anchored eyes run particle minecraft:item iron_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}},tag=break_item] anchored eyes run particle minecraft:item diamond_shovel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe" }},tag=break_item] anchored eyes run particle minecraft:item wooden_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"  }},tag=break_item] anchored eyes run particle minecraft:item stone_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe" }},tag=break_item] anchored eyes run particle minecraft:item golden_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"   }},tag=break_item] anchored eyes run particle minecraft:item iron_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}},tag=break_item] anchored eyes run particle minecraft:item diamond_pickaxe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe" }},tag=break_item] anchored eyes run particle minecraft:item wooden_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"  }},tag=break_item] anchored eyes run particle minecraft:item stone_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe" }},tag=break_item] anchored eyes run particle minecraft:item golden_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"   }},tag=break_item] anchored eyes run particle minecraft:item iron_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}},tag=break_item] anchored eyes run particle minecraft:item diamond_hoe ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword" }},tag=break_item] anchored eyes run particle minecraft:item wooden_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"  }},tag=break_item] anchored eyes run particle minecraft:item stone_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword" }},tag=break_item] anchored eyes run particle minecraft:item golden_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"   }},tag=break_item] anchored eyes run particle minecraft:item iron_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}},tag=break_item] anchored eyes run particle minecraft:item diamond_sword ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet"    }},tag=break_item] anchored eyes run particle minecraft:item leather_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}},tag=break_item] anchored eyes run particle minecraft:item leather_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings"  }},tag=break_item] anchored eyes run particle minecraft:item leather_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots"     }},tag=break_item] anchored eyes run particle minecraft:item leather_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_helmet"    }},tag=break_item] anchored eyes run particle minecraft:item chainmail_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}},tag=break_item] anchored eyes run particle minecraft:item chainmail_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_leggings"  }},tag=break_item] anchored eyes run particle minecraft:item chainmail_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:chainmail_boots"     }},tag=break_item] anchored eyes run particle minecraft:item chainmail_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet"    }},tag=break_item] anchored eyes run particle minecraft:item golden_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate"}},tag=break_item] anchored eyes run particle minecraft:item golden_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings"  }},tag=break_item] anchored eyes run particle minecraft:item golden_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots"     }},tag=break_item] anchored eyes run particle minecraft:item golden_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet"    }},tag=break_item] anchored eyes run particle minecraft:item iron_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}},tag=break_item] anchored eyes run particle minecraft:item iron_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"  }},tag=break_item] anchored eyes run particle minecraft:item iron_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots"     }},tag=break_item] anchored eyes run particle minecraft:item iron_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet"    }},tag=break_item] anchored eyes run particle minecraft:item diamond_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}},tag=break_item] anchored eyes run particle minecraft:item diamond_chestplate ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"  }},tag=break_item] anchored eyes run particle minecraft:item diamond_leggings ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"     }},tag=break_item] anchored eyes run particle minecraft:item diamond_boots ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow"            }},tag=break_item] anchored eyes run particle minecraft:item bow ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"        }},tag=break_item] anchored eyes run particle minecraft:item trident ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:fishing_rod"    }},tag=break_item] anchored eyes run particle minecraft:item fishing_rod ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}},tag=break_item] anchored eyes run particle minecraft:item flint_and_steel ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:shears"         }},tag=break_item] anchored eyes run particle minecraft:item shears ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_helmet"  }},tag=break_item] anchored eyes run particle minecraft:item turtle_helmet ^-0.2 ^-0.20 ^0.3 0.1 0.1 0.1 0.05 8 normal @s


execute if entity @s[tag=break_item] run replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=break_item] run playsound minecraft:item.shield.break player @a ~ ~ ~
tag @s[tag=break_item] remove break_item
