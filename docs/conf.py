import os
import pydata_sphinx_theme

# Project information ---------------------------------------------------------

project = 'Bookshelf'
copyright = '2023, Gunivers'
author = 'Gunivers'
html_favicon = "_static/logo-bookshelf.png"

# -- General configuration ----------------------------------------------------

extensions = [
    'myst_parser',
    'sphinx_design',
    'sphinx_togglebutton',
    'sphinx_copybutton',
]
myst_heading_anchors = 6
templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# Version switcher ------------------------------------------------------------

# Define the json_url for our version switcher.
json_url = "https://bookshelf.docs.gunivers.net/en/latest/_static/switcher.json"

json_url = "_static/switcher.json"
version_match = os.environ.get("READTHEDOCS_VERSION")
if not version_match or version_match.isdigit():
    version_match = "latest"
    json_url = "_static/switcher.json"

# Options for HTML output -----------------------------------------------------

html_theme = 'pydata_sphinx_theme'

# html_css_files = [
#     'credits.css',
# ]

html_context = {
    "github_user": "Gunivers",
    "github_repo": "Bookshelf",
    "github_version": "master",
    "doc_path": "docs",
}

html_theme_options = {
    "github_url": "https://github.com/Gunivers/Glibs",
    "use_edit_page_button": True,
    "announcement": "⚠️ You are reading a doc of an undergoing development version. Information can be out of date and/or change at any time. ⚠️",
    "logo": {
        "image_dark": "_static/logo-bookshelf.png",
        "text": "Bookshelf",  # Uncomment to try text with logo
    },
    "switcher": {
        "json_url": json_url,
        "version_match": version_match,
    },
    "navbar_center": ["version-switcher", "navbar-nav"],
    "icon_links": [
        {
            "name": "Download",
            "url": "https://glib.gunivers.net/fr",
            "icon": "fa fa-download",
        },
        {
            "name": "Support us",
            "url": "https://utip.io/gunivers",
            "icon": "fa fa-heart",
        },
        {
            "name": "Gunivers",
            "url": "https://gunivers.net",
            "icon": "_static/logo-gunivers.png",
            "type": "local",
        },
        {
            "name": "Discord server",
            "url": "https://discord.gg/E8qq6tN",
            "icon": "_static/logo-discord.png",
            "type": "local",
        },
    ]
}

html_logo = "_static/logo-bookshelf.png"

html_static_path = ['_static']

myst_enable_extensions = [
    "amsmath",
    "colon_fence",
    "deflist",
    "dollarmath",
    "fieldlist",
    "html_admonition",
    "html_image",
    "linkify",
    "replacements",
    "smartquotes",
    "strikethrough",
    "substitution",
    "tasklist",
]