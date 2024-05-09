---
html_theme.sidebar_secondary.remove: true
---

# 🕵️ Debug

## 📄 Logging

Bookshelf offers a logging module designed to centralize and streamline log management. For more details on this feature, refer to the [log module documentation](project:../modules/log.md).

## 🧪 Unit tests

Tests are an integral part of any software development process. They help ensure the correctness of your code and can save you from potential bugs in the future. In this project, we use a Minecraft fabric mod made by misode for testing.

Each function file is a unique test that should be located inside the `tests` folder, at the root of each module.

**✍️ Writing Tests**

When writing tests, make sure to clearly define what you are testing and what the expected outcome is. It's also a good idea to include edge cases to ensure your code can handle all possible inputs.

**⚙️ Running Tests**

To run the tests, you have two options:

1. **Headless Mode**: We provide a small script inside the notebook that allows you to run the tests headlessly, without having to open the game. This is a more convenient option for continuous integration environments.

2. **In-Game**: Download and install the Minecraft fabric mod. Once that's done, you can run the tests using the test command in Minecraft.

For more information on how to write and run tests, you can refer to the misode's [packtest repository](https://github.com/misode/packtest).
