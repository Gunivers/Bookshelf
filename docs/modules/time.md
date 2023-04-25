# ⌚ Time

**`bs.time:_`**

THis module allow to get information about the system time.

##  🔧 Functions

###  System time

**`bs.time:get`**

Get the system time in 3 scores corresponding to the real hour, minute and second.

This function need to run first the following command:

```mcfunction
function bs.time:set
```

It will place a command block, a chest and an armor stand at the position of execution. It will then be used to the get the time.

Inputs

:   None

Outputs

:   (scores) `Heure Systime`
    : The real hour

    (scores) `Minute Systime`
    : The real minute

    (scores) `Seconde Systime`
    : The real second

Example

:   Get the system time:
    
    ```mcfunction
    # The first time
    function bs.time:set
    # Then, once every time you want to get the time
    function bs.time:get
    # Show the result
    scoreboard objectives setdisplay sidebar Systime
    ```

> **Credits**: RedCoal & Awhikax

```{admonition} Bug reported
:class: error

The function `bs.time:get` is not working properly. You can find the bug report here: https://github.com/Gunivers/Bookshelf/issues/56. If you are able to fix it, feel free to open a pull request!
```