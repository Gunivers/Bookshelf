---
html_theme.sidebar_secondary.remove: true
---

# 🚀 Quickstart

## 🔌Installation

Bookshelf is still in a development phase. There is no trivial install process yet. If you are not familliar with datapacks, feel free to come on our Discord, we will be pleased to help you installing and use the lib!

:::{button-link} https://discord.gg/AJwDCx5U8t
:align: center
:color: primary
:shadow:

💬 Come talk with us on Discord!
:::

```{admonition} 🤝 Help us improving the install process
:class: info

We are actively searching for web developers to make the new version of the Bookshelf Manager, which allow to easily download modules and there respective dependencies. For now, we already specified what the website should look like, you can [check this here](https://www.figma.com/file/kVAmQnmP5pWWzun0Iq2kBa/Bookshelf-Manager-V2.0-prod?type=design&node-id=0-1). If you are interested, please contact us on Discord!
```

If you think you can handle the installation process alone 💪😎, rendez-vous on the Github repository. Download it and then exctract what you want to put it in your project!

The repo contain the entire demo map (still work in progress) and 4 datapacks :
- **Bookshelf Dev**: contain utilities for developpers (such as the core, logs, unit tests etc.). It should be installed during the development phase of your project.
- **Bookshelf Examples**: contain easily-readable examples of systems that can be made with Bookshelf. It is mainly made to explore the files, not to be implemented in a project. Install it only if you want to see what they do to get familiar with the lib.
- **Bookshelf World**: contain the code used by the world itself. It is not made to be used directly.
- **Bookshelf**: contain all the usefull tools that you will use in your project. It is the only one that you should install keep in your final product. Bookshelf is also devided in modules, so you can only take the one you are planning to use. The modules are basically namespaces inside this datapack. Be carefull, some modules can partially depend on others. These dependencies are indicated in the doc.

```{admonition} You can take only what you need!
:class: note

As it is a big project with a lot of things included, you probably don't need everything. That's why we propose you to download it from the [Bookshelf Manager](https://bookshelf.gunivers.net). Moreover, some modules can be heavy, such as the `bs.block` or `bs.item` that contain search trees. If you download them, the reload can take some time. If you edit the datapack, be sure to compress it in a zip file before uploading it somewhere. In the other cases, the search trees will slow down the upload due to thousands of little files (minecraft limitations oblige).
```

```{admonition} Allow cheats / Enable command-blocks
:class: important

Be sure that "cheats" are enabled if you play in local. Or, if you are on a server, be sure that `enable-command-block` is set on `true` in you `server.properties` file.
```

## 👶 First steps

Now that Bookshelf is installed on your map (or once you are on the sandbox map), let's start to make some basic stuff to understand how it work!

First, let's test if Bookshelf is correctly installed. To do so, enter the following command in your chat:

```
/function bs:hello
```

If the Gunivers-Lib is well installed, you should see "Hello World!" in the chat. If it's not the case, verify that the cheat are enabled in your world (or command-blocks are enabled in the `server.properties` file if you are on a server).

Great! Now, let's play with funny things. Place a command-block in repreat mode and powered.

<div align="center">

![](https://gunivers.net/wp-content/uploads/2022/06/Command-block-repeat-1.png)

</div>

In this command block, you can enter the command of one of the following example system:

- **LGdir** : this system allow you to shoot lasers. To shoot, take a `carrot_on_a_stick` and right-click on it!
    ```
    function bs.example:lgdir
    ```
- **Drop to place** : this system allow you to place minecraft blocks by dropping the items instead of right clicking on it. Useless so essential!
    ```
    function bs.example:drop_to_place
    ```
- **Walk Trail** : this system create a trail where the players are walking. This trail is made of items corresponding to the block they are walking on.
    ```
    function bs.example:walk_trail
    ```


:::{note}
This section is in progress. If you have some ideas about how to improves the first steps with the Glibs, please share it on our [Discord server](https://discord.gg/E8qq6tN).
:::

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
