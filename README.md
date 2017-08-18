# GUNIVERS-LIB

# CONCEPTCONCEPT:
@LeiRoF

# CHEFS DE PROJET:
@theogiraudet/Oromis, @LeiRoF

# TITRE:
Gunivers-Lib

# PRESENTATION:
Gunivers-Lib est une bibliothèque de fonctions Minecraft utiles à la réalisation de systèmes et/ou de maps, ainsi que de structures de toute sorte. Elle permet ainsi à la fois de cacher certains aspects complexes du développement (la partie mathématique nottament) et favorise la création de gros projets.

# PARTICULARITE:
Les fonctions présentes dans cette bibliothèque  peuvent interagir entre elles et respecte une convetnion d'écriture logique leur permettant de s'adapter à n'importe quel système.

# AVANCEE:
Gunivers-Lib possède déjà certaines fonctions mathématiques ainsi que certaines fonctions utiles à la detection et à la modification d'état d'une entité.

MOTIVATION: Cette biliothèque offrira une aide conséquente aux développeur CMD suhaitant réaliser des systèmes/maps complèxes. Ainsi, ce petit projet fait faire un bond de géant à la "technologie" des Command Blocks et ouvre les portes à d'autres projets plus ambitieux ! 

# Convention:
Ci-dessous la convention d'écriture au sein de cette librairie. Merci de la respecter.
Remplacez les valeurs entre "<>" par les valeures correspondantes
___________________________________________________________________________________________________


# <Nom Du Systeme>
# @Author: <Name>
# @Contributors:
# - <Name>
# - ...

# Version: <Version Du Système>
# Minecraft Version: <Version Du Jeu>

# Requierements:
# - <Name>** (<Type>***)
# - ...

# Input values:
# - <Name>** (<Type>***)
# - ...

# Output values:
# - <Name>** (<Type>***)
# - ...

# Note: <Note> (optionnel)

# <Code>****

___________________________________________________________________________________________________

** Faire la liste des éléments utilisés par le système. Si aucun élément, mettre "None"
*** Le type peut être: (score dummy), (team), (tag), (NBT), (MCfunction) etc... selon ce que le système utilise
****Le code contient tout le système. L'auteur du système peut organiser son code comem bon lui semble du moment que ce code n'intervient pas dans les systèmes des autres (modification d'un Score qui ne le concerne pas etc...)
