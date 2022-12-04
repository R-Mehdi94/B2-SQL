use gazouille ;

insert into Gazouilleur(idGazouilleur, nomGazouilleur) value(1,"Walid94");
insert into Gazouilleur(idGazouilleur, nomGazouilleur) value(2,"Taizer");
insert into Gazouilleur(idGazouilleur, nomGazouilleur) value(3,"Anonymous75");
insert into Gazouilleur(idGazouilleur, nomGazouilleur) value(4,"Abdek_RyAuk");

insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(1, "Invite party", "21-07-16", 2);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(2, "SDK", "21-06-20", 2);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(3, "Envoie le lien", "20-07-10", 2);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(4, "Qui sort ?", "22-07-15", 3);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(5, "Sa joue ?", "21-05-1", 4);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(6, "Qui peut m'envoyer les screens", "22-08-20", 3);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(7, "Abdel invite", "21-01-11", 4);
insert into Gazouillis(idGazouillis, texte,dateGazouillis,idGazouilleur) value(8, "jsp", "21-04-16", 1);

insert into Suivre(abonne, suivi) value(1,3);
insert into Suivre(abonne, suivi) value(3,4);
insert into Suivre(abonne, suivi) value(2,1);
insert into Suivre(abonne, suivi) value(4,2);

