create database if not exists test;
create table test.sample (index int, tgl STRING, a float, b float, c float, d float, e float, f float, g float, h float) row format delimited fields terminated by ',' stored as textfile;
use test; 
show tables;
load data local inpath 'avocado.csv' into table test.sample;
select * from sample WHERE a>0.5 AND c>10000 limit 50;
