# 👋 Getting Started

## 🔌Installation

| Install the datapack only | Install the sandbox map |
| --- | --- |
| 1. Go on [Glib Manager](http://bs.gunivers.net)<br>2. Select the version you want (recommanded to use the last one)<br>3. On the right panel, select the modules you want to use. You can check the modules' content in the [Documentation](https://glib-core.readthedocs.io)<br>4. Click on the "Download" button<br>5. Put the zip in the "datapacks" folder that you can find in your map folder.<br>6. In game, use `/reload` to load the datapack.| A clean installation process is coming soon.<br>For now, you have to download the content of the Github repository and put it in the "map" folder.<br>This repo contain all the modules of the lib so it's heavy.<br>For this reason, we recommand you to go on `play.gunivers.net`, where the map is already hosted. | 

⚠️ **Be sure that "cheats" are enabled**. Or, if you are on a server, be sure that `enable-command-block` is set on `true` in you `server.properties` file.

⚠️ **Some modules can be heavy**. Like the `bs.block` or `bs.item` that contain search trees. If you download them, the reload can take some time. If you edit the datapack, be sure to compress it in a zip file before uploading it somewhere. In the other cases, the search trees will slow down the upload due to thousands of little files.

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