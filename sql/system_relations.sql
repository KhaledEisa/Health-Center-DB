create table attends_pt_app(
    patientid number not null references patient(patientid),
    appid number not null references appointement(appid),
    PRIMARY KEY(patientid, appid)
);
create table treats(
    patientid number not null references patient(patientid),
    licenseno number not null references medicalrecord(id),
    doctorid number not null references doctor(doctorid),
    PRIMARY KEY(doctorid, licenseno, patientid)
);
create table takes(
    patientid number not null references patient(patientid),
    medicationid number not null references medication(id),
    PRIMARY KEY(medicationid, patientid)
);
create table gives(
    nurseid number not null references nurse(nurseid),
    medicationid number not null references medication(id),
    PRIMARY KEY(medicationid, nurseid)
);
create table checks_nr_mr(
    nurseid number not null references nurse(nurseid),
    medicalrecordid number not null references medicalrecord(id),
    PRIMARY KEY(medicalrecordid, nurseid)
);
create table checks_mr_dr(
    doctorid number not null references doctor(doctorid),
    medicalrecordid number not null references medicalrecord(id),
    insuranceid number not null references insurance(id),
    PRIMARY KEY(medicalrecordid, doctorid, insuranceid)
);
create table schedules(
    appid number not null references appointement(appid),
    receptionistid number not null references receptionist(id),
    PRIMARY KEY(appid, receptionistid)
);
create table validates(
    receptionistid number not null references receptionist(id),
    insuranceid number not null references insurance(id),
    PRIMARY KEY(insuranceid, receptionistid)
);