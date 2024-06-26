---
html_theme.sidebar_secondary.remove: true
---

# 📝 Documentation

The primary objective of Bookshelf is to streamline the datapack development process and ensure accessibility. To achieve this, it is crucial that the library is thoroughly documented.
We have dedicated significant effort to creating this comprehensive documentation website.
Moreover, we request that every new feature contribution be accompanied by appropriate documentation.

This page aims to give some information on how to contribute to the documentation itself.

## ⚙️ Install the required tools

Bookshelf documentation requires Python.
If you are not familiar with this programming language, don't worry, you don't have to use it.
But to be able to build the documentation locally, you still need to install it.
For that, you can download version 3.12 or higher on the [Python website](https://www.python.org/downloads/).
After having installed Python and cloned the Bookshelf repository, navigate to the `/docs` folder and open a terminal (or Powershell if you are on Windows).
Then, execute this command:

```shell
pip install -r requirements.txt -U
```

This command will install all the required dependencies, especially [Sphinx](https://www.sphinx-doc.org/en/master/) and [Myst Parser](https://myst-parser.readthedocs.io/en/latest/intro.html) that enable the generation of the documentation website from the different Markdown files.

## ✍️ Write the documentation

The documentation is mainly written in Markdown, extended by Myst Parser.
You can find the documentation of Myst Parser [here](https://myst-parser.readthedocs.io/en/latest/intro.html).
To write a new documentation page or to document a new feature, you can simply take as example the existing pages/features.

All the images are stored into the `/docs/_imgs` folder.

## 🔨 Build the documentation locally

To ensure your documentation contribution works correctly, you can build and verify it locally on your computer.
To do this, navigate to the `/docs` folder and open a terminal (or Powershell if you are on Windows).
Then, execute this command:

```shell
# For Windows:
./make html
# For other OSs:
make html
```

You can now find the built documentation inside the `/docs/_build/html` folder.
Open the `index.html` with your browser to see your changes.
