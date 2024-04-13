import block
import sys

if __name__ == "__main__":
    try:
        block.run(*sys.argv[1:])
    except TypeError as e:
        raise TypeError("Usage: python block.py <minecraft_version> <datapacks_path> [assets_path]") from e
