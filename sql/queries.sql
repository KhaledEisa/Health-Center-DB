select a.DateTimeofapp,
    p.fn,
    p.ln
from patient p
    join appointement a on p.patientid = a.appid
where p.fn = 'John'
    and p.ln = 'Smith';
select c.name,
    l.typeoftest
from labtest l
    join clinicaldept c on l.id = c.id;
select r.fn,
    r.ln,
    a.appid
from receptionist r
    join appointement a on r.id = a.appid
where a.appid = 1;
SELECT md.id AS medicalrecord_id,
    md.dateofvisit,
    md.diagnosis,
    md.treatmentplan,
    d.doctorid,
    d.fn AS doctor_firstname,
    d.ln AS doctor_lastname,
    d.speciality
FROM medicalrecord md
    JOIN doctor d ON md.doctorid = d.doctorid
WHERE d.fn = 'John'
    AND d.ln = 'Smith';
select *
from medication
where purpose like '%Pain relief%';
select count(patientid),
    c.name
from patient p
    join clinicaldept c on p.patientid = c.id
group by c.name;
SELECT d.doctorid,
    d.fn AS doctor_firstname,
    d.ln AS doctor_lastname,
    d.speciality,
    a.appid,
    a.patientid,
    a.DateTimeofapp,
    a.Location,
    a.ReasonofApp,
    a.dept_no
FROM doctor d
    JOIN appointement a ON d.doctorid = a.doctorid
WHERE a.DateTimeofapp = TO_DATE(
        '11/25/2023 09:30:00 AM',
        'MM/DD/YYYY HH:MI:SS AM'
    );
SELECT n.nurseid,
    n.fn AS nurse_firstname,
    n.ln AS nurse_lastname,
    p.fn AS patient_firstname,
    p.ln AS patient_lastname,
    p.dob
FROM nurse n
    JOIN patient p ON n.patientid = p.patientid
WHERE p.fn = 'Robert';
select *
from patient
where medications like '%Losartan%';
select *
from medicalrecord m
    natural join patient p
where p.fn = 'David'
    and p.ln = 'Miller';
select *
from patient
where insuranceinfo is not null;