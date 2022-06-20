# __________________________________________________
# IMPORTS

import src.minecraftData as minecraftData
import os
import sys
import yaml
import pathlib

def setup(version_path):

  """
    ___       _ _   _       _ _          _   _             
   |_ _|_ __ (_) |_(_) __ _| (_)______ _| |_(_) ___  _ __  
    | || '_ \| | __| |/ _` | | |_  / _` | __| |/ _ \| '_ \ 
    | || | | | | |_| | (_| | | |/ / (_| | |_| | (_) | | | |
   |___|_| |_|_|\__|_|\__,_|_|_/___\__,_|\__|_|\___/|_| |_|         

  """

  blockListFolder = f"{version_path}/data/blocks/"
  blockListFile   = f"{version_path}/generated/blocks.json"
  itemListFile    = f"{version_path}/data/registries/item.txt"

  if not os.path.exists(f"./block_converter/lists/"): os.makedirs(f"./block_converter/lists/")

  # """
  #    ____ _ _     ____                   
  #   / ___(_) |_  / ___| _   _ _ __   ___ 
  #  | |  _| | __| \___ \| | | | '_ \ / __|
  #  | |_| | | |_   ___) | |_| | | | | (__ 
  #   \____|_|\__| |____/ \__, |_| |_|\___|
  #                       |___/                  
  # """

  # if os.path.isdir(f"{current_path}/Minecraft-generated-data/.git/"):
  #     print("⌛ Pulling Minecraft Data from PixiGeko's repo...")
  #     os.system(f"cd {current_path}/Minecraft-generated-data/ && git pull && cd ../")
  # else:
  #     print(f"⌛ Cloning Minecraft Data from PixiGeko's repo in {current_path}/Minecraft-generated-data/...")
  #     os.system(f"cd {current_path} && git clone https://github.com/PixiGeko/Minecraft-generated-data.git")

  """
    ____      _   _   _               _     _     _       
   / ___| ___| |_| |_(_)_ __   __ _  | |   (_)___| |_ ___ 
  | |  _ / _ \ __| __| | '_ \ / _` | | |   | / __| __/ __|
  | |_| |  __/ |_| |_| | | | | (_| | | |___| \__ \ |_\__ \
   \____|\___|\__|\__|_|_| |_|\__, | |_____|_|___/\__|___/
                              |___/                       
  """

  print("🔎 Discovering blocks...")
  itemList = minecraftData.getBlockList(blockListFile)
  print("🔎 Discovering items...")
  blockList = minecraftData.getItemList(itemListFile)

  minecraftData.associate()