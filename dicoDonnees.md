# Dictionnaire de données en amont de la modélisation

User

Nom|Type|Taille|Description|
|-|-|-|-|
|num_user|Entier|-|Numéro permettant d'identifier un utilisateur|
|name|Chaîne de caractères|100|Nom complet de l'utilisateur|
|password|Chaîne de caractères|255|Contenu de l'article|
|created_at|Date|-|Date de création|
|updated_at|Date|-|Date de MaJ|

Product

Nom|Type|Taille|Description|
|-|-|-|-|
|num_product|Entier|-|Numéro permettant d'identifier un produit|
|name|Chaîne de caractères|100|Nom du produit|
|quantity|Entier|100|Stock actuel pour le produit|
|status|Entier|100|Statut du produit (0 = archivé/hors-ligne, 1 = en ligne)|
|created_at|Date|-|Date de création|
|updated_at|Date|-|Date de MaJ|

Category

Nom|Type|Taille|Description|
|-|-|-|-|
|num_category|Entier|-|Numéro permettant d'identifier une catégorie|
|name|Chaîne de caractères|100|Nom de la catégorie|
|created_at|Date|-|Date de création|
|updated_at|Date|-|Date de MaJ|

Tag

Nom|Type|Taille|Description|
|-|-|-|-|
|num_tag|Entier|-|Numéro permettant d'identifier l'étiquette|
|name|Chaîne de caractères|100|Nom de l'étiquette|
|created_at|Date|-|Date de création|
|updated_at|Date|-|Date de MaJ|

Order

Nom|Type|Taille|Description|
|-|-|-|-|
|num_order|Entier|-|Numéro permettant d'identifier une commande|
|num_invoice|Chaîne de caractères|100|Numéro de facture (une fois la commande validée)|
|status|Chaîne de caractères|-|Etat de la commande ('En panier', 'En cours de traitement' (une fois validé par l'utilisateur), 'Validé', 'En cours de livraison' et 'Livré')|
|created_at|Date|-|Date de création|
|updated_at|Date|-|Date de MaJ|