import os

# -- Project information -----------------------------------------------------

project = 'Bookshelf'
copyright = '2023, Gunivers'
author = 'Gunivers'


# -- General configuration ---------------------------------------------------

extensions = [
  'myst_parser',
  'sphinx_design',
  'sphinx_togglebutton',
  'sphinx_copybutton',
]

exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
templates_path = ['_templates']


# -- MyST options ------------------------------------------------------------

myst_heading_anchors = 6
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


# -- Options for HTML output -------------------------------------------------

html_theme = 'pydata_sphinx_theme'
html_logo = "_static/logo-bookshelf.png"
html_favicon = "_static/logo-bookshelf.png"

html_static_path = ['_static']
html_css_files = ['bookshelf.css']
html_js_files = ['bookshelf.js']

html_context = {
    "github_user": "Gunivers",
    "github_repo": "Bookshelf",
    "github_version": "master",
    "doc_path": "docs",
}

json_url = "https://bookshelf.docs.gunivers.net/en/latest/_static/switcher.json"
version_match = os.environ.get("READTHEDOCS_VERSION")

if not version_match or version_match.isdigit():
    version_match = "latest"

html_theme_options = {
    "announcement": "⚠️ You are reading a doc of an undergoing development version. Information can be out of date and/or change at any time. ⚠️",
    "navbar_start": ["navbar-logo", "version-switcher"],
    "navbar_persistent": ["search-button"],
    "use_edit_page_button": True,
    "header_links_before_dropdown": 6,
    "logo": {
        "text": "Bookshelf",
        "image_dark": "_static/logo-bookshelf.png",
    },
    "switcher": {
        "json_url": json_url,
        "version_match": version_match,
    },
    "icon_links": [
        {"name": "Download", "url": "https://glib.gunivers.net/", "icon": "fa-solid fa-download"},
        {"name": "GitHub", "url": "https://github.com/Gunivers/Bookshelf", "icon": "fa-brands fa-github"},
        {"name": "Support us", "url": "https://gunivers.net/soutenir/", "icon": "fa-solid fa-heart"},
        {"name": "Discord server", "url": "https://discord.gg/E8qq6tN", "icon": "fa-brands fa-discord"},
        {"name": "Gunivers", "url": "https://gunivers.net", "icon": "_static/logo-gunivers.png", "type": "local"},
    ],
}
