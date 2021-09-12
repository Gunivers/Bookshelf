# **Id**

`glib:id/` : La gestion d'ID des entités permet d'identifier précisément une entité. Utile par exemple dans le cas d'un jeu de tir pour savoir qui tire sur qui.

* `check` : Permet de comparer les scores `glib.id` des entités avec le score `glib.targetId` de l'entité ayant exécuté la fonction.
  * Cette dernière reçoit le tag `glib.id.checker`.
  * Les autres entités reçoivent le tag
    * `glib.id.upper` si leur `glib.id` est supérieur au `glib.targetId`
    * `glib.id.lower` si leur `glib.id` est inférieur au `glib.targetId`
    * `glib.id.match` si leur `glib.id` est égal au `glib.targetId`
  * Exemple:

Trouver l'entité (ou les entités) ayant l'ID 3:

```
# Une fois
scoreboard players set @s glib.targetId 3
function glib:id/check

# Voir le résultat
execute unless entity @e[tag=glib.id.match] run tellraw @a [{"text":"Aucune entité trouvée :'(","color":"dark_gray"}]
execute as @e[tag=glib.id.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Hey ! C'est moi que tu cherche ?","color":"dark_gray"}]
```

* `check_parent` : Permet de comparer les scores `glib.parentId` des entités avec le score `glib.id.target` de l'entité ayant exécuté la fonction.
  * Cette dernière reçoit le tag `glib.parentId.checker`.
  * Les autres entités reçoivent le tag
    * `glib.parentId.upper` si leur glib.id.parent est supérieur au id.target (glib.var)
    * `glib.parentId.lower` si leur glib.id.parent est inférieur au id.target (glib.var)
    * `glib.parentId.match` si leur glib.id.parent est égal au id.target (glib.var)
  * Exemple:

Trouver toutes les entités enfant de Bob:

```
# Une fois
execute as @e[name=Bob,limit=1] run scoreboard players operation @s glib.targetId = @s glib.id
function glib:id/check_parent

# Voir le résultat
execute unless entity @e[tag=glib.parentId.match] run tellraw @a [{"text":"Aucune entité trouvée :'(","color":"dark_gray"}]
execute as @e[tag=glib.parentId.match] run tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Hey ! C'est moi que tu cherche ?","color":"dark_gray"}]
```

* `get_suid` : (Simple Unique ID) Permet à l'entité exécutant la fonction d'obtenir un score `glib.id` différent de toutes les autres entités ayant déjà exécuté la fonction.
  * Retourne l'ID sur le score glib.id de l'entité exécutante.
  * Donne le tag `glib.id.set` et `glib.id.type.suid` aux entités ayant déjà exécute la fonction
  * Exemple:

Donner un ID à tous les joueurs:

```
# En boucle pour donner un ID aux joueurs qui se connectent
execute as @a[tag=!glib.id.set] run function glib:id/get_suid

# Voir le résultat
scoreboard objective setdisplay sidebar glib.id
```

* `get_cuid` : (Chain Unique ID) Permet à l'entité exécutant la fonction d'obtenir un score `glib.id` différent de toutes les autres entités ayant déjà exécuté la fonction. La différence avec `get_suid` se trouve dans la façon dont les scores sont attribués.
  * Les scores ID sont attribué dynamiquement en fonction des scores disponibles, de sorte à former une chaine. Ainsi, si il y a 5 entité, elles seront numéroté de 1 à 5, sans "trou". Pour ne pas que cette chaine puisse être rompue, il faut également exécuter la fonction `update_cuid` en boucle.
  * Retourne l'ID sur le score glib.id de l'entité exécutante.
  * Donne le tag `glib.id.set` et `glib.id.type.cuid` aux entités ayant déjà exécute la fonction
  * Exemple

Donner un ID à tous les joueurs:

```
# En boucle pour donner un ID aux joueurs qui se connectent
execute as @a[tag=!glib.id.set] run function glib:id/get_cuid

# Voir le résultat
scoreboard objective setdisplay sidebar glib.id
```

* `update_cuid` : Permet d'actualiser tous les CUID des entités. S'execute de façon globale (l'entité source n'a pas d'importance, l’exécuter plusieurs fois par tick n'aura aucun effet)
  * Exemple:

Maintenir la chaine d'ID sans trous ni doublons:

```
# A executer une fois à chaque début de tick
function glib:id/update_cuid

# Voir le résultat
scoreboard objective setdisplay sidebar glib.id
```