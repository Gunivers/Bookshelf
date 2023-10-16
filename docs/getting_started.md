---
html_theme.sidebar_secondary.remove: true
---

# 🚀 Getting Started

## 🔌Installation

::::{tab-set}
:::{tab-item} 📁 Install the datapack only

You can download the datapack on the Bookshelf Manager website:

```{button-link} https://bookshelf.gunivers.net
:align: center
:color: primary
:shadow:

🔖 Bookshelf Manager
```

Once you have the datapack, simply drop it in the "datapacks" folder in your world's files. Then, in game, use `/reload` to load the datapack.

```{admonition} You can take only what you need!
:class: note

As it is a big project with a lot of things included, you probably don't need everything. That's why we propose you to download it from the [Bookshelf Manager](https://bookshelf.gunivers.net). Moreover, some modules can be heavy, such as the `bs.block` or `bs.item` that contain search trees. If you download them, the reload can take some time. If you edit the datapack, be sure to compress it in a zip file before uploading it somewhere. In the other cases, the search trees will slow down the upload due to thousands of little files (minecraft limitations oblige).
```

:::
:::{tab-item} 🌍 Install the Minecraft world

```{admonition} Coming soon!
:class: note

A clean installation process is coming soon.

For now, you have to download the content of the Github repository and put it in the "map" folder.<br>This repo contain all the modules of the lib so it's heavy.<br>For this reason, we recommand you to go on `play.gunivers.net`, where the map is already hosted.
```

:::
:::{tab-item} 🖇️ Related library

Bookshelf is a general library focus on accessibility, but there is other libraries that can be useful for you. Here is a list of forks of Bookshelf that have a different purpose and other libraries that might interest you:

```{admonition} This section is empty :/
:class: important

You know a cool minecraft library? Share it with us on our [Discord server](https://discord.gg/E8qq6tN) to let us add it here!

```

:::
::::

```{admonition} Allow cheats / Enable command-blocks
:class: important

Be sure that "cheats" are enabled if you play in local. Or, if you are on a server, be sure that `enable-command-block` is set on `true` in you `server.properties` file.
```

## 👶 First steps

Now the Gunivers-Lib is installed on your map (or once you are on the sandbox map), let's start to make some basic stuff to understand how the Gunivers-Lib work!

First, let's test if the Gunivers-Lib is correctly installed. To do so, enter the following command in your chat:

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

<div align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>

<script src="https://giscus.app/client.js"
        data-repo="Gunivers/Glibs"
        data-repo-id="R_kgDOHQjqYg"
        data-category="Documentation"
        data-category-id="DIC_kwDOHQjqYs4CUQpy"
        data-mapping="title"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="bottom"
        data-theme="light"
        data-lang="fr"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>
