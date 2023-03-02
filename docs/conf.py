# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# import os
# import sys
# sys.path.insert(0, os.path.abspath('.'))


# -- Project information -----------------------------------------------------

project = 'Bookshelf'
copyright = '2023, Gunivers'
author = 'Gunivers'

# The full version, including alpha/beta/rc tags


# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'myst_parser',
    'sphinx_design',
    'sphinx_togglebutton'
]
myst_heading_anchors = 6

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
#html_theme = 'alabaster'
html_theme = 'sphinx_book_theme'

html_theme_options = {
    "home_page_in_toc": False,
    "github_url": "https://github.com/Gunivers/Glibs",
    "repository_url": "https://github.com/Gunivers/Glibs",
    "repository_branch": "master",
    "path_to_docs": "docs",
    "use_repository_button": True,
    "use_edit_page_button": True,
    "announcement": "⚠️ You are reading a doc of an undergoing development version. Information can be out of date and/or change at any time. ⚠️",
    "logo": {
        "image_dark": "img/logo-bookshelf.png",
        "text": "Bookshelf",  # Uncomment to try text with logo
    },
    "icon_links": [
        {
            "name": "Gunivers",
            "url": "https://gunivers.net",
            "icon": "img/logo-gunivers.png",
            "type": "local",
        },
        {
            "name": "Discord server",
            "url": "https://discord.gg/E8qq6tN",
            "icon": "img/logo-discord.png",
            "type": "local",
        },
        {
            "name": "Download",
            "url": "https://glib.gunivers.net/fr",
            "icon": "fa fa-download",
        },
    ]
}

html_logo = "img/logo-bookshelf.png"

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']


# html_theme_options = {
#     'analytics_id': 'G-XXXXXXXXXX',  #  Provided by Google in your dashboard
#     'analytics_anonymize_ip': False,
#     'logo_only': False,
#     'display_version': True,
#     'prev_next_buttons_location': 'bottom',
#     'style_external_links': False,
#     'vcs_pageview_mode': '',
#     'style_nav_header_background': 'white',
#     # Toc options
#     'collapse_navigation': True,
#     'sticky_navigation': True,
#     'navigation_depth': 4,
#     'includehidden': True,
#     'titles_only': False
# }

'''
html_sidebars = {
   '**': ['globaltoc.html', 'sourcelink.html', 'searchbox.html']
}

'''

myst_enable_extensions = [
    "amsmath",
    "colon_fence",
    "deflist",
    "dollarmath",
    "fieldlist",
    "html_admonition",
    "html_image",
    #"linkify",
    "replacements",
    "smartquotes",
    "strikethrough",
    "substitution",
    "tasklist",
]