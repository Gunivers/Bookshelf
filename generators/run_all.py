import os

current_path = os.path.split(os.path.realpath(__file__))[0]

os.system(f"python {current_path}/block_converter/main.py")