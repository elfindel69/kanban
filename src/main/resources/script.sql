create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
create table client (id bigint not null auto_increment, nom varchar(255), ville_id bigint, primary key (id)) engine=InnoDB
create table colonne (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table developpeur (id bigint not null auto_increment, date_naissance date, email varchar(255), nom varchar(255), numero_carte_bleue varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table projet (id bigint not null auto_increment, date_creation datetime(6), date_livraison datetime(6), nom varchar(255) not null, client_id bigint, primary key (id)) engine=InnoDB
create table projet_developpeurs (projets_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table tache (id bigint not null auto_increment, date_creation date, intitule varchar(255), nb_heures_estimees integer not null, nb_heures_reelles integer not null, colonne_id bigint, projet_id bigint, type_tache_id bigint, primary key (id)) engine=InnoDB
create table tache_developpeurs (taches_id bigint not null, developpeurs_id bigint not null) engine=InnoDB
create table type_tache (id bigint not null auto_increment, couleur varchar(255), description longtext, nom varchar(50), primary key (id)) engine=InnoDB
create table ville (id bigint not null auto_increment, code_postal varchar(255), nom varchar(255), primary key (id)) engine=InnoDB
alter table client add constraint FKacdpdqoo2kra7incvinascg7 foreign key (ville_id) references ville (id)
alter table projet add constraint FKocfbp78fn7nchnfacacpyvhp8 foreign key (client_id) references client (id)
alter table projet_developpeurs add constraint FKr6dduuhn87e6166jjjawekai8 foreign key (developpeurs_id) references developpeur (id)
alter table projet_developpeurs add constraint FKlvjbq3026ailgophqb4qj7231 foreign key (projets_id) references projet (id)
alter table tache add constraint FKmuat2tmhx8uf8dy9i2gbvbs8t foreign key (colonne_id) references colonne (id)
alter table tache add constraint FKf97vcdrmyltn9s75dgh2tlw70 foreign key (projet_id) references projet (id)
alter table tache add constraint FKg2pfcgqj0f01x5d39c0xt9rmi foreign key (type_tache_id) references type_tache (id)
alter table tache_developpeurs add constraint FK7nl7aaugw3dpdcuosd1eapm2s foreign key (developpeurs_id) references developpeur (id)
alter table tache_developpeurs add constraint FKx2tbdej5va57day20wxs9jfk foreign key (taches_id) references tache (id)
