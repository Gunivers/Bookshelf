Ci-dessous la convention d'écriture au sein de cette librairie. Merci de la respecter.
Remplacez les valeurs entre "<>" par les valeures correspondantes.
___________________________________________________________________________________________________


# NAME: <Nom Du Systeme>
# PATH: Gunivers-Lib: ... /<Nom Du Systeme>

# AUTHOR: <Name>
# CONTRIBUTORS: (optional)
# - <Name>
# - ...

# VERSION: <Version Du Système>
# MINECRAFT: <Version Du Jeu>

# REQUIEREMENTS:
# - <Name>** (<Type>***)
# - ...
or 
# CHILD OF: Gunivers-Lib: ... /<Nom Du Systeme Parent>

# INPUT:
# - <Name>** (<Type>***)
# - ...

# OUTPUT:
# - <Name>** (<Type>***)
# - ...

# NOTE: <Note> (optional)

# CONFIGURATION:
...

# CODE:
...

___________________________________________________________________________________________________

* Le champ configuration permet aux développeur de modifier des paramètres de la fonction (exemple: sur un calcul de racine carré, un score "Precision" permet d'ajuster la précision de la fonction)
** Faire la liste des éléments utilisés par le système. Si aucun élément, mettre "None"
*** Le type peut être: (score dummy), (team), (tag), (NBT), (MCfunction) etc... selon ce que le système utilise
****Le code contient tout le système. L'auteur du système peut organiser son code comme bon lui semble du moment que ce code n'intervient pas dans les systèmes des autres (modification d'un Score qui ne le concerne pas etc...)
