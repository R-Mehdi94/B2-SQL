DROP DATABASE IF EXISTS thali;

CREATE DATABASE IF NOT EXISTS thali;
USE thali;
# -----------------------------------------------------------------------------
#       TABLE : TYPECHAMBRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TYPECHAMBRE
 (
   CODETYPECH int NOT NULL  ,
   LIBELLETYPECH CHAR(32) NULL  
   , PRIMARY KEY (CODETYPECH) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CRITÈRE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CRITÈRE
 (
   NUMCRITÈRE CHAR(32) NOT NULL  ,
   LIBELLECRITÈRE CHAR(32) NULL  
   , PRIMARY KEY (NUMCRITÈRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : PERIODE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS PERIODE
 (
   ANNEE CHAR(32) NOT NULL  ,
   CODECURE CHAR(32) NOT NULL  ,
   CODESAISON CHAR(32) NOT NULL  ,
   NUMPERIODE CHAR(32) NOT NULL  ,
   DETADEBUT CHAR(32) NULL  
   , PRIMARY KEY (ANNEE,CODECURE,CODESAISON,NUMPERIODE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE PERIODE
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_PERIODE_SAISON
     ON PERIODE (ANNEE ASC,CODECURE ASC,CODESAISON ASC);

# -----------------------------------------------------------------------------
#       TABLE : SITUATION
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SITUATION
 (
   CODESITUATION CHAR(32) NOT NULL  ,
   LIBELLESITUATION CHAR(32) NULL  
   , PRIMARY KEY (CODESITUATION) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : SAISON
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SAISON
 (
   ANNEE CHAR(32) NOT NULL  ,
   CODECURE CHAR(32) NOT NULL  ,
   CODESAISON CHAR(32) NOT NULL  ,
   LIBELLESAISON CHAR(32) NULL  
   , PRIMARY KEY (ANNEE,CODECURE,CODESAISON) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE SAISON
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_SAISON_CURE
     ON SAISON (CODECURE ASC);

CREATE  INDEX I_FK_SAISON_ANNEE
     ON SAISON (ANNEE ASC);

# -----------------------------------------------------------------------------
#       TABLE : ANNEE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ANNEE
 (
   ANNEE CHAR(32) NOT NULL  
   , PRIMARY KEY (ANNEE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : SOIN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS SOIN
 (
   CODESOIN CHAR(32) NOT NULL  ,
   LIBELLESOIN CHAR(32) NULL  ,
   DESCRIPSOIN CHAR(32) NULL  ,
   DUREE CHAR(32) NULL  
   , PRIMARY KEY (CODESOIN) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : OBJECTIF
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS OBJECTIF
 (
   CODEOBJECTIF INT(32) NOT NULL  ,
   LIBELLEOBJECTIF CHAR(32) NULL  
   , PRIMARY KEY (CODEOBJECTIF) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CURE
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CURE
 (
   CODECURE CHAR(32) NOT NULL  ,
   NUMCURE CHAR(32) NULL  ,
   VERTUS CHAR(32) NULL  ,
   VISITEMEDICALE CHAR(32) NULL  ,
   REMBOURSEMENTPOSSIBLE CHAR(32) NULL  
   , PRIMARY KEY (CODECURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : EVALUER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EVALUER
 (
   CODECURE CHAR(32) NOT NULL  ,
   NUMCRITÈRE CHAR(32) NOT NULL  
   , PRIMARY KEY (CODECURE,NUMCRITÈRE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE EVALUER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_EVALUER_CURE
     ON EVALUER (CODECURE ASC);

CREATE  INDEX I_FK_EVALUER_CRITÈRE
     ON EVALUER (NUMCRITÈRE ASC);

# -----------------------------------------------------------------------------
#       TABLE : TARIFER_HEBERGEMENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS TARIFER_HEBERGEMENT
 (
   CODETYPECH CHAR(32) NOT NULL  ,
   CODESITUATION CHAR(32) NOT NULL  ,
   ANNEE CHAR(32) NOT NULL  ,
   CODECURE CHAR(32) NOT NULL  ,
   CODESAISON CHAR(32) NOT NULL  ,
   TARIF CHAR(32) NULL  
   , PRIMARY KEY (CODETYPECH,CODESITUATION,ANNEE,CODECURE,CODESAISON) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE TARIFER_HEBERGEMENT
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_TARIFER_HEBERGEMENT_TYPECHAMBRE
     ON TARIFER_HEBERGEMENT (CODETYPECH ASC);

CREATE  INDEX I_FK_TARIFER_HEBERGEMENT_SITUATION
     ON TARIFER_HEBERGEMENT (CODESITUATION ASC);

CREATE  INDEX I_FK_TARIFER_HEBERGEMENT_SAISON
     ON TARIFER_HEBERGEMENT (ANNEE ASC,CODECURE ASC,CODESAISON ASC);

# -----------------------------------------------------------------------------
#       TABLE : COMPORTER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS COMPORTER
 (
   CODESOIN CHAR(32) NOT NULL  ,
   CODECURE CHAR(32) NOT NULL  ,
   NB int(32) NOT NULL
   , PRIMARY KEY (CODESOIN,CODECURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE COMPORTER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_COMPORTER_SOIN
     ON COMPORTER (CODESOIN ASC);

CREATE  INDEX I_FK_COMPORTER_CURE
     ON COMPORTER (CODECURE ASC);

# -----------------------------------------------------------------------------
#       TABLE : AVOIR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS AVOIR
 (
   CODEOBJECTIF CHAR(32) NOT NULL  ,
   CODECURE CHAR(32) NOT NULL  
   , PRIMARY KEY (CODEOBJECTIF,CODECURE) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE AVOIR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_AVOIR_OBJECTIF
     ON AVOIR (CODEOBJECTIF ASC);

CREATE  INDEX I_FK_AVOIR_CURE
     ON AVOIR (CODECURE ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE PERIODE 
  ADD FOREIGN KEY FK_PERIODE_SAISON (ANNEE,CODECURE,CODESAISON)
      REFERENCES SAISON (ANNEE,CODECURE,CODESAISON) ;


ALTER TABLE SAISON 
  ADD FOREIGN KEY FK_SAISON_CURE (CODECURE)
      REFERENCES CURE (CODECURE) ;


ALTER TABLE SAISON 
  ADD FOREIGN KEY FK_SAISON_ANNEE (ANNEE)
      REFERENCES ANNEE (ANNEE) ;


ALTER TABLE EVALUER 
  ADD FOREIGN KEY FK_EVALUER_CURE (CODECURE)
      REFERENCES CURE (CODECURE) ;


ALTER TABLE EVALUER 
  ADD FOREIGN KEY FK_EVALUER_CRITÈRE (NUMCRITÈRE)
      REFERENCES CRITÈRE (NUMCRITÈRE) ;


ALTER TABLE TARIFER_HEBERGEMENT 
  ADD FOREIGN KEY FK_TARIFER_HEBERGEMENT_TYPECHAMBRE (CODETYPECH)
      REFERENCES TYPECHAMBRE (CODETYPECH) ;


ALTER TABLE TARIFER_HEBERGEMENT 
  ADD FOREIGN KEY FK_TARIFER_HEBERGEMENT_SITUATION (CODESITUATION)
      REFERENCES SITUATION (CODESITUATION) ;


ALTER TABLE TARIFER_HEBERGEMENT 
  ADD FOREIGN KEY FK_TARIFER_HEBERGEMENT_SAISON (ANNEE,CODECURE,CODESAISON)
      REFERENCES SAISON (ANNEE,CODECURE,CODESAISON) ;


ALTER TABLE COMPORTER 
  ADD FOREIGN KEY FK_COMPORTER_SOIN (CODESOIN)
      REFERENCES SOIN (CODESOIN) ;


ALTER TABLE COMPORTER 
  ADD FOREIGN KEY FK_COMPORTER_CURE (CODECURE)
      REFERENCES CURE (CODECURE) ;


ALTER TABLE AVOIR 
  ADD FOREIGN KEY FK_AVOIR_CURE (CODECURE)
      REFERENCES CURE (CODECURE) ;



