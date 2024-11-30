SPOOL C:\temp\create.txt


-- Création d’un schéma dédié

create user LCP IDENTIFIED by LCP2024* ;

grant connect to LCP ;
grant create table to LCP ;
grant create view to LCP ;
grant create synonym to LCP ;
grant create sequence to LCP ;
grant create any index to LCP ;


--Création des tablespaces 

create tablespace DATA_LCP 
datafile 
'D:\apps\oradata\LCP\data_fic1.dbf' size 1024 M  
segment space management auto ;

--Création des index 

create tablespace INDEX_LCP 
datafile 
'D:\apps\oradata\LCP\index_fic2.dbf' size 512 M
segment space management auto ;

alter user LCP default tablespace DATA_LCP ;
alter user LCP QUOTA unlimited on DATA_LCP ;
alter user LCP QUOTA unlimited on INDEX_LCP ;

-- Connexion au compte LCP 
connect LCP/LCP2024*
-- Création des tables 


CREATE TABLE Etudiant (
 Numero_INE VARCHAR2(50) NOT NULL,
 Annee_academique VARCHAR2(10), 
 Diplome_prepare VARCHAR2(50),
 Niveau_etude VARCHAR2(50),
 id_client INTEGER)
 tablespace DATA_LCP;
 
CREATE TABLE Client (
 id_client INTEGER NOT NULL,
 Nom VARCHAR2(30),
 Prenom VARCHAR2(30),
 date_naissance DATE,
 numero_fixe VARCHAR2(10),
 numero_port VARCHAR2(10),
 Adresse_principale VARCHAR2(100),
 Adresse_temporaire VARCHAR2(100),
 Mail VARCHAR2(50))
 tablespace DATA_LCP;
 
 
 
CREATE TABLE Compte_Bancaire (
  Numero_de_compte INTEGER NOT NULL,
  Date_ouverture DATE,
  Montant_initial DECIMAL,
  id_client INTEGER,
  id_type INTEGER)
  tablespace DATA_LCP;
  

CREATE TABLE Type_de_compte (
 id_type INTEGER NOT NULL,
 Libelle_type_compte VARCHAR2(30)
)tablespace DATA_LCP;
 
 
CREATE TABLE Contrat (
  Numero_contrat INTEGER NOT NULL,
  Libelle_type_contrat VARCHAR2(50),
  Intitule_contrat VARCHAR2(50),
  Statut_juridique VARCHAR2(50),
  Date_souscription DATE,
  id_client INTEGER)
  tablespace DATA_LCP;
  
  
CREATE TABLE Operation_ (
  Reference_operation INTEGER NOT NULL,
  Libelle_operation VARCHAR2(50),
  Date_comptable DATE,
  Date_operation DATE,
  Date_valeur DATE,
  Montant_debite DECIMAL,
  Montant_credite DECIMAL,
  Numero_de_compte INTEGER,
  id_statut INTEGER,
  Numero_carte INTEGER,
  Numero_chequier INTEGER)
  tablespace DATA_LCP;
  

CREATE TABLE Carte_de_credit (
 Numero_carte INTEGER NOT NULL,
 Date_debut_validite DATE,
 Date_fin_validite DATE,
 id_type_carte INTEGER,
 id_reseau INTEGER,
 Numero_de_compte INTEGER)
 tablespace DATA_LCP;

CREATE TABLE Chequier (
 Numero_chequier INTEGER NOT NULL,
 Numero_cheque_de_x_a_y_ VARCHAR2(15),
 Numero_de_compte INTEGER)
 tablespace DATA_LCP;

CREATE TABLE Type_de_carte(
 id_type_carte INTEGER NOT NULL,
 Libelle_type_carte VARCHAR2(30),
 id_referentiel_carte INTEGER)
 tablespace DATA_LCP;
 
CREATE TABLE Referentiel_utilisation_carte (
 id_referentiel_carte INTEGER NOT NULL,
 Plafond_global_des_paiements DECIMAL,
 Plafond_des_paiements_etranger_Referentiel DECIMAL,
 Plafond_des_paiements_FR_Referentiel DECIMAL,
 Periode_du_plafond_des_paiements_nbrejours_Referentiel DECIMAL,
 Plafond_global_restraits_externes_Referentiel DECIMAL,
 Plafond_des_retraits_etranger_Referentiel DECIMAL,
 Plafond_des_retraits_FR_Referentiel DECIMAL,
 Periode_du_plafond_global_retraits_Referentiel DECIMAL,
 Plafond_global_retraits_internes_Referentiel DECIMAL,
 Montant_cotisation_annuelle_Referentiel DECIMAL)
 tablespace DATA_LCP;

CREATE TABLE Reseau (
 id_reseau INTEGER NOT NULL,
 Libelle_reseau_Reseau VARCHAR2(30)
)tablespace DATA_LCP;

CREATE TABLE Statut_operation (
 id_statut INTEGER NOT NULL,
 libelle_statut VARCHAR2(30)
)tablespace DATA_LCP;
 
CREATE TABLE Epargne (
 id_epargne NUMERIC NOT NULL,
 Type_epargne VARCHAR2(50),
 Type_versement VARCHAR2(50),
 Periodicite_versement VARCHAR2(50),
 Date_versement DATE,
 Montant_verse DECIMAL,
 Numero_contrat INTEGER
)tablespace DATA_LCP;

CREATE TABLE Credit_Amortissement (
 id_credit NUMERIC NOT NULL,
 Objet_credit VARCHAR2(50),
 Date_souscription DATE,
 Date_echeance DATE,
 Duree_nbremois INTEGER,
 Nominal_montant_emprunt DECIMAL,
 Prochaine_echeance DATE,
 Montant_echeance DECIMAL,
 Taux_nominal DECIMAL,
 Encours DECIMAL,
 Numero_contrat INTEGER,
 id_type_amortissement INTEGER
)tablespace DATA_LCP;

CREATE TABLE Type_amortissement (
 id_type_amortissement INTEGER NOT NULL,
 Libelle_type_amortissement VARCHAR2(50)
)tablespace DATA_LCP;


-- Ajout des contraintes de clé primaire

-- Table Etudiant
ALTER TABLE Etudiant
ADD CONSTRAINT Etudiant_pk
PRIMARY KEY (Numero_INE)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Client
ALTER TABLE Client
ADD CONSTRAINT Client_pk
PRIMARY KEY (id_client)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Compte_Bancaire
ALTER TABLE Compte_Bancaire
ADD CONSTRAINT Compte_Bancaire_pk
PRIMARY KEY (Numero_de_compte)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Type_de_compte
ALTER TABLE Type_de_compte
ADD CONSTRAINT Type_de_compte_pk
PRIMARY KEY (id_type)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Contrat
ALTER TABLE Contrat
ADD CONSTRAINT Contrat_pk
PRIMARY KEY (Numero_contrat)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Operation_
ALTER TABLE Operation_
ADD CONSTRAINT Operation_pk
PRIMARY KEY (Reference_operation)
USING INDEX
TABLESPACE INDEX_LCP;


-- Table Carte_de_credit
ALTER TABLE Carte_de_credit
ADD CONSTRAINT Carte_de_credit_pk
PRIMARY KEY (Numero_carte)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Chéquier
ALTER TABLE Chequier
ADD CONSTRAINT Chequier_pk
PRIMARY KEY (Numero_chequier)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Type_de_carte
ALTER TABLE Type_de_carte
ADD CONSTRAINT Type_de_carte_pk
PRIMARY KEY (id_type_carte)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Referentiel_utilisation_carte
ALTER TABLE Referentiel_utilisation_carte
ADD CONSTRAINT Referentiel_utilisation_carte_pk
PRIMARY KEY (id_referentiel_carte)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Reseau
ALTER TABLE Reseau
ADD CONSTRAINT Reseau_pk
PRIMARY KEY (id_reseau)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Statut_operation
ALTER TABLE Statut_operation
ADD CONSTRAINT Statut_operation_pk
PRIMARY KEY (id_statut)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Epargne
ALTER TABLE Epargne
ADD CONSTRAINT Epargne_pk
PRIMARY KEY (id_epargne)
USING INDEX
TABLESPACE INDEX_LCP;

-- Table Credit_Amortissement
ALTER TABLE Credit_Amortissement
ADD CONSTRAINT Credit_Amortissement_pk
PRIMARY KEY (id_credit)
USING INDEX
TABLESPACE INDEX_LCP;

alter table Type_amortissement add constraint Type_amortisssemnt_pk 
primary key(id_type_amortissement) 
using index tablespace INDEX_LCP ;

-- Ajout des contraintes de clés étrangères

-- Table Etudiant
ALTER TABLE Etudiant
ADD CONSTRAINT Etudiant_fk
FOREIGN KEY (id_client) REFERENCES Client(id_client);

-- Table Compte_Bancaire
ALTER TABLE Compte_Bancaire
ADD CONSTRAINT Compte_Bancaire_fk_1
FOREIGN KEY (id_client) REFERENCES Client(id_client);

ALTER TABLE Compte_Bancaire
ADD CONSTRAINT Compte_Bancaire_fk_2
FOREIGN KEY (id_type) REFERENCES Type_de_compte(id_type); 

-- Table Contrat
ALTER TABLE Contrat
ADD CONSTRAINT Contrat_fk_1
FOREIGN KEY (id_client) REFERENCES Client(id_client);


-- Table Operation_
ALTER TABLE Operation_
ADD CONSTRAINT Operation_fk_1
FOREIGN KEY (Numero_de_compte) REFERENCES Compte_Bancaire(Numero_de_compte);

ALTER TABLE Operation_
ADD CONSTRAINT Operation_fk_2
FOREIGN KEY (id_statut) REFERENCES Statut_operation(id_statut);

ALTER TABLE Operation_
ADD CONSTRAINT Operation_fk_3
FOREIGN KEY (Numero_carte) REFERENCES Carte_de_credit(Numero_carte);

ALTER TABLE Operation_
ADD CONSTRAINT Operation_fk_4
FOREIGN KEY (Numero_chequier) REFERENCES Chequier(Numero_chequier);


-- Table Carte_de_credit
ALTER TABLE Carte_de_credit
ADD CONSTRAINT Carte_de_credit_fk_1
FOREIGN KEY (id_type_carte) REFERENCES Type_de_carte(id_type_carte);

ALTER TABLE Carte_de_credit
ADD CONSTRAINT Carte_de_credit_fk_2
FOREIGN KEY (id_reseau) REFERENCES Reseau(id_reseau);

ALTER TABLE Carte_de_credit
ADD CONSTRAINT Carte_de_credit_fk_3
FOREIGN KEY (Numero_de_compte) REFERENCES Compte_Bancaire(Numero_de_compte);

-- Table Chéquier
ALTER TABLE Chequier
ADD CONSTRAINT Chequier_fk
FOREIGN KEY (Numero_de_compte) REFERENCES Compte_Bancaire(Numero_de_compte);

-- Table Type_de_carte
ALTER TABLE Type_de_carte
ADD CONSTRAINT Type_de_carte_fk
FOREIGN KEY (id_referentiel_carte) REFERENCES Referentiel_utilisation_carte(id_referentiel_carte);


-- Table Epargne
ALTER TABLE Epargne
ADD CONSTRAINT Epargne_fk
FOREIGN KEY (Numero_contrat) REFERENCES Contrat(Numero_contrat);

-- Table Credit_Amortissement
ALTER TABLE Credit_Amortissement
ADD CONSTRAINT Credit_Amortissement_fk1
FOREIGN KEY (Numero_contrat) REFERENCES Contrat(Numero_contrat);

ALTER TABLE Credit_Amortissement
ADD CONSTRAINT Credit_Amortissement_fk_2
FOREIGN KEY (id_type_amortissement) REFERENCES Type_amortissement(id_type_amortissement);


-- Les sequences

-- Séquence pour la table Client
CREATE SEQUENCE S_CLIENT
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Compte_Bancaire
CREATE SEQUENCE S_COMPTE_BANCAIRE
START WITH 1000000000
INCREMENT BY 1
MINVALUE 1000000000
MAXVALUE 9999999999;

-- Séquence pour la table Contrat
CREATE SEQUENCE S_CONTRAT
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Operation_
CREATE SEQUENCE S_OPERATION
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 


-- Séquence pour la table Carte_de_credit
CREATE SEQUENCE S_CARTE_CREDIT
START WITH 1000000000000000
INCREMENT BY 1
MINVALUE 1000000000000000
MAXVALUE 9999999999999999;


-- Séquence pour la table Chéquier
CREATE SEQUENCE S_CHEQUIER
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Type_de_carte
CREATE SEQUENCE S_TYPE_CARTE
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Referentiel_utilisation_carte
CREATE SEQUENCE S_REFERENTIEL_CARTE
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Reseau
CREATE SEQUENCE S_RESEAU
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Statut_operation
CREATE SEQUENCE S_STATUT_OPERATION
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Epargne
CREATE SEQUENCE S_EPARGNE
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Credit_Amortissement
CREATE SEQUENCE S_CREDIT_AMORTISSEMENT
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

-- Séquence pour la table Type_amortissement
CREATE SEQUENCE S_TYPE_AMORTISSEMENT
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 
 
-- Séquence pour la table Type_de_compte
CREATE SEQUENCE S_TYPE_COMPTE
START WITH 1
INCREMENT BY 1
MINVALUE 1 MAXVALUE 999999999 ; 

/*
connect System/Pise2024*

PROMPT>>> "Creation d'un schema user avec des drois limites: "
CREATE USER LCP_user IDENTIFIED BY LCPuser*;

GRANT SELECT ANY TABLE TO LCP_user;

CREATE SYNONYM Etudiant FOR LCP.Etudiant;
CREATE SYNONYM Client FOR LCP.Client;
CREATE SYNONYM Compte_Bancaire FOR LCP.Compte_Bancaire;
CREATE SYNONYM Type_de_compte FOR LCP.Type_de_compte;
CREATE SYNONYM Contrat FOR LCP.Contrat;
CREATE SYNONYM Operation_ FOR LCP.Operation_;
CREATE SYNONYM Carte_de_credit FOR LCP.Carte_de_credit;
CREATE SYNONYM Chequier FOR LCP.Chequier;
CREATE SYNONYM Type_de_carte FOR LCP.Type_de_carte;
CREATE SYNONYM Referentiel_utilisation_carte FOR LCP.Referentiel_utilisation_carte;
CREATE SYNONYM Reseau FOR LCP.Reseau;
CREATE SYNONYM Statut_operation FOR LCP.Statut_operation;
CREATE SYNONYM Epargne FOR LCP.Epargne;
CREATE SYNONYM Credit_Amortissement FOR LCP.Credit_Amortissement;
CREATE SYNONYM Type_amortissement FOR LCP.Type_amortissement;


GRANT SELECT ON Etudiant TO LCP_user;
GRANT SELECT ON Client TO LCP_user;
GRANT SELECT ON Compte_Bancaire TO LCP_user;
GRANT SELECT ON Type_de_compte TO LCP_user;
GRANT SELECT ON Contrat TO LCP_user;
GRANT SELECT ON Operation_ TO LCP_user;
GRANT SELECT ON Carte_de_credit TO LCP_user;
GRANT SELECT ON Chequier TO LCP_user;
GRANT SELECT ON Type_de_carte TO LCP_user;
GRANT SELECT ON Referentiel_utilisation_carte TO LCP_user;
GRANT SELECT ON Reseau TO LCP_user;
GRANT SELECT ON Statut_operation TO LCP_user;
GRANT SELECT ON Epargne TO LCP_user;
GRANT SELECT ON Credit_Amortissement TO LCP_user;
GRANT SELECT ON Type_amortissement TO LCP_user;

connect LCP/LCP2024*
*/
SPOOL OFF

 
 


