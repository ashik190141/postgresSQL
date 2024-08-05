-- Active: 1722495303135@@127.0.0.1@5432@postgres

SHOW timezone;

SELECT now();

create table timeZ (ts TIMESTAMP without time zone , tsz TIMESTAMP with time zone );

INSERT into timeZ VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * from timeZ;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(),'DD');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

select age(CURRENT_DATE, '1998-12-11');

SELECT extract(YEAR from  '2024-01-25'::date);