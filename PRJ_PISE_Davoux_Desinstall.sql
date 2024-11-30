SPOOL C:\temp\suppresssion.txt


PROMPT>> "Suppression de toutes les contraintes de cle etrangere"
ALTER TABLE Credit_Amortissement DROP CONSTRAINT Credit_Amortissement_fk_2;
ALTER TABLE Credit_Amortissement DROP CONSTRAINT Credit_Amortissement_fk1;
ALTER TABLE Epargne DROP CONSTRAINT Epargne_fk;
ALTER TABLE Type_de_carte DROP CONSTRAINT Type_de_carte_fk;
ALTER TABLE Chequier DROP CONSTRAINT Chequier_fk;
ALTER TABLE Carte_de_credit DROP CONSTRAINT Carte_de_credit_fk_3;
ALTER TABLE Carte_de_credit DROP CONSTRAINT Carte_de_credit_fk_2;
ALTER TABLE Carte_de_credit DROP CONSTRAINT Carte_de_credit_fk_1;
ALTER TABLE Operation_ DROP CONSTRAINT Operation_fk_4;
ALTER TABLE Operation_ DROP CONSTRAINT Operation_fk_3;
ALTER TABLE Operation_ DROP CONSTRAINT Operation_fk_2;
ALTER TABLE Operation_ DROP CONSTRAINT Operation_fk_1;
ALTER TABLE Contrat DROP CONSTRAINT Contrat_fk_1;
ALTER TABLE Compte_Bancaire DROP CONSTRAINT Compte_Bancaire_fk_2;
ALTER TABLE Compte_Bancaire DROP CONSTRAINT Compte_Bancaire_fk_1;
ALTER TABLE Etudiant DROP CONSTRAINT Etudiant_fk;

COMMIT;

PROMPT>>> "Suppression de toutes les contraintes de cle primaire"
ALTER TABLE Type_amortissement DROP CONSTRAINT Type_amortisssemnt_pk;
ALTER TABLE Statut_operation DROP CONSTRAINT Statut_operation_pk;
ALTER TABLE Reseau DROP CONSTRAINT Reseau_pk;
ALTER TABLE Referentiel_utilisation_carte DROP CONSTRAINT Referentiel_utilisation_carte_pk;
ALTER TABLE Type_de_carte DROP CONSTRAINT Type_de_carte_pk;
ALTER TABLE Chequier DROP CONSTRAINT Chequier_pk;
ALTER TABLE Carte_de_credit DROP CONSTRAINT Carte_de_credit_pk;
ALTER TABLE Operation_ DROP CONSTRAINT Operation_pk;
ALTER TABLE Contrat DROP CONSTRAINT Contrat_pk;
ALTER TABLE Type_de_compte DROP CONSTRAINT Type_de_compte_pk;
ALTER TABLE Compte_Bancaire DROP CONSTRAINT Compte_Bancaire_pk;
ALTER TABLE Client DROP CONSTRAINT Client_pk;
ALTER TABLE Etudiant DROP CONSTRAINT Etudiant_pk;
ALTER TABLE Epargne DROP CONSTRAINT Epargne_pk;
ALTER TABLE Credit_Amortissement DROP CONSTRAINT Credit_Amortissement_pk;
COMMIT;

PROMPT>>> "Suppression de toutes les tables"
DROP TABLE Type_amortissement;
DROP TABLE Credit_Amortissement;
DROP TABLE Epargne;
DROP TABLE Statut_operation;
DROP TABLE Reseau;
DROP TABLE Referentiel_utilisation_carte;
DROP TABLE Type_de_carte;
DROP TABLE Chequier;
DROP TABLE Carte_de_credit;
DROP TABLE Operation_;
DROP TABLE Contrat;
DROP TABLE Type_de_compte;
DROP TABLE Compte_Bancaire;
DROP TABLE Client;
DROP TABLE Etudiant;

COMMIT;

PROMPT>>> "Suppression de toutes les sequences"
DROP SEQUENCE S_TYPE_AMORTISSEMENT;
DROP SEQUENCE S_CREDIT_AMORTISSEMENT;
DROP SEQUENCE S_EPARGNE;
DROP SEQUENCE S_STATUT_OPERATION;
DROP SEQUENCE S_RESEAU;
DROP SEQUENCE S_REFERENTIEL_CARTE;
DROP SEQUENCE S_TYPE_CARTE;
DROP SEQUENCE S_CHEQUIER;
DROP SEQUENCE S_CARTE_CREDIT;
DROP SEQUENCE S_OPERATION;
DROP SEQUENCE S_CONTRAT;
DROP SEQUENCE S_TYPE_COMPTE;
DROP SEQUENCE S_COMPTE_BANCAIRE;
DROP SEQUENCE S_CLIENT;

COMMIT;

connect SYSTEM/Pise2024* 

PROMPT>>> "Suppression des tablespaces "
DROP TABLESPACE DATA_LCP INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE INDEX_LCP INCLUDING CONTENTS AND DATAFILES;

PROMPT>>> "Suppression de l'utilisateur"
DROP USER LCP CASCADE;

SPOOL OFF