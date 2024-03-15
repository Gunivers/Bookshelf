import os

STATE_TEMPLATE = r"""{name:"%property%",options:[%options%]}"""
OPTION_TEMPLATE = r"""{index:%index%,value:"%value%",state:"%property%=%value%,",property:{%property%:"%value%"}}"""
COMMAND_TEMPLATE = r"""data modify storage bs:const block[{group:%group%}].iterable_properties set value [%states%]"""


def gen_states_file(groups, module_path):

    print("⚙️ Generating states_table.mcfunction")

    commands = []
    for data in groups[1:]:
        states = []
        for property, values in data["properties"].items():
            while values[0] != data["default"][property]:
                values.append(values.pop(0))

            options = [
                OPTION_TEMPLATE.replace("%index%", str(index))
                    .replace("%value%", value)
                    .replace("%property%", property)
                for index, value in enumerate(values)
            ]

            states.append(STATE_TEMPLATE
                .replace("%property%", property)
                .replace("%options%", ",".join(options))
            )

        commands.append(COMMAND_TEMPLATE
            .replace("%group%", str(groups.index(data)))
            .replace("%states%", ",".join(states))
        )

    with open(os.path.join(module_path, "functions/load/states_table.mcfunction"), "w") as file:
        file.write("# This file was automatically generated, do not edit it\n")
        file.write("\n".join(commands))

    print("✅ Done!")
