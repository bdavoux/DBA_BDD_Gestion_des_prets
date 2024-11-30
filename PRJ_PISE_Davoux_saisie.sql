
SPOOL C:\temp\saisie.txt
-- Client 1
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Dupont', 'Sophie', TO_DATE('15-02-1995', 'DD-MM-YYYY'), '0123456789', '0618345673', '4 Rue Principale, 75001 Paris', '789 Rue Temporaire, 91000 Evry', 'sophie.dupont@email.com');

-- Client 2
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Mail)
VALUES (S_client.nextval, 'Martin', 'Luc', TO_DATE('20-04-1990', 'DD-MM-YYYY'), '0234567890', '0722347671', '78 Avenue Principale, 69002 Lyon', 'luc.martin@email.com');

-- Client 3
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Leclerc', 'Marie', TO_DATE('05-06-1982', 'DD-MM-YYYY'), '0345678901', '0672645672', '987 Boulevard Principal, 31000 Toulouse', '654 Boulevard Temporaire, 33000 Bordeaux', 'marie.leclerc@email.com');

-- Client 4
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Lefevre', 'Pierre', TO_DATE('12-09-1978', 'DD-MM-YYYY'), '0456789012', '0752315673', '2 Rue du Centre, 59000 Lille', '567 Rue Provisoire, 54000 Nancy', 'pierre.lefevre@email.com');

-- Client 5
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Girard', 'Isabelle', TO_DATE('25-11-1997', 'DD-MM-YYYY'), '0567890123', '0712385674', '65 Avenue Centrale, 13001 Marseille', '432 Avenue Temporaire, 06000 Nice', 'isabelle.girard@email.com');

-- Client 6
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Moreau', 'Francois', TO_DATE('08-07-1980', 'DD-MM-YYYY'), '0678901234', '0632347675', '8 Rue du Milieu, 75002 Paris', '321 Rue Temporaire, 34000 Montpellier', 'francois.moreau@email.com');

-- Client 7
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Dubois', 'Celine', TO_DATE('18-05-1995', 'DD-MM-YYYY'), '0789012345', '0712945476', '543 Boulevard du Centre, 69003 Lyon', '876 Boulevard Temporaire, 69007 Lyon', 'celine.dubois@email.com');

-- Client 8
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Roux', 'Michel', TO_DATE('03-10-1996', 'DD-MM-YYYY'), '0890123456', '0772345678', '12 Rue Principale, 59000 Lille', '456 Rue Provisoire, 59100 Roubaix', 'michel.roux@email.com');

-- Client 9
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Fournier', 'Nathalie', TO_DATE('22-01-1996', 'DD-MM-YYYY'), '0901234567', '0612345678', '65 Avenue Principale, 75003 Paris', '987 Avenue Temporaire, 75005 Paris', 'nathalie.fournier@email.com');

-- Client 10
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Adresse_temporaire, Mail)
VALUES (S_client.nextval, 'Leroy', 'Jean', TO_DATE('14-12-1998', 'DD-MM-YYYY'), '0012345678', '0719345678', '876 Boulevard Principal, 69001 Lyon', '543 Boulevard Temporaire','leroy.94@gmail.com');

--Client 11
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Mail)
VALUES (S_client.nextval, 'Mike', 'Jason', TO_DATE('10-12-1998', 'DD-MM-YYYY'), '0122345678', '0612345677', '87 Boulevard de Paris, 69001 Lyon','m.k@gmail.com');
--Client 12
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Mail)
VALUES (S_client.nextval, 'Saphir', 'Kader', TO_DATE('08-10-1998', 'DD-MM-YYYY'), '0152345688', '0712395638', '7 rue des Canettes, 80000 Amiens','kader.80@gmail.com');
--Client 13
INSERT INTO Client (id_client, Nom, Prenom, date_naissance, numero_fixe, numero_port, Adresse_principale, Mail)
VALUES (S_client.nextval, 'Iel', 'Sophia', TO_DATE('23-01-1998', 'DD-MM-YYYY'), '0192345678', '0718345628', '76 Avenue Paul-Vaillant-Couturier, 94800 Villejuif','sophia.94@gmail.com');


-- Insertion de données dans la table Etudiant
INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1234567890','2024', 'Doctorat Informatique', 'Bac+7', 1);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1534587890', '2024', 'Doctorat Histoire', 'Bac+8', 2);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1834967890', '2024', 'Doctorat Geographie', 'Bac+8', 5);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1184967891', '2024', 'Doctorat Philosophie', 'Bac+7', 7);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1784964891', '2024', 'Doctorat Histoire', 'Bac+7', 8);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1284964591', '2024', 'Doctorat Informatique', 'Bac+8', 9);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('2784964491', '2024', 'Doctorat Art', 'Bac+8', 10);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('2724364891', '2024', 'Doctorat L.E.A', 'Bac+6', 11);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1684965891', '2024', 'Doctorat Socilogie', 'Bac+6', 12);

INSERT INTO Etudiant (Numero_INE, Annee_academique, Diplome_prepare, Niveau_etude, id_client)
VALUES ('1984914891', '2024', 'Doctorat Physique', 'Bac+8', 13);



-- Insertion de données dans la table Type_de_compte
INSERT INTO Type_de_compte (id_type, Libelle_type_compte)
VALUES (S_TYPE_COMPTE.nextval, 'Compte Courant');
INSERT INTO Type_de_compte (id_type, Libelle_type_compte)
VALUES (S_TYPE_COMPTE.nextval, 'Compte Epargne');

-- Reseau 
INSERT INTO Reseau (id_reseau, Libelle_reseau_Reseau)
VALUES (S_RESEAU.nextval,'Visa');
INSERT INTO Reseau (id_reseau, Libelle_reseau_Reseau) 
VALUES (S_RESEAU.nextval,'MasterCard');

-- -- Script de peuplement pour la table Statut_operation
INSERT INTO Statut_operation (id_statut, libelle_statut)
VALUES (S_STATUT_OPERATION.nextval, 'En attente');
INSERT INTO Statut_operation (id_statut, libelle_statut)
VALUES (S_STATUT_OPERATION.nextval, 'Valide');
INSERT INTO Statut_operation (id_statut, libelle_statut)
VALUES (S_STATUT_OPERATION.nextval, 'Rejete');

-- Script de peuplement pour la table Type_amortissement
INSERT INTO Type_amortissement (id_type_amortissement, Libelle_type_amortissement)
VALUES (S_TYPE_AMORTISSEMENT.nextval, 'Echeances constantes');
INSERT INTO Type_amortissement (id_type_amortissement, Libelle_type_amortissement)
VALUES (S_TYPE_AMORTISSEMENT.nextval, 'Echeance lineaire');
INSERT INTO Type_amortissement (id_type_amortissement, Libelle_type_amortissement)
VALUES (S_TYPE_AMORTISSEMENT.nextval, 'Echeance a capital constant');

-- Script de peuplement pour la table Referentiel_utilisation_carte
INSERT INTO Referentiel_utilisation_carte (id_referentiel_carte, Plafond_global_des_paiements, Plafond_des_paiements_etranger_Referentiel, Plafond_des_paiements_FR_Referentiel, Periode_du_plafond_des_paiements_nbrejours_Referentiel, Plafond_global_restraits_externes_Referentiel, Plafond_des_retraits_etranger_Referentiel, Plafond_des_retraits_FR_Referentiel, Periode_du_plafond_global_retraits_Referentiel, Plafond_global_retraits_internes_Referentiel, Montant_cotisation_annuelle_Referentiel)
VALUES (S_REFERENTIEL_CARTE.nextval, 5000, 1000, 2000, 30, 2000, 500, 1000, 60, 3000, 50);
INSERT INTO Referentiel_utilisation_carte (id_referentiel_carte, Plafond_global_des_paiements, Plafond_des_paiements_etranger_Referentiel, Plafond_des_paiements_FR_Referentiel, Periode_du_plafond_des_paiements_nbrejours_Referentiel, Plafond_global_restraits_externes_Referentiel, Plafond_des_retraits_etranger_Referentiel, Plafond_des_retraits_FR_Referentiel, Periode_du_plafond_global_retraits_Referentiel, Plafond_global_retraits_internes_Referentiel, Montant_cotisation_annuelle_Referentiel)
VALUES (S_REFERENTIEL_CARTE.nextval, 10000, 5000, 2000, 30, 2000, 500, 1000, 60, 3000, 150);
INSERT INTO Referentiel_utilisation_carte (id_referentiel_carte, Plafond_global_des_paiements, Plafond_des_paiements_etranger_Referentiel, Plafond_des_paiements_FR_Referentiel, Periode_du_plafond_des_paiements_nbrejours_Referentiel, Plafond_global_restraits_externes_Referentiel, Plafond_des_retraits_etranger_Referentiel, Plafond_des_retraits_FR_Referentiel, Periode_du_plafond_global_retraits_Referentiel, Plafond_global_retraits_internes_Referentiel, Montant_cotisation_annuelle_Referentiel)
VALUES (S_REFERENTIEL_CARTE.nextval, 2000, 100, 2000, 30, 2000, 500, 1000, 60, 500, 25);


--Script de peuplement pour la table type_carte

INSERT INTO Type_de_carte (id_type_carte, Libelle_type_carte, id_referentiel_carte)
VALUES (S_TYPE_CARTE.nextval, 'Silver', 1);

INSERT INTO Type_de_carte (id_type_carte, Libelle_type_carte, id_referentiel_carte)
VALUES (S_TYPE_CARTE.nextval, 'Gold', 2);

INSERT INTO Type_de_carte (id_type_carte, Libelle_type_carte, id_referentiel_carte)
VALUES (S_TYPE_CARTE.nextval, 'Classique', 3);
  
  

-- Insertion de données dans la table Compte_Bancaire
INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('01-12-2023', 'DD-MM-YYYY'), 5000, 1, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('03-07-2023', 'DD-MM-YYYY'), 3000, 2, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('12-01-2023', 'DD-MM-YYYY'), 100, 3, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('05-02-2023', 'DD-MM-YYYY'), 10000, 4, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('15-04-2023', 'DD-MM-YYYY'), 200, 5, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('21-03-2023', 'DD-MM-YYYY'), 500, 6, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('08-06-2023', 'DD-MM-YYYY'), 1000, 7, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('12-05-2023', 'DD-MM-YYYY'), 50, 8, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('14-08-2023', 'DD-MM-YYYY'), 2000, 9, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('22-08-2023', 'DD-MM-YYYY'), 1250, 10, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('17-10-2023', 'DD-MM-YYYY'), 742, 11, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('06-11-2023', 'DD-MM-YYYY'), 453, 12, 1);

INSERT INTO Compte_Bancaire (Numero_de_compte, Date_ouverture, Montant_initial, id_client, id_type)
VALUES (S_COMPTE_BANCAIRE.nextval, TO_DATE('07-09-2023', 'DD-MM-YYYY'), 123, 13, 1);


  

-- Insertion de données dans la table Contrat
INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret Etude', 'Dupont', 'Titulaire',  TO_DATE('05-02-2024', 'DD-MM-YYYY'), 1);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Compte sur livret', 'Dupont', 'Titulaire', TO_DATE('23-12-2023', 'DD-MM-YYYY'), 1);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret Etude', 'Girard', 'Beneficiaire', TO_DATE('10-03-2024', 'DD-MM-YYYY'), 5 );

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret Etude', 'Dubois', 'Titulaire', TO_DATE('15-01-2024', 'DD-MM-YYYY'), 7);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret Etude', 'Mike', 'Beneficiaire', TO_DATE('20-03-2024', 'DD-MM-YYYY'), 11);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret Etude', 'Saphir', 'Titulaire', TO_DATE('05-05-2024', 'DD-MM-YYYY'), 12);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret Etude', 'Iel', 'Titulaire', TO_DATE('15-07-2024', 'DD-MM-YYYY'), 13);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Compte sur livret', 'Lefebvre', 'Titulaire', TO_DATE('27-02-2023', 'DD-MM-YYYY'), 4);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Compte Epargne', 'Moreau', 'Titulaire', TO_DATE('06-02-2024', 'DD-MM-YYYY'), 6);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Pret immobilier', 'Moreau', 'Titulaire',TO_DATE('20-09-2024', 'DD-MM-YYYY'), 6);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Compte Livret', 'Moreau', 'Beneficiaire', TO_DATE('03-07-2024', 'DD-MM-YYYY'), 6);

INSERT INTO Contrat (Numero_contrat, Libelle_type_contrat, Intitule_contrat, Statut_juridique, Date_souscription, id_client)
VALUES (S_CONTRAT.nextval, 'Compte Epargne', 'Leroy', 'Beneficiaire', TO_DATE('16-03-2024', 'DD-MM-YYYY'), 10);


-- Insertion de données dans la table Carte_de_credit
INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('01-12-2023', 'DD-MM-YYYY'), TO_DATE('01-12-2025', 'DD-MM-YYYY'), 1, 1, 1000000000);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('05-07-2023', 'DD-MM-YYYY'), TO_DATE('05-07-2027', 'DD-MM-YYYY'), 2, 2, 1000000001);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('12-01-2023', 'DD-MM-YYYY'), TO_DATE('01-01-2028', 'DD-MM-YYYY'), 2, 1, 1000000002);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('06-02-2023', 'DD-MM-YYYY'), TO_DATE('01-02-2026', 'DD-MM-YYYY'), 2, 1, 1000000003);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('15-04-2023', 'DD-MM-YYYY'), TO_DATE('01-04-2025', 'DD-MM-YYYY'), 3, 2, 1000000004);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('21-03-2023', 'DD-MM-YYYY'), TO_DATE('20-03-2026', 'DD-MM-YYYY'), 2, 2, 1000000005);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('08-06-2023', 'DD-MM-YYYY'), TO_DATE('01-06-2027', 'DD-MM-YYYY'), 3, 2, 1000000006);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('12-05-2023', 'DD-MM-YYYY'), TO_DATE('01-05-2025', 'DD-MM-YYYY'), 3, 1, 1000000007);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('14-08-2023', 'DD-MM-YYYY'), TO_DATE('01-08-2025', 'DD-MM-YYYY'), 3, 1, 1000000008);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('22-08-2023', 'DD-MM-YYYY'), TO_DATE('01-08-2025', 'DD-MM-YYYY'), 3, 2, 1000000009);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('17-10-2023', 'DD-MM-YYYY'), TO_DATE('08-10-2025', 'DD-MM-YYYY'), 3, 1, 1000000010);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('06-11-2023', 'DD-MM-YYYY'), TO_DATE('01-11-2025', 'DD-MM-YYYY'), 2, 2, 1000000011);

INSERT INTO Carte_de_credit (Numero_carte, Date_debut_validite, Date_fin_validite, id_type_carte, id_reseau, Numero_de_compte)
VALUES (S_CARTE_CREDIT.nextval, TO_DATE('08-09-2023', 'DD-MM-YYYY'), TO_DATE('07-09-2025', 'DD-MM-YYYY'), 3, 1, 1000000012);



-- Insertion de données dans la table Chéquier
INSERT INTO Chequier (Numero_chequier, Numero_cheque_de_x_a_y_, Numero_de_compte)
VALUES (S_CHEQUIER.nextval, '100-200', 1000000001);

INSERT INTO Chequier (Numero_chequier, Numero_cheque_de_x_a_y_, Numero_de_compte)
VALUES (S_CHEQUIER.nextval, '300-400', 1000000002);

INSERT INTO Chequier (Numero_chequier, Numero_cheque_de_x_a_y_, Numero_de_compte)
VALUES (S_CHEQUIER.nextval, '500-600', 1000000003);

INSERT INTO Chequier (Numero_chequier, Numero_cheque_de_x_a_y_, Numero_de_compte)
VALUES (S_CHEQUIER.nextval, '700-800', 1000000006);

-- Insertion de données dans la table Operation_
-- Operation 1
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval,'Virement', TO_DATE('08-12-2023', 'DD-MM-YYYY'), TO_DATE('07-12-2023', 'DD-MM-YYYY'), TO_DATE('09-12-2023', 'DD-MM-YYYY'), 2000, 0,1000000000, 2,1000000000000000);

-- Operation 2
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_chequier)
VALUES (S_OPERATION.nextval, 'Retrait', TO_DATE('05-08-2023', 'DD-MM-YYYY'), TO_DATE('04-08-2023', 'DD-MM-YYYY'), TO_DATE('06-08-2023', 'DD-MM-YYYY'), 100, 0, 1000000001, 2, 1);

-- Operation 3
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('03-09-2023', 'DD-MM-YYYY'), TO_DATE('02-09-2023', 'DD-MM-YYYY'), TO_DATE('03-09-2023', 'DD-MM-YYYY'), 0, 100, 1000000001, 2, 1000000000000001);

-- Operation 4
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Retrait', TO_DATE('04-02-2023', 'DD-MM-YYYY'), TO_DATE('04-02-2023', 'DD-MM-YYYY'), TO_DATE('04-02-2023', 'DD-MM-YYYY'), 150, 0, 1000000002, 2, 1000000000000002);

-- Operation 5
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('05-03-2023', 'DD-MM-YYYY'), TO_DATE('04-03-2023', 'DD-MM-YYYY'), TO_DATE('05-03-2023', 'DD-MM-YYYY'), 0, 700, 1000000003, 2, 1000000000000003);

-- Operation 6
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Retrait ', TO_DATE('06-06-2023', 'DD-MM-YYYY'), TO_DATE('06-06-2023', 'DD-MM-YYYY'), TO_DATE('06-06-2023', 'DD-MM-YYYY'), 250, 0, 1000000004, 2,1000000000000004);


-- Operation 7
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('07-04-2023', 'DD-MM-YYYY'), TO_DATE('07-04-2023', 'DD-MM-YYYY'), TO_DATE('07-04-2023', 'DD-MM-YYYY'), 0, 300, 1000000005, 3,1000000000000005);

-- Operation 8
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Retrait', TO_DATE('08-07-2023', 'DD-MM-YYYY'), TO_DATE('08-07-2023', 'DD-MM-YYYY'), TO_DATE('08-07-2023', 'DD-MM-YYYY'), 80, 0, 1000000006, 3,1000000000000006);

-- Operation 9
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('09-06-2023', 'DD-MM-YYYY'), TO_DATE('08-06-2023', 'DD-MM-YYYY'), TO_DATE('09-06-2023', 'DD-MM-YYYY'), 450, 0, 1000000007, 2, 1000000000000007);

-- Operation 10
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('13-10-2023', 'DD-MM-YYYY'), TO_DATE('12-10-2023', 'DD-MM-YYYY'), TO_DATE('13-10-2023', 'DD-MM-YYYY'), 400, 0, 1000000008, 2, 1000000000000008);

-- Operation 11
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Retrait', TO_DATE('14-09-2023', 'DD-MM-YYYY'), TO_DATE('12-09-2023', 'DD-MM-YYYY'), TO_DATE('14-09-2023', 'DD-MM-YYYY'), 100, 0, 1000000009, 2, 1000000000000009);

-- Operation 12
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('15-11-2023', 'DD-MM-YYYY'), TO_DATE('14-11-2023', 'DD-MM-YYYY'), TO_DATE('15-11-2023', 'DD-MM-YYYY'), 0, 250, 1000000010, 2, 1000000000000010);

-- Operation 13
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Retrait', TO_DATE('22-12-2023', 'DD-MM-YYYY'), TO_DATE('20-12-2023', 'DD-MM-YYYY'), TO_DATE('23-12-2023', 'DD-MM-YYYY'), 150, 0, 1000000011, 2, 1000000000000011);

-- Operation 14
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('17-10-2023', 'DD-MM-YYYY'), TO_DATE('17-10-2023', 'DD-MM-YYYY'), TO_DATE('17-10-2023', 'DD-MM-YYYY'), 200, 0, 1000000012, 2, 1000000000000012);

-- Operation 15
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('20-10-2023', 'DD-MM-YYYY'), TO_DATE('19-10-2023', 'DD-MM-YYYY'), TO_DATE('16-03-2024', 'DD-MM-YYYY'), 0, 200, 1000000012, 1, 1000000000000012);

-- Operation 16
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('22-12-2023', 'DD-MM-YYYY'), TO_DATE('22-12-2023', 'DD-MM-YYYY'), TO_DATE('22-12-2023', 'DD-MM-YYYY'), 400, 0, 1000000000, 2, 1000000000000000);

-- Operation 17
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Retrait', TO_DATE('20-11-2023', 'DD-MM-YYYY'), TO_DATE('20-11-2023', 'DD-MM-YYYY'), TO_DATE('20-11-2023', 'DD-MM-YYYY'), 150, 0, 1000000011, 2, 1000000000000011);

-- Operation 18
INSERT INTO Operation_ (Reference_operation, Libelle_operation, Date_comptable, Date_operation, Date_valeur, Montant_debite, Montant_credite, Numero_de_compte, id_statut,Numero_carte)
VALUES (S_OPERATION.nextval, 'Virement', TO_DATE('21-12-2023', 'DD-MM-YYYY'), TO_DATE('21-12-2023', 'DD-MM-YYYY'), TO_DATE('21-12-2023', 'DD-MM-YYYY'), 0, 150, 1000000011, 1, 1000000000000011);


-- Insertion dans la table Epargne
INSERT INTO Epargne (id_epargne, Type_epargne, Type_versement,Montant_verse, Numero_contrat)
VALUES (S_EPARGNE.nextval, 'Livret A', 'Ponctuel', 1000.00,2);

INSERT INTO Epargne (id_epargne, Type_epargne, Type_versement,Montant_verse, Numero_contrat)
VALUES (S_EPARGNE.nextval, 'Livret A', 'Ponctuel', 100.50,8);

INSERT INTO Epargne (id_epargne, Type_epargne, Type_versement, Periodicite_versement, Date_versement, Montant_verse, Numero_contrat)
VALUES (S_EPARGNE.nextval, 'Assurance vie', 'Periodique', 'Mensuel', TO_DATE('06-02-2024', 'DD-MM-YYYY'), 500.00, 9);

INSERT INTO Epargne (id_epargne, Type_epargne, Type_versement, Periodicite_versement, Date_versement, Montant_verse, Numero_contrat)
VALUES (S_EPARGNE.nextval, 'Livret A', 'Periodique', 'Mensuel', TO_DATE('03-07-2024', 'DD-MM-YYYY'), 100.50,11);

INSERT INTO Epargne (id_epargne, Type_epargne, Type_versement, Periodicite_versement, Date_versement, Montant_verse, Numero_contrat)
VALUES (S_EPARGNE.nextval, 'Assurance vie', 'Periodique', 'Annuelle', TO_DATE('16-03-2024', 'DD-MM-YYYY'), 10000, 12 );

-- Insertion dans la table Credit_Amortissement
INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Financement Etudiant', TO_DATE('05-02-2024', 'DD-MM-YYYY'), TO_DATE('05-02-2026', 'DD-MM-YYYY'), 24, 15000.00, TO_DATE('15-04-2024', 'DD-MM-YYYY'), 1500.00, 1.05, 13500.00, 1, 1);

INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Financement Etudiant', TO_DATE('10-03-2024', 'DD-MM-YYYY'), TO_DATE('10-03-2027', 'DD-MM-YYYY'), 36, 17000.00, TO_DATE('20-05-2024', 'DD-MM-YYYY'), 1500.00, 1.05, 15300.00, 3, 1);

INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Financement Etudiant', TO_DATE('15-01-2024', 'DD-MM-YYYY'), TO_DATE('15-01-2028', 'DD-MM-YYYY'), 48, 20000.00, TO_DATE('25-06-2024', 'DD-MM-YYYY'), 1500.00, 1.05, 18000.00, 4, 1);

INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Financement Etudiant', TO_DATE('20-03-2024', 'DD-MM-YYYY'), TO_DATE('20-03-2029', 'DD-MM-YYYY'), 60, 19000.00, TO_DATE('30-07-2024', 'DD-MM-YYYY'), 1500.00, 1.05, 17100.00, 5, 1);

INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Financement Etudiant', TO_DATE('05-05-2024', 'DD-MM-YYYY'), TO_DATE('05-05-2029', 'DD-MM-YYYY'), 60, 18000.00, TO_DATE('05-08-2024', 'DD-MM-YYYY'), 1500.00, 1.05, 16200.00, 6, 1);

INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Financement Etudiant', TO_DATE('15-07-2024', 'DD-MM-YYYY'), TO_DATE('15-07-2028', 'DD-MM-YYYY'), 48, 16000.00, TO_DATE('10-09-2024', 'DD-MM-YYYY'), 1500.00, 1.05, 14400.00, 7, 1);

INSERT INTO Credit_Amortissement (id_credit, Objet_credit, Date_souscription, Date_echeance, Duree_nbremois, Nominal_montant_emprunt, Prochaine_echeance, Montant_echeance, Taux_nominal, Encours, Numero_contrat, id_type_amortissement)
VALUES 
    (S_CREDIT_AMORTISSEMENT.nextval, 'Pret Immobilier', TO_DATE('20-09-2024', 'DD-MM-YYYY'), TO_DATE('20-09-2028', 'DD-MM-YYYY'), 48, 200000.00, TO_DATE('15-10-2024', 'DD-MM-YYYY'), 4166.67, 1.04, 195833.33, 10, 2);


COMMIT;

SPOOL OFF
