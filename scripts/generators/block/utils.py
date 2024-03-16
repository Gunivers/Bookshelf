def render(value):
    """
    Recursively render values like dictionaries and lists as a string.
    """
    if isinstance(value, dict):
        return "{" + ",".join([key + ":" + render(val) for key, val in value.items()]) + "}"
    if isinstance(value, list):
        return "[" + ",".join([render(val) for val in value]) + "]"
    if isinstance(value, str):
        return '"' + value + '"'
    return str(value)


def write_file(file, lines):
    """
    Write multiple lines to a file.
    """
    with open(file, "w") as file:
        file.write("\n".join(lines))
