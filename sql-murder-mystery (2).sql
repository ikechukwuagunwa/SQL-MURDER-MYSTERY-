--I querried the crime scene report with the code bellow
SELECT *
FROM crime_scene_report
WHERE type = 'murder'AND city = 'SQL City'AND date = 20180115;

--According to the description on the crime scene report, it was said that security footage shows 2 witnessness of which one of them lives in the last of Northwestern DR and the second witness said to be Annabel lives somewhere in Franklin Ave.
SELECT *
FROM person
Where address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

SELECT *
FROM person
WHERE name LIKE '%Annabel%'
AND address_street_name = 'Franklin Ave';

SELECT pe.id, pe.name, int.transcript
FROM person pe
Join interview int
ON pe.id = int.person_id
WHERE pe.id = 16371 OR pe.id = 14887;

SELECT pe.name, gm.id, gm.membership_status, gc.check_in_date 
FROM get_fit_now_member gm
JOIN person pe
ON pe.id = gm.person_id
JOIN drivers_license dr
ON dr.id = pe.license_id
JOIN get_fit_now_check_in gc
ON gc.membership_id = gm.id
WHERE gm.id LIKE '48Z%'
AND gm.membership_status = 'gold'
AND dr.plate_number LIKE '%H42W%'
AND gc.check_in_date = 20180109



SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = 20180109
AND membership_id LIKE '%48Z%'

SELECT *
FROM get_fit_now_member
WHERE id IN ('48Z7A','48Z55')

SELECT person.name, drivers_license.plate_number
FROM person
JOIN drivers_license
ON drivers_license.id = person.license_id
WHERE person.id IN (67318,28819)

SELECT *
FROM drivers_license
where car_make like '%Tesla%'
AND car_model like '%Model S%'
AND hair_color = 'red'
AND height BETWEEN 65 and 67
Where plate_number like '%0H42W2%'

select *
FROM income
where ssn = 871539279



select *
from person
where name like '%Jeremy Bowers%'



select *
FROM interview
where person_id = 67318;

select *
from facebook_event_checkin





SELECT pe.name, gm.id, gm.membership_status, gc.check_in_date 
FROM get_fit_now_member gm
JOIN person pe
ON pe.id = gm.person_id
JOIN drivers_license dr
ON dr.id = pe.license_id
JOIN get_fit_now_check_in gc
ON gc.membership_id = gm.id
WHERE gm.id LIKE '48Z%'AND gm.membership_status = 'gold'
AND dr.plate_number LIKE '%H42W%'AND gc.check_in_date = 20180109;



select *
from person
where name like '%Jeremy Bowers%';


SELECT *
FROM get_fit_now_check_in
WHERE check_in_date = 20180109
AND membership_id LIKE '%48Z%';

SELECT *
FROM get_fit_now_member
WHERE id IN ('48Z7A','48Z55');

SELECT pe.name, dr.plate_number
FROM person pe
JOIN drivers_license dr
ON dr.id = pe.license_id
WHERE pe.id IN (67318,28819);

SELECT pe.name, dr.height, dr.hair_color, dr.car_make, dr.car_model, dr.gender
from drivers_license dr
JOIN person pe
ON dr.id = pe.license_id
where dr.height between 65 and 67 and dr.hair_color = 'red' and dr.gender = 'female'
      and dr.car_make = 'Tesla' AND dr.car_model = 'Model S'
      and pe.id IN (SELECT f.person_id
                   from facebook_event_checkin f
                   where f.event_name = 'SQL Symphony Concert');
                   
INSERT INTO solution VALUES (1, "Miranda Priestly");

SELECT value FROM solution;