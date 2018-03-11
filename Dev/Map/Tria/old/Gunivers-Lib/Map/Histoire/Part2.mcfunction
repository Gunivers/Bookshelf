# ----------    PARTIE 2    ----------

# Chapitre 1 -------------------------

#Projectiles Enflamés
function Gunivers-Lib:Map/Histoire/Partie2/ProjFeu if @e[tag=ProjShooter]

# Chapitre 2 -------------------------

#Laser
function Gunivers-Lib:Map/Histoire/Partie2/Laser if @e[tag=LStart]

#Tir des avions (anim du début)
function Gunivers-Lib:Map/Histoire/Partie2/AvionAnim if @e[tag=AvionAnim]

#Tanks
function Gunivers-Lib:Map/Histoire/Partie2/Tanks/Tanks if @e[tag=Data,score_CurrentChap_min=5,score_CurrentChap=5]

# Chapitre 3 -------------------------

#Vaisseaux
function Gunivers-Lib:Map/Histoire/Partie2/Vaisseaux/Vaisseaux if @e[tag=Data,score_CurrentChap_min=6,score_CurrentChap=6]

