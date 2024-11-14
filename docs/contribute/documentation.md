# 📝 Documentation

Bookshelf aims to simplify datapack development and make it accessible. We’ve worked hard to create a comprehensive documentation website and ask that every new feature be documented properly.

---

## ⚙️ Install the required tools

Bookshelf's documentation requires Python. You don’t need to write code in Python, but you’ll need it to build the docs locally.

1. Install Python 3.12 or higher from the [Python website](https://www.python.org/downloads/).
2. Navigate to the `/docs` folder and open a terminal (or Powershell if you are on Windows).
3. Run this command to install the required dependencies:

```shell
pip install -r requirements.txt -U
```

This will install all necessary dependencies, including [Sphinx](https://www.sphinx-doc.org/en/master/) and [Myst Parser](https://myst-parser.readthedocs.io/en/latest/intro.html), which are used to generate the documentation.

---

## ✍️ Write the documentation

The documentation is written in Markdown, extended with Myst Parser. You can view the [Myst Parser documentation here](https://myst-parser.readthedocs.io/en/latest/intro.html). To add or update documentation, simply follow the structure of existing pages and features. All images are stored in the `/docs/_imgs` folder.

---

## 🔨 Build the documentation

To verify that your documentation changes work as expected, you can build and view it locally on your computer.
1. Navigate to the `/docs` folder.
2. Open a terminal (or Powershell if you are on Windows).
3. Choose one of the following options to build and view the documentation:

### Option 1: Build Documentation

```shell
make html
```

This command will generate the documentation, which you can find in the `/docs/_build/html` folder.

### Option 2: Build with Hot Reload

```shell
make livehtml
```

This option will also generate the documentation but will allow you to view it in your browser at `http://127.0.0.1:8000` with hot reloading, so any changes you make will automatically update in the browser.
