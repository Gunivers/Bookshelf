from .toolkit.logger import step
from .toolkit.metadata import get_feature_meta, get_module_meta
from .toolkit.helpers import MODULES_DIR


def main():
    """
    Main entry point for validating module and feature metadata files.
    """
    with step('⏳ Checking module metadata files…') as module_logger:
        for module in MODULES_DIR.iterdir():
            get_module_meta(module / 'module.json', module_logger)

    with step('⏳ Checking feature metadata files…') as feature_logger:
        for feature in MODULES_DIR.rglob('*.json'):
            get_feature_meta(feature, feature_logger)

    exit(module_logger.errors + feature_logger.errors)
