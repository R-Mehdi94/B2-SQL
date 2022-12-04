use thali ;

insert into Typechambre(code,libelle) values(1 , 'Chambre standard simple'),
insert into Typechambre(code,libelle) values(2 , 'Chambre standard double'),
insert into Typechambre(code,libelle) values(3 , 'Chambre confort simple'),
insert into Typechambre(code,libelle) values(4 , 'Chambre confort double'),
insert into Typechambre(code,libelle) values(5 , 'Suite');

insert into Objectif(code,libelle) value(1 , 'Ressourcement général') ;
insert into Objectif(code,libelle) value(2 , "Entretien d'un bon état de santé") ;


insert into Soin(code,libelle) value(1 , 'massages normaux') ;
insert into Soin(code,libelle) value(2 , 'massages relaxants') ;
insert into Soin(code,libelle) value(3 , 'douches à affusion') ;
insert into Soin(code,libelle) value(4 , 'bains bouillonnants algués') ;
insert into Soin(code,libelle) value(5 , 'soin hydratant du visage') ;
insert into Soin(code,libelle) value(6 , "enveloppements d'algues") ;
insert into Soin(code,libelle) value(7 , 'douches sous-marines') ;
insert into Soin(code,libelle) value(8 , 'bains hydromassants') ;
insert into Soin(code,libelle) value(9 , 'manucure') ;
insert into Soin(code,libelle) value(10 , 'soin des pieds') ;


insert into Criteres(num,cure,libelle) value(1 , 'AM55' , 'tour de taille') ;
insert into Criteres(num,cure,libelle) value(2 , 'AM55' , 'tour de hanche') ;
insert into Criteres(num,cure,libelle) value(3 , 'AM55' , 'tour de cuisse') ;


insert into Cure(code,nom,vertus,visiteMedicale,remboursement possible) value('AM55' , 'Amincissement' , '' , False , False) ;
insert into Cure(code,nom,vertus,visiteMedicale,remboursement possible) value('BE33' , 'Bien-être' , '' , False , False) ;




insert into Comporter(cure,soin,nb) value('BE33' , 1 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 2 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 3 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 4 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 5 , 1),
insert into Comporter(cure,soin,nb) value('BE33' , 6 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 7 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 8 , 3),
insert into Comporter(cure,soin,nb) value('BE33' , 9 , 1),
insert into Comporter(cure,soin,nb) value('BE33' , 10 , 1);



insert into Saison(code,annee,libelle) value(1,2021,'Saison hivernale'),
insert into Saison(code,annee,libelle) value(2,2021,'Basse saison'),
insert into Saison(code,annee,libelle) value(3,2021,'Moyenne saison'),
insert into Saison(code,annee,libelle) value(4,2021,'Haute saison');




insert into Tarifercure(cure,saison,montant) value('BE33' , 1 , 440),
insert into Tarifercure(cure,saison,montant) value('BE33' , 2 , 480),
insert into Tarifercure(cure,saison,montant) value('BE33' , 3 , 520),
insert into Tarifercure(cure,saison,montant) value('BE33' , 4 , 570);




insert into Situation(code,libelle) value(1 , 'mer'),
insert into Situation(code,libelle) value(2 , 'jardin'),
insert into Situation(code,libelle) value(3 , 'rue');







insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 1 , 1 , 200),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 1 , 2 , 190),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 1 , 3 , 175),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 2 , 1 , 150),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 2 , 2 , 140),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 2 , 3 , 125),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 3 , 1 , 230),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 3 , 2 , 220),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 3 , 3 , 200),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 4 , 1 , 175),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 4 , 2 , 165),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 4 , 3 , 150),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 5 , 1 , 400),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(1 , 2021 , 5 , 2 , 375),


insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 1 , 1 , 220),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 1 , 2 , 200),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 1 , 3 , 190),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 2 , 1 , 170),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 2 , 2 , 150),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 2 , 3 , 140),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 3 , 1 , 250),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 3 , 2 , 230),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 3 , 3 , 220),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 4 , 1 , 195),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 4 , 2 , 175),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 4 , 3 , 165),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 5 , 1 , 425),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(2 , 2021 , 5 , 2 , 400),


insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 1 , 1 , 250),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 1 , 2 , 230),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 1 , 3 , 220),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 2 , 1 , 200),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 2 , 2 , 180),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 2 , 3 , 170),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 3 , 1 , 280),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 3 , 2 , 255),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 3 , 3 , 245),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 4 , 1 , 225),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 4 , 2 , 205),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 4 , 3 , 195),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 5 , 1 , 455),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(3 , 2021 , 5 , 2 , 450),


insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 1 , 1 , 270),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 1 , 2 , 240),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 1 , 3 , 230),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 2 , 1 , 230),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 2 , 2 , 190),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 2 , 3 , 175),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 3 , 1 , 300),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 3 , 2 , 265),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 3 , 3 , 250),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 4 , 1 , 250),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 4 , 2 , 200),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 4 , 3 , 175),

insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 5 , 1 , 525),
insert into Tariferhébergement(saison,annee,typechambre,situation,tarif) value(4 , 2021 , 5 , 2 , 455);




insert into Periode(num,saison,annee,debut,fin) value(1 , 1 , 2021 , '2021-01-15' , '2021-02-04'),

insert into Periode(num,saison,annee,debut,fin) value(1 , 2 , 2021 , '2021-02-19' , '2021-03-25'),
insert into Periode(num,saison,annee,debut,fin) value(2 , 2 , 2021 , '2021-10-08' , '2021-12-02'),

insert into Periode(num,saison,annee,debut,fin) value(1 , 3 , 2021 , '2021-02-05' , '2021-02-18'),
insert into Periode(num,saison,annee,debut,fin) value(2 , 3 , 2021 , '2021-03-26' , '2021-07-08'),
insert into Periode(num,saison,annee,debut,fin) value(3 , 3 , 2021 , '2021-09-24' , '2021-10-07'),

insert into Periode(num,saison,annee,debut,fin) value(1 , 4 , 2021 , '2021-07-09' , '2021-07-23');









