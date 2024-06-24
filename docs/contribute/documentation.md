---
html_theme.sidebar_secondary.remove: true
---

# 📝 Documentation

The primary objective of Bookshelf is to streamline the datapack development process and ensure accessibility. To achieve this, it is crucial that the library is thoroughly documented.
We have dedicated significant effort to creating this comprehensive documentation website.
Moreover, we request that every new feature contribution be accompanied by appropriate documentation.

This page aims to give some information on how to contribute to the documentation itself.

## ⚙️ Install the required tools

Bookshelf documentation requires Python to be built.
If you are not familiar with this programming language, don't worry, you don't have to use it.
But to be able to build locally the documentation locally, you will still need to install it.
For that, you can download it on the [Python website](https://www.python.org/downloads/).
We recommend the Python version 3.12.
After having installed Python and cloned the Bookshelf repository, go on the `/docs` folder and open a terminal (or Powershell if you are on Windows).
Then, execute this command:

```shell
pip install -r requirements.txt
```

This command will install all the required dependencies, especially [Sphinx](https://www.sphinx-doc.org/en/master/) and [Myst Parser](https://myst-parser.readthedocs.io/en/latest/intro.html) that enable the generation of the documentation website from the different Markdown files.

## ✍️ Write the documentation

The documentation is mainly written in Markdown, extended by Myst Parser.
You can find the documentation of Myst Parser [here](https://myst-parser.readthedocs.io/en/latest/intro.html).
To write a new documentation page or to document a new feature, you can simply take as example the existing pages/features.

All the images are stored into the `/docs/_imgs` folder.

## 🔨 Build the documentation locally

To verify on your computer if your contribution to the documentation works correctly, you can build the documentation locally.
To do this, go to the `/docs` folder and open a terminal (or Powershell if you are on Windows).
Then, execute this command:

```shell
# For Windows:
./make html
# For other OSs:
make html
```

You can now find the built documentation inside the `/docs/_build/html` folder.
Open the `index.html` with your browser to see your changes.
