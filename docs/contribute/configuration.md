---
html_theme.sidebar_secondary.remove: true
---

# 🔧 Configuration

Some functions require parameters that are usually fixed. However, the function can manage other parameters and the user, in a particular case, may need to change this parameter. So we call them configuration parameters, which are parameters with a default value. These values are initialized in the "CONFIG" part.

As you can see in several files, some lines in the configuration part call the "bs.config.override" tag. It allows you not to rewrite the score values (or other) if they have been voluntarily set to another value. So, if you want to use something else than the default value for a function, add the "bs.config.override" tag before executing the function, then remove this tag immediately afterwards.