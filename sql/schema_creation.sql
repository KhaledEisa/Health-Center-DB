/* Patient */
create table patient(
    patientid number not null primary key,
    fn varchar2(20) not null,
    mn varchar2(20),
    ln varchar2(20) not null,
    dob Date not null,
    gender char,
    address varchar2(60),
    phoneno number not null,
    email varchar2(60),
    emergencycontact number not null,
    insuranceinfo varchar2(40),
    medications varchar2(60)
);
/* Appointement */
create table appointement(
    appid number not null primary key,
    patientid number not null,
    doctorid number not null,
    DateTimeofapp DATE,
    Location varchar2(60),
    ReasonofApp varchar2(60),
    dept_no number not null
);
/* Labtest */
create table labtest(
    id number not null primary key,
    patientid number not null,
    doctorid number not null,
    dateoftest Date,
    typeoftest varchar2(60),
    resultoftest varchar2(60),
    medicalrecordid number
);
/* Clinicaldept */
create table clinicaldept(
    id number not null primary key,
    name varchar2(60),
    location varchar2(60),
    typeofclinic varchar2(60),
    Dept_head varchar2(45),
    phone_no number,
    email varchar2(60)
);
/* Receptionist */
create table receptionist(
    id number not null primary key,
    fn varchar2(20),
    mn varchar2(20),
    ln varchar2(20),
    gender char,
    address varchar2(60),
    ph_no number,
    email varchar2(60)
);
/* Insurance */
create table insurance(
    id number not null primary key,
    fn varchar2(20) not null,
    ln varchar2(20) not null,
    ph_no number,
    email varchar2(60),
    coveragedetails varchar2(80),
    patientid number
);
/* Medication */
create table medication(
    id number not null primary key,
    name varchar2(40) not null,
    dosage number not null,
    frequency number not null,
    purpose varchar2(20),
    sideeffecs varchar2(60)
);
/* Medicalrecord */
create table medicalrecord(
    id number not null primary key,
    doctorid number not null,
    dateofvisit Date,
    diagnosis varchar2(60),
    treatmentplan varchar2(100),
    patientid number
);
/* Nurse */
create table nurse(
    nurseid number not null primary key,
    fn varchar2(20) not null,
    mn varchar2(20) not null,
    ln varchar2(20) not null,
    licenseno number not null,
    dept_no number not null,
    salary number,
    ph_no number,
    email varchar2(60),
    availability varchar2(10),
    doctor_id number,
    license_no number,
    patientid number
);
/* Doctor */
create table doctor(
    doctorid number not null primary key,
    fn varchar2(20) not null,
    mn varchar2(20) not null,
    ln varchar2(20) not null,
    speciality varchar2(20) not null,
    License_no number,
    salary number,
    ph_no number not null,
    email varchar2(60),
    emergencycontact number,
    clinicalid number
);