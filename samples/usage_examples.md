# Health Center Database - Usage Examples

## 📌 Basic Operations

### 1. Registering a New Patient

`````sql
INSERT INTO patient VALUES (
  15,
  'Sarah',
  'Elizabeth',
  'Connor',
  DATE '1995-07-15',
  'F',
  '101 Future St, Techville, CA 90210',
  5551234567,
  's.connor@email.com',
  5559876543,
  'MediCare Plus',
  'Atorvastatin, Vitamin D'
);
`````
### 2. Scheduling an Appointment
```` sql
INSERT INTO appointment VALUES (
  25,
  15,
  3,
  DATE '2023-12-15 14:30:00',
  'Exam Room 4',
  'Annual Physical',
  1,
  'Scheduled'
);
````
### 3. Find All Appointments for a Patient
```` sql
SELECT a.appid, a.DateTimeofapp, d.fn || ' ' || d.ln AS doctor_name
FROM appointment a
JOIN doctor d ON a.doctorid = d.doctorid
WHERE a.patientid = 15
ORDER BY a.DateTimeofapp DESC;

````
### 4. View Patient Medical History
```` sql
SELECT mr.dateofvisit, mr.diagnosis, mr.treatmentplan,
       d.fn || ' ' || d.ln AS treating_doctor
FROM medicalrecord mr
JOIN doctor d ON mr.doctorid = d.doctorid
WHERE mr.patientid = 15;
````
### 5. Ordering Lab Tests
```` sql
INSERT INTO labtest VALUES (
  15,
  15,
  3,
  SYSDATE,
  'CBC',
  NULL,
  15,
  'Pending'
);
````
### 6. Updating Treatment Plan
```` sql
UPDATE medicalrecord
SET treatmentplan = 'Amoxicillin 500mg TID, Rest for 5 days',
    notes = 'Patient shows signs of bacterial infection'
WHERE id = 15;
````
### 7. Daily Appointment Schedule
```` sql
SELECT
  a.appid,
  p.fn || ' ' || p.ln AS patient_name,
  a.DateTimeofapp,
  a.Location,
  d.fn || ' ' || d.ln AS doctor_name
FROM appointment a
JOIN patient p ON a.patientid = p.patientid
JOIN doctor d ON a.doctorid = d.doctorid
WHERE TRUNC(a.DateTimeofapp) = TRUNC(SYSDATE)
ORDER BY a.DateTimeofapp;
````
### 8. Medication Usage Report
```` sql
SELECT
  m.name AS medication,
  COUNT(t.patientid) AS patient_count,
  c.name AS most_common_department
FROM medication m
LEFT JOIN takes t ON m.id = t.medicationid
LEFT JOIN clinicaldept c ON (
  SELECT dept_no
  FROM doctor
  WHERE doctorid IN (
    SELECT doctorid
    FROM treats
    WHERE patientid = t.patientid
    LIMIT 1
  )
) = c.id
GROUP BY m.name, c.name
ORDER BY patient_count DESC;
````
### 9. Retrieve Critical Patient Information
```` sql
SELECT
  p.fn || ' ' || p.ln AS patient_name,
  p.dob,
  p.medications,
  i.coveragedetails,
  mr.diagnosis,
  mr.treatmentplan
FROM patient p
LEFT JOIN insurance i ON p.patientid = i.patientid
LEFT JOIN medicalrecord mr ON p.patientid = mr.patientid
WHERE p.patientid = 15
ORDER BY mr.dateofvisit DESC
FETCH FIRST 1 ROW ONLY;

````
`````
