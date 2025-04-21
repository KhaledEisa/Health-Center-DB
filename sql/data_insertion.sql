-- Patient Data
INSERT INTO patient
VALUES (
        1,
        'John',
        'David',
        'Smith',
        DATE '1980-05-23',
        'M',
        '123 Main St, Anytown, CA 12345',
        1234567890,
        'john.smith@email.com',
        9876543210,
        'Blue Cross Blue Shield',
        'Lisinopril, Metformin'
    );
INSERT INTO patient
VALUES (
        2,
        'Mary',
        'Elizabeth',
        'Johnson',
        DATE '1991-10-17',
        'F',
        '456 Oak Ave, Anytown, CA 12345',
        9876543210,
        'mary.johnson@email.com',
        1234567890,
        'UnitedHealthcare',
        'Ibuprofen, Omeprazole'
    );
INSERT INTO patient
VALUES (
        3,
        'Robert',
        'Michael',
        'Williams',
        DATE '2003-03-09',
        'M',
        '789 Elm St, Anytown, CA 12345',
        1112223333,
        'robert.williams@email.com',
        8889991234,
        'Aetna',
        'Losartan, Aspirin'
    );
-- Additional patients
INSERT INTO patient
VALUES (
        4,
        'Sarah',
        'Anne',
        'Brown',
        DATE '1975-07-14',
        'F',
        '321 Pine Rd, Anytown, CA 12345',
        5551234567,
        'sarah.brown@email.com',
        5559876543,
        'Kaiser Permanente',
        'Atorvastatin, Levothyroxine'
    );
INSERT INTO patient
VALUES (
        5,
        'David',
        'William',
        'Miller',
        DATE '1988-12-30',
        'M',
        '654 Maple Dr, Anytown, CA 12345',
        4445556666,
        'david.miller@email.com',
        7778889999,
        'Cigna',
        'Metoprolol, Albuterol'
    );
-- Appointment Data
INSERT INTO appointement
VALUES (
        1,
        1,
        1,
        TO_DATE('2023-11-25 09:30', 'YYYY-MM-DD HH24:MI'),
        'Exam Room 3',
        'Annual Checkup',
        1
    );
INSERT INTO appointement
VALUES (
        2,
        2,
        2,
        TO_DATE('2023-12-02 14:15', 'YYYY-MM-DD HH24:MI'),
        'Telehealth',
        'Follow-up Consultation',
        2
    );
INSERT INTO appointement
VALUES (
        3,
        3,
        3,
        TO_DATE('2023-12-10 10:00', 'YYYY-MM-DD HH24:MI'),
        'Exam Room 2',
        'Blood Pressure Check',
        3
    );
-- Additional appointments
INSERT INTO appointement
VALUES (
        4,
        4,
        1,
        TO_DATE('2023-12-15 11:30', 'YYYY-MM-DD HH24:MI'),
        'Exam Room 1',
        'Diabetes Management',
        1
    );
INSERT INTO appointement
VALUES (
        5,
        5,
        2,
        TO_DATE('2023-12-20 13:45', 'YYYY-MM-DD HH24:MI'),
        'Exam Room 4',
        'Pediatric Vaccination',
        2
    );
-- Lab Test Data
INSERT INTO labtest
VALUES (
        1,
        1,
        1,
        DATE '2023-12-06',
        'Blood test',
        'Normal results',
        1
    );
INSERT INTO labtest
VALUES (
        2,
        2,
        2,
        DATE '2023-11-19',
        'Allergy panel',
        'Positive for dust mites',
        2
    );
INSERT INTO labtest
VALUES (
        3,
        3,
        3,
        DATE '2023-10-26',
        'Lung function test',
        'Mild airway obstruction',
        3
    );
-- Additional lab tests
INSERT INTO labtest
VALUES (
        4,
        4,
        1,
        DATE '2023-12-16',
        'Hemoglobin A1C',
        'Elevated at 7.2%',
        4
    );
INSERT INTO labtest
VALUES (
        5,
        5,
        2,
        DATE '2023-12-21',
        'Complete Blood Count',
        'Normal range',
        5
    );
-- Clinical Department Data
INSERT INTO clinicaldept
VALUES (
        1,
        'General Medicine',
        'Main Building, Floor 2',
        'Outpatient',
        'Dr. Ahmed Mohamed',
        102345678,
        'ahmed.mohamed@gmail.com'
    );
INSERT INTO clinicaldept
VALUES (
        2,
        'Pediatrics',
        'West Wing, Floor 3',
        'Inpatient',
        'Dr. Sarah Samir',
        119876543,
        'sarah.samir@hotmail.com'
    );
INSERT INTO clinicaldept
VALUES (
        3,
        'Cardiology',
        'East Wing, Floor 5',
        'Outpatient',
        'Dr. Omar Hassan',
        123579102,
        'omar.hassan@yahoo.com'
    );
-- Additional departments
INSERT INTO clinicaldept
VALUES (
        4,
        'Oncology',
        'North Wing, Floor 4',
        'Both',
        'Dr. Peter Johnson',
        134567890,
        'peter.johnson@hospital.com'
    );
INSERT INTO clinicaldept
VALUES (
        5,
        'Neurology',
        'South Wing, Floor 6',
        'Outpatient',
        'Dr. Emily Wilson',
        145678901,
        'emily.wilson@hospital.com'
    );
-- Receptionist Data
INSERT INTO receptionist
VALUES (
        1,
        'Ahmed',
        'Sayed',
        'Ali',
        'M',
        '123 Main Street, Cairo',
        101234567,
        'ahmed.ali@gmail.com'
    );
INSERT INTO receptionist
VALUES (
        2,
        'Mariam',
        'Ahmed',
        'Hassan',
        'F',
        '456 Elm Street, Giza',
        119876543,
        'mariam.hassan@hotmail.com'
    );
INSERT INTO receptionist
VALUES (
        3,
        'Omar',
        'Mohamed',
        'Ibrahim',
        'M',
        '789 Park Avenue, Alexandria',
        125648972,
        'omar.ibrahim@yahoo.com'
    );
-- Additional receptionists
INSERT INTO receptionist
VALUES (
        4,
        'Fatima',
        'Mahmoud',
        'Khalil',
        'F',
        '321 Oak Lane, Luxor',
        132456789,
        'fatima.khalil@email.com'
    );
INSERT INTO receptionist
VALUES (
        5,
        'Youssef',
        'Hassan',
        'Farid',
        'M',
        '654 Palm Street, Aswan',
        147258369,
        'youssef.farid@email.com'
    );
-- Insurance Data
INSERT INTO insurance
VALUES (
        1,
        'Blue',
        'Cross',
        18004141845,
        'customerservice@bcbs.com',
        '80% coverage for doctor visits, 70% for prescriptions, $2000 deductible',
        1
    );
INSERT INTO insurance
VALUES (
        2,
        'UnitedHealthcare',
        'Customer Service',
        18669964546,
        'customerservice@uhc.com',
        '75% coverage for doctor visits, 80% for prescriptions, $1500 deductible',
        2
    );
INSERT INTO insurance
VALUES (
        3,
        'Aetna',
        'Customer Service',
        18008723862,
        'customerservice@aetna.com',
        '60% coverage for doctor visits, 85% for prescriptions, $3000 deductible',
        3
    );
-- Additional insurance
INSERT INTO insurance
VALUES (
        4,
        'Kaiser',
        'Permanente',
        18007779100,
        'member.services@kp.org',
        '90% coverage for doctor visits, 80% for prescriptions, $1000 deductible',
        4
    );
INSERT INTO insurance
VALUES (
        5,
        'Cigna',
        'HealthCare',
        18009977555,
        'customer.service@cigna.com',
        '70% coverage for doctor visits, 75% for prescriptions, $2500 deductible',
        5
    );
-- Medication Data
INSERT INTO medication
VALUES (
        1,
        'Lisinopril',
        10,
        1,
        'Blood pressure',
        'Dizziness, cough'
    );
INSERT INTO medication
VALUES (
        2,
        'Ibuprofen',
        200,
        3,
        'Pain relief',
        'Upset stomach, heartburn'
    );
INSERT INTO medication
VALUES (
        3,
        'Aspirin',
        325,
        2,
        'Pain relief',
        'Upset stomach, bleeding'
    );
-- Additional medications
INSERT INTO medication
VALUES (
        4,
        'Atorvastatin',
        20,
        1,
        'Cholesterol',
        'Muscle pain, nausea'
    );
INSERT INTO medication
VALUES (
        5,
        'Metoprolol',
        50,
        2,
        'Heart conditions',
        'Fatigue, dizziness'
    );
-- Medical Record Data
INSERT INTO medicalrecord
VALUES (
        1,
        1,
        DATE '2023-12-05',
        'Sinus infection',
        'Antibiotics, decongestants',
        1
    );
INSERT INTO medicalrecord
VALUES (
        2,
        2,
        DATE '2023-11-18',
        'Allergic reaction',
        'Antihistamines, steroids',
        2
    );
INSERT INTO medicalrecord
VALUES (
        3,
        3,
        DATE '2023-10-25',
        'Asthma',
        'Inhaler, allergy medication',
        3
    );
-- Additional medical records
INSERT INTO medicalrecord
VALUES (
        4,
        1,
        DATE '2023-12-16',
        'Type 2 Diabetes',
        'Metformin, diet control',
        4
    );
INSERT INTO medicalrecord
VALUES (
        5,
        2,
        DATE '2023-12-21',
        'Childhood vaccinations',
        'MMR, DTaP vaccines',
        5
    );
-- Nurse Data
INSERT INTO nurse
VALUES (
        1,
        'Emily',
        'Anne',
        'Smith',
        12345,
        1,
        75000,
        1234567890,
        'e.smith@hospital.com',
        'Available',
        1,
        12345,
        1
    );
INSERT INTO nurse
VALUES (
        2,
        'Michael',
        'James',
        'Johnson',
        23456,
        2,
        80000,
        9876543210,
        'm.johnson@hospital.com',
        'On Leave',
        2,
        23456,
        2
    );
INSERT INTO nurse
VALUES (
        3,
        'Maria',
        'Isabella',
        'Rodriguez',
        34567,
        3,
        68000,
        1112223333,
        'm.rodriguez@hospital.com',
        'Available',
        3,
        34567,
        3
    );
-- Additional nurses
INSERT INTO nurse
VALUES (
        4,
        'Jennifer',
        'Lynn',
        'Wilson',
        45678,
        4,
        72000,
        2223334444,
        'j.wilson@hospital.com',
        'Available',
        4,
        45678,
        4
    );
INSERT INTO nurse
VALUES (
        5,
        'David',
        'Robert',
        'Thompson',
        56789,
        5,
        78000,
        3334445555,
        'd.thompson@hospital.com',
        'On Leave',
        5,
        56789,
        5
    );
-- Doctor Data
INSERT INTO doctor
VALUES (
        1,
        'John',
        'David',
        'Smith',
        'Cardiology',
        123456,
        150000,
        1234567890,
        'john.smith@email.com',
        9876543210,
        1
    );
INSERT INTO doctor
VALUES (
        2,
        'Jane',
        'Marie',
        'Doe',
        'Pediatrics',
        654321,
        120000,
        9876543210,
        'jane.doe@email.com',
        1234567890,
        2
    );
INSERT INTO doctor
VALUES (
        3,
        'Peter',
        'James',
        'Johnson',
        'Oncology',
        987654,
        180000,
        5551234567,
        'peter.johnson@email.com',
        8889991234,
        3
    );
-- Additional doctors
INSERT INTO doctor
VALUES (
        4,
        'Sarah',
        'Elizabeth',
        'Williams',
        'Neurology',
        456789,
        160000,
        6667778888,
        'sarah.williams@email.com',
        9998887777,
        4
    );
INSERT INTO doctor
VALUES (
        5,
        'Robert',
        'Michael',
        'Brown',
        'General Surgery',
        567890,
        170000,
        7778889999,
        'robert.brown@email.com',
        1112223333,
        5
    );
COMMIT;