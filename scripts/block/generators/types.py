import os

ITEMS_MAP = {}

TYPE_TEMPLATE = r"""{id:%id%,group:%group%,type:"%type%",item:"%item%"}"""
COMMAND_TEMPLATE = r"""data modify storage bs:const block set value [%blocks%]"""


def gen_types_file(blocks, module_path):

    print("⚙️ Generating types_table.mcfunction")

    blocks = [
        TYPE_TEMPLATE
            .replace("%id%", str(block['id']))
            .replace("%group%", str(block['group']))
            .replace("%type%", block['type'])
            .replace("%item%", ITEMS_MAP.get(block['type'], block['type']))
        for block in blocks
    ]

    with open(os.path.join(module_path, "functions/load/types_table.mcfunction"), "w") as file:
        file.write("# This file was automatically generated, do not edit it\n")
        file.write(COMMAND_TEMPLATE.replace("%blocks%", ",".join(blocks)))

    print("✅ Done!")
