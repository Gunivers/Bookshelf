# ❓ FAQ

## Can I use the lib in my map/server project?

Of course! The lib is made for you to use it in your projects!

A mention of Bookshelf and/or Gunivers in a message of thanks is always welcome. Contribute to make the open-source world a respectful place! 🤗

Also, don't hesitate to share us your creation in order to let us know how you use the lib (and let us give you some additional visibility to your project)! 😍

## What about copyrights?

The lib is under a license that allows you to use and modify it for your personal use and distribute a map or a datapack that uses the lib without any problem as long as you don't make money on it.

## Is this lib compatible with other datapacks?

Yes! The lib respond to constraints that allow it to be compatible with most of datapacks. All Bookshelf scores, tags namespace and others start with `bs.` and use fakeplayers when it's possible to avoid conflicts.

## Is the lib heavy?

### CPU usage

By principle, a lib is just a set of tools that you can call. If you don't, this set of tool will do nothing by it's own. It will not impact the CPU performances in any way if you don't use it. This impact will depend of the functions you will call and the frequency of these calls. The documentation contain warning and performance tips below functions that can be heavy.

### Memory usage

In term of memory usage, Minecraft parse the entire datapack when the game load, so the number of files doesn't matter and instructions are very very very very light in memory so you can have a lot of them without seeing a big diffference in RAM usage. Moreover, the lib is fully modulare, allowing you to only takes modules that you will use.

### Disk usage

The lib is compressed in a zip file so it is only few Mb. Still to big for you? No problem, remember that the entire lib is modular, so you can select only the modules you will use. Also, you should download the lib from github releases or Bookshelf manager, not directly via the repository. In fact,  there is an entire map, documentation and generators in the reporistory that you don't need to download if you just want to use the lib. Releases et Bookshelf manager are made to give you only usefull files.

## Are the functions optimized?

The lib is mainly focused on accessibility and multi-purpose usage. There is then a lot of things that are considered which can sometimes lead to choices that are not the most optimized in a given contexte, but that better fit the lib objectives. However, as long as there is no dilemma between accessibility and optimization, the lib will always try to be as optimized as possible.

Also, we are always open to suggestions and pull requests that can improve the lib. If you have an idea to improve the lib (optimization, accessibility or anything else), don't hesitate to share it with us!


```{button-link} https://discord.gg/E8qq6tN
:color: primary
:shadow:
:align: center

Another questions? Join us on Discord!
```

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