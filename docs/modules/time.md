# ⌚ Time

**`#bs.time:help`**

This module allow to get information about the system time.

##  🔧 Functions

You can find below all the function available in this module.

---

###  System time

**`#bs.time:get`**

Get the system time corresponding to the real hours, minutes and seconds.

Outputs

:  (score) `$time.hours bs.out`
   : The real hours

:  (score) `$time.minutes bs.out`
   : The real minutes

:  (score) `$time.seconds bs.out`
   : The real seconds

:  (storage) `bs:out time.hours`: int
   : The real hours

:  (storage) `bs:out time.minutes`: int
   : The real minutes

:  (storage) `bs:out time.seconds`: int
   : The real seconds

:  (storage) `bs:out time.string`: string
   : A formatted string using the following format: hh:mm:ss

Example

:  The moment we all dread.
   ```mcfunction
   function #bs.time:get

   tellraw @a [{"text":"It is "},{"score":{"name":"$time.hours","objective":"bs.out"}},{"text":"h. Time to wake up!"}]
   ```

> **Credits**: Aksiome

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
