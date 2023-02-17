# ❤️ Health

``bs.health:``: Management by scoreboard of the life of an entity.

## Safe kill

`safe_kill`: Allows to cleanly delete an entity. This function erases the scores of the entity and teleports it to layer 0 before killing it.

* Players cannot be killed
* Entities with the tag `bs.permanent` cannot be killed
* It is recommended to put the `bs.permanent` tag to all decorative entities (arrays, item frames etc ...)

*Example:*

Kill all zombies:

```
# Once
execute as @e[type=zombie] run function bs.health:safe_kill
```

## Time to live

`time_to_live`: Allows to define the time of life of the entities.

* By default, this time is 10 seconds (= 200 ticks)
* The entity will live before being applied the end of life action (default: function bs.health:safe_kill).
* Before being applied the end of life action, the entity will receive the tag ``bs.ttl.timeOut`` during 1 tick
* You can change each of the default values by opening the file and going to the "CONFIG" section.

*Example:*

Give the Creepers a 10 second life time:

```
# At each tick
execute as @e[type=creeper] run function bs.health:time_to_live
```

Give a time to live of 20 seconds to the Cow:

```
# At least once
scoreboard players set @e[type=cow,tag=bs.ttl.default] bs.ttl 400
# At each tick
execute as @e[type=cow] run function bs:time_to_live
```

Give an explosion effect to Creepers at the end of their life

```
# At each tick
execute as @e[type=creeper] run function bs.health:time_to_live
execute as @e[tag=bs.ttl.timeOut] at @s run playsound minecraft:entity.generic.explode master @a
execute as @e[tag=bs.ttl.timeOut] at @s run article minecraft:explosion_emitter ~ ~ ~
```

```{warning}

If the TTL function is called twice on the same entity, its
lifetime will decrease twice as fast.
```

---

# 💬 Did it help you?

Feel free to leave your questions and feedbacks below!

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