
SPOOL C:\temp\client.txt

-- Gestion de l'affichage pour une meilleur visibilite
SET LINESIZE 1000;



PROMPT ">>>Consultation des transactions d'un client: "

SELECT 
    Operation_.Reference_operation, 
    Operation_.Libelle_operation, 
    Statut_operation.libelle_statut, 
    Operation_.Date_comptable, 
    Operation_.Date_operation, 
    Operation_.Date_valeur, 
    Operation_.Montant_debite, 
    Operation_.Montant_credite, 
    Operation_.Numero_de_compte 
FROM Operation_
INNER JOIN Statut_operation ON Operation_.id_statut = Statut_operation.id_statut
INNER JOIN Compte_Bancaire ON Operation_.Numero_de_compte = Compte_Bancaire.Numero_de_compte
INNER JOIN Client ON Compte_Bancaire.id_client = Client.id_client
WHERE UPPER(Client.Nom) = 'SAPHIR' AND UPPER(Client.Prenom) = 'KADER'
ORDER BY Operation_.Date_operation DESC;


PROMPT ">>>Edition du Rib d'un client: "
SELECT 
    Client.Nom, 
    Client.Prenom, 
    Compte_Bancaire.Numero_de_compte,
    'Le_Credit_Parisien' AS Nom_de_la_banque,
    '10257' AS Code_Banque
FROM Client
INNER JOIN Compte_Bancaire ON Client.id_client = Compte_Bancaire.id_client
WHERE Client.id_client = 12;

PROMPT ">>>Edition du releve bancaire electronique mensuel : Ici exemple d'edition du releve bancaire pour le mois de novembre 2023, le client peut voir son nouveau solde:"

SELECT 
    Operation_.*, 
    (Montant_credite - Montant_debite) + Compte_bancaire.Montant_initial AS Nouveau_solde
FROM Operation_
INNER JOIN Compte_bancaire ON Operation_.Numero_de_compte = Compte_bancaire.Numero_de_compte
WHERE Compte_bancaire.id_client = 12 AND Operation_.Date_operation BETWEEN to_date('01/11/2023', 'dd/mm/yyyy') AND to_date('30/11/2023', 'dd/mm/yyyy');




PROMPT ">>>--Edition de synthese des remboursements de pret: "

SELECT Client.Nom, Client.Prenom, Credit_Amortissement.*
FROM Client
INNER JOIN Contrat ON Client.id_client = Contrat.id_client
INNER JOIN Credit_Amortissement ON Contrat.Numero_contrat = Credit_Amortissement.Numero_contrat
WHERE Client.id_client = 12;

SPOOL OFF
