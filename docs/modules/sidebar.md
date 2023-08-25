# 📰 Sidebar

**`#bs.sidebar:help`**

Create beautiful and dynamic sidebar using the scoreboard.

```{admonition} Complex module
:class: warning

This module creates various teams and scoreholders in order to work. Do not try to remove a sidebar by yourself. Always use the provided functions `destroy` and `reset`.
```

---

## 🔧 Functions

You can find below all the function available in this module.

---

### Create

**`#bs.sidebar:create`**

Create and register a new sidebar.

Inputs

:   (macro variable) `id`: string
    : The unique id (must only contain lowercase letters, numbers, dashes, underscores or dots).

    (macro variable) `name`: string
    : The displayed name. Format: valid JSON text component.

    (macro variable) `contents`: array
    : The displayed lines. Each entry must be a valid JSON text component.


Example

:   Create then display a new sidebar.
    ```
    # Register a new sidebar
    function #bs.sidebar:create { \
        id:"my_guessing_game", \
        name:'{"text":"Guess my name"}', \
        contents: [ \
            '{"text":" Clues:","color":"gold","bold":true}', \
            '{"text":"  • I gave my name to a famous test"}', \
            '{"text":"  • I am a pioneer of computer science and AI"}', \
            '[{"text":" My name is: "},{"score":{"objective":"enigma","name":"VHVyaW5n"}}]', \
        ], \
    }

    # Display the sidebar (objective: bs.sidebar.<id>)
    scoreboard objectives setdisplay sidebar bs.sidebar.my_guessing_game
    ```

> **Credits**: Aksiome

---

### Refresh

**`#bs.sidebar:refresh`**

Update dynamic parts of the sidebar.

Inputs

:   (macro variable) `id`: string
    : The unique id (must only contain lowercase letters, numbers, dashes, underscores or dots).

Example

:   Refresh a sidebar.
    ```mcfunction
    function #bs.sidebar:refresh {id:"my_guessing_game"}
    ```

> **Credits**: Aksiome

---

### Reset

**`#bs.sidebar:reset`**

Safely remove all sidebars. When possible prefer this method over `destroy`.


Example

:   Delete every sidebar.
    ```mcfunction
    function #bs.sidebar:reset
    ```

> **Credits**: Aksiome

---

### Destroy

**`#bs.sidebar:destroy`**

Safely remove a sidebar with all associated scores and teams.

Inputs

:   (macro variable) `id`: string
    : The unique id (must only contain lowercase letters, numbers, dashes, underscores or dots).

Example

:   Delete a single sidebar.
    ```mcfunction
    function #bs.sidebar:destroy {id:"my_guessing_game"}
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
