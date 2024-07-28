# 🕵️ Debug

Learn about Bookshelf's debugging tools, including unit tests, logging and var dumping.

---

## 📄 Logging

Bookshelf offers a logging module designed to centralize and streamline log management. For more details on this feature, refer to the [log module documentation](project:../modules/log.md).

---

## 🔬 Var dumping

Bookshelf offers a var dumper module designed to easily display a score or storage at any given time. For more details on this feature, refer to the [dump module documentation](project:../modules/dump.md).

---

## 🧪 Unit tests

Tests are an integral part of any software development process. They help ensure the correctness of your code and can save you from potential bugs in the future. In this project, we use a Minecraft fabric mod made by Misode called [PackTest](https://github.com/misode/packtest).

### ✍️ Writing tests

Each test is a `.mcfunction` file inside the `test` folder, at the root of each module.
When writing tests, make sure to clearly define what you are testing and what the expected outcome is. It's also a good idea to include edge cases to ensure your code can handle all possible inputs.

Each test must set the `@batch` directive to the name of the module. For example:

```mcfunction
# This is a test
# @batch <bs.my_module>
```

This setup ensures that tests are correctly scoped to their respective modules, providing a structured and isolated testing environment.

Additionally, each test folder should contain a `__boot__.mcfunction` file that initializes the testing environment. This file should set the `@beforebatch` directive, as shown below:

```mcfunction
# @batch <bs.my_module>
# @beforebatch function #<bs.my_module:load>
```

The purpose of these directives is to load only the relevant module, helping to identify any missing load instructions.


### ⚙️ Running tests

To run the tests, you have two options:

1. **Headless Mode**: We provide a small script inside the notebook that allows you to run the tests headlessly, without having to open the game. This is a more convenient option for continuous integration environments.

2. **In-Game**: Download and install the Minecraft fabric mod. Once that's done, you can run the tests using the test command in Minecraft.

For more information on how to write and run tests, you can refer to Misode's [PackTest repository](https://github.com/misode/packtest).
