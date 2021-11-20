/*TO CREATE DATABASE*/

create database saviours



/*TO CREATE TABLE*/

CREATE TABLE saviours.medico 
(
  SL_NO INT NOT NULL,
  ID INT NOT NULL,
  COMPANY VARCHAR(45) NOT NULL,
  MEDICINE_NAME VARCHAR(45) NOT NULL,
  PRICE VARCHAR(45) NOT NULL,
  DOSAGE VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID)
);



/*TO INSERT DATA INTO THE TABLE*/

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (1 ,101 , "Jagsonpal Pharmaceuticals Ltd", "Amoxycillin 500mg Capsule","Rs 5.7","OD","bacterial infections");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (2 ,110 , "Abbott", "Brufen 400 Tablet","Rs 1.6","OD","pain-relieving");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (3 ,202 , "Knoll Pharmaceuticals Ltd", "Cetrizine Tablet","Rs 1.85","BD","cold");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (4 ,303 , "Walter Bushnell", "Drotin DS Tablet","Rs 12.37","OM","menstrual pain and abdominal pain");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (5 ,404 , "Cipla Ltd", "Paracip 500 Tablet","Rs Rs 1.0","BD","fever");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (6 ,505 , "Sanofi India Ltd", "Soframycin  Skin Cream","Rs Rs 42.7","OD","bacterial skin infections");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (7 ,606 , "Medley Pharmaceuticals", "Oncet 3D Tablet SR","Rs 21.6","BD","allergy symptoms");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (8 ,707 , "Sun Pharmaceutical Industries Ltd", "Nexito Plus Tablet","Rs 1.25","OM","anxiety disorder");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (9 ,808 , "Ipca Laboratories Ltd", "Lariago 250mg Tablet","Rs 1.25","ON","malaria");

INSERT INTO saviours.data (SL_NO , ID, COMPANY , MEDICINE, PRICE, DOSAGE, DISEASE) VALUES (10 ,909 , "Karnataka Antibiotics & Pharmaceuticals Ltd", "Grenil Tablet","Rs 5.12","OD","migraine");



/*TO DISPLAY THE TABLE*/

select * from data

