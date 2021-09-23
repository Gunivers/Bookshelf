# **Orientation**

Ce dossier contient des fonctions facilitant la gestion de l'orientation des entités.

* `get` : Détecte l'orientation d'une entité et la stock sur les scores "OriH" et "OriV", correspondant respectivement aux angles formés sur le plan horizontal et vertical par l'orientation de l'entité.
* `normalize` : Permet de normaliser les oriantations (replace les scores OriH et OriV respectivement dans l'intervalle \[0;360\[ et \[0;180\[)
* `set` : Permet d'orienter l'entité selon ses scores "OriH" et "OriV". Cette fonction possède des déclinaisons sur h et v, utile pour les joueurs pour qui l'orientation ne peut pas être modifiée directement via un /data.