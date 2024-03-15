import os

COMMAND_TEMPLATE = r"""execute if block ~ ~ ~ #bs.block:has_state[%property%=%value%] run data modify storage bs:out block.iterable_properties[{name:"%property%"}].options[{value:"%value%"}].selected set value 1b"""

def gen_registry_files(groups, module_path):

    print("⚙️ Generating registry functions")

    for group, data in enumerate(groups[1:]):
        commands = []
        for property, values in data["properties"].items():
            commands.append("\n".join([
                COMMAND_TEMPLATE
                    .replace("%property%", property)
                    .replace("%value%", value)
                for value in values
            ]))

        with open(os.path.join(module_path, f"functions/get/registry/{group+1}.mcfunction"), "w") as file:
            file.write("# This file was automatically generated, do not edit it\n")
            file.write("\n".join(commands))

    print("✅ Done!")
