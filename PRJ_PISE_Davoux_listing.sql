SPOOL C:\temp\listing.txt


-- Gestion de l'affichage pour une meilleur visibilite
SET LINESIZE 1000;


PROMPT>>> "Consultation des donnees du referentiel de la banque:"

SELECT * FROM Etudiant;
SELECT * FROM Client;
SELECT * FROM Contrat;
SELECT * FROM Credit_Amortissement;
SELECT * FROM Type_amortissement;
SELECT * FROM Epargne;
SELECT * FROM Carte_de_credit;
SELECT * FROM Reseau;
SELECT * FROM Type_de_carte;
SELECT * FROM Compte_Bancaire;
SELECT * FROM Type_de_compte;
SELECT * FROM Chequier;
SELECT * FROM Operation_;
SELECT * FROM Type_Operation;
SELECT * FROM Statut_operation;
SELECT * FROM Referentiel_utilisation_carte;


PROMPT>>> "Consultation des informations sur les Etudiants uniquement : "


SELECT CLIENT.id_client, CLIENT.Nom, CLIENT.Prenom, CLIENT.Adresse_principale, 
CLIENT.numero_port, CLIENT.Mail, Etudiant.Diplome_prepare, Etudiant.Niveau_etude, Etudiant.Annee_academique
FROM Client
INNER JOIN Etudiant ON (CLIENT.id_client = Etudiant.id_client);

PROMPT>>> "Liste de tous les clients ayants souscrits a un emprunt ou a un credit"
SELECT CLIENT.id_client,  Contrat.Numero_contrat, CLIENT.Nom, CLIENT.Prenom, CLIENT.Adresse_principale, 
CLIENT.numero_port, CLIENT.Mail, Contrat.Statut_juridique, Contrat.Date_souscription 
FROM Client
INNER JOIN Contrat ON (CLIENT.id_client = Contrat.id_client);

PROMPT>>> "Liste de toutes les operations /transactions effectues au sein de la banque" 
PROMPT>>> "Liste des operations en attente: " 

SELECT *
FROM Operation_
WHERE id_statut = (SELECT id_statut FROM Statut_operation WHERE UPPER(libelle_statut) = 'EN ATTENTE')
ORDER BY Operation_.Date_operation DESC;

PROMPT>>> "Liste des operations valide par la banque:"

SELECT *
FROM Operation_
WHERE id_statut = (SELECT id_statut FROM Statut_operation WHERE UPPER(libelle_statut) = 'VALIDE')
ORDER BY Operation_.Date_operation DESC;


PROMPT>>> "Liste operations rejete par la banque: "

SELECT *
FROM Operation_
WHERE id_statut = (SELECT id_statut FROM Statut_operation WHERE UPPER(libelle_statut) = 'REJETE')
ORDER BY Operation_.Date_operation DESC;



PROMPT>>> "Informations: pour chaque operation, la banque doit savoir qui l'a realisee, avec quel compte et quelle moyen Carte bleu et/ou Chequier:"

SELECT 
    Operation_.*, 
    Client.Nom AS Nom_Client, 
    Client.Prenom AS Prenom_Client, 
    Client.id_client, 
    Type_de_compte.Libelle_type_compte
FROM Operation_
INNER JOIN Compte_Bancaire ON Operation_.Numero_de_compte = Compte_Bancaire.Numero_de_compte
INNER JOIN Type_de_compte ON Compte_Bancaire.id_type = Type_de_compte.id_type
INNER JOIN Client ON Compte_Bancaire.id_client = Client.id_client
LEFT JOIN Carte_de_credit ON Compte_Bancaire.Numero_de_compte = Carte_de_credit.Numero_de_compte
LEFT JOIN Chequier ON Compte_Bancaire.Numero_de_compte = Chequier.Numero_de_compte
ORDER BY Operation_.Date_operation DESC;


PROMPT>>> "Liste de tous les etudiants beneficiant de l'operation pret etude en partenariat avec l'Universite: "

SELECT Etudiant.*, Client.*
FROM Etudiant
INNER JOIN Client ON Etudiant.id_client = Client.id_client
INNER JOIN Contrat ON Etudiant.id_client = Contrat.id_client
WHERE UPPER (Contrat.Libelle_type_contrat) = 'PRET ETUDE';

SPOOL OFF