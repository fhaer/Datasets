-- psql script for PostgreSQL
-- psql -h <ip> -p <por> -U <user> -d <db> -f "1_Extract.psql" 

DROP SCHEMA IF EXISTS weather_dwh CASCADE;
CREATE SCHEMA weather_dwh;
SET SCHEMA 'weather_dwh';

DROP TABLE IF EXISTS staging_e_klimadaten;
CREATE TABLE staging_e_klimadaten
(
  stations_id integer NOT NULL,
  mess_datum integer NOT NULL,
  qualitaets_niveau integer,
  lufttemperatur numeric(4,1),
  dampfdruck numeric(4,1),
  bedeckungsgrad numeric(4,1),
  luftdruck_stationshoehe numeric(6,2),
  rel_feuchte numeric(5,2),
  windgeschwindigkeit numeric(4,1),
  lufttemperatur_max numeric(4,1),
  lufttemperatur_min numeric(4,1),
  lufttemperatur_am_erdboden_min numeric(4,1),
  windspitze_max numeric(4,1),
  niederschlagshoehe numeric(4,1),
  niederschlagshoehe_ind integer,
  sonnenscheindauer numeric(6,3),
  schneehoehe integer,
  eod character(3),
  CONSTRAINT pk_klimadaten PRIMARY KEY (stations_id, mess_datum)
);

DROP TABLE IF EXISTS staging_e_stationsmetadaten;
CREATE TABLE staging_e_stationsmetadaten
(
  export_id serial,
  stations_id integer,
  stationshoehe integer,
  geogr_breite numeric(6,4),
  geogr_laenge numeric(6,4),
  von_datum character(8),
  bis_datum character(8),
  stationsname text,
  CONSTRAINT staging_e_stationsmetadaten_pkey PRIMARY KEY (export_id)
);

DROP TABLE IF EXISTS staging_e_stationen;
CREATE TABLE staging_e_stationen
(
  stations_id integer,
  stationsname text,
  ort text,
  bundesland text,
  CONSTRAINT staging_e_stationen_pkey PRIMARY KEY (stations_id)
);

\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19000801_20151231_05792.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19350101_20151231_01303.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19360101_20151231_01975.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19470101_20151231_01691.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19480101_20151231_00433.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19490101_20151231_00282.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_klimadaten from 'DWD-Data/Klimadaten/produkt_klima_Tageswerte_19530101_20151231_04931.txt' with CSV HEADER DELIMITER ';';

\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_00282_19490101_20151231.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_00433_19480101_20151231.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_01303_19350101_20151231.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_01691_19470101_20151231.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_01975_19360101_20151231.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_04931_19530101_20151231.txt' with CSV HEADER DELIMITER ';';
\copy staging_e_stationsmetadaten(stations_id,stationshoehe,geogr_breite,geogr_laenge,von_datum,bis_datum,stationsname) from 'DWD-Data/Stationsmetadaten/Stationsmetadaten_klima_stationen_05792_19000801_20151231.txt' with CSV HEADER DELIMITER ';';
 
\copy staging_e_stationen from 'DWD-Data/Stationen.txt' with CSV HEADER DELIMITER ';' ENCODING 'UTF-8';
