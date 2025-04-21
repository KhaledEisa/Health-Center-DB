# Health Center Database - Data Dictionary

## 📁 Database Tables Overview

### 1. `patient` Table

| Column             | Type         | Description               | Constraints      |
| ------------------ | ------------ | ------------------------- | ---------------- |
| `patientid`        | NUMBER       | Unique patient identifier | PRIMARY KEY      |
| `fn`               | VARCHAR2(20) | First name                | NOT NULL         |
| `mn`               | VARCHAR2(20) | Middle name               |                  |
| `ln`               | VARCHAR2(20) | Last name                 | NOT NULL         |
| `dob`              | DATE         | Date of birth             | NOT NULL         |
| `gender`           | CHAR(1)      | Gender (M/F/O)            | CHECK constraint |
| `address`          | VARCHAR2(60) | Physical address          |                  |
| `phoneno`          | NUMBER       | Contact number            | NOT NULL         |
| `email`            | VARCHAR2(60) | Email address             |                  |
| `emergencycontact` | NUMBER       | Emergency phone           | NOT NULL         |
| `insuranceinfo`    | VARCHAR2(40) | Insurance provider        |                  |
| `medications`      | VARCHAR2(60) | Current medications       |                  |

### 2. `doctor` Table

| Column             | Type         | Description            | Constraints |
| ------------------ | ------------ | ---------------------- | ----------- |
| `doctorid`         | NUMBER       | Unique doctor ID       | PRIMARY KEY |
| `fn`               | VARCHAR2(20) | First name             | NOT NULL    |
| `mn`               | VARCHAR2(20) | Middle name            | NOT NULL    |
| `ln`               | VARCHAR2(20) | Last name              | NOT NULL    |
| `speciality`       | VARCHAR2(20) | Medical specialty      | NOT NULL    |
| `license_no`       | NUMBER       | Medical license number | UNIQUE      |
| `salary`           | NUMBER       | Annual salary          |             |
| `ph_no`            | NUMBER       | Contact number         | NOT NULL    |
| `email`            | VARCHAR2(60) | Email address          |             |
| `emergencycontact` | NUMBER       | Emergency contact      |             |
| `clinicalid`       | NUMBER       | Department ID          | FOREIGN KEY |

## 🔗 Relationship Tables

### 1. `takes` (Patient-Medication Relationship)

| Column                | Type          | Description      | Constraints              |
| --------------------- | ------------- | ---------------- | ------------------------ |
| `patientid`           | NUMBER        | Patient ID       | PRIMARY KEY, FOREIGN KEY |
| `medicationid`        | NUMBER        | Medication ID    | PRIMARY KEY, FOREIGN KEY |
| `prescribed_date`     | DATE          | Date prescribed  | DEFAULT SYSDATE          |
| `dosage_instructions` | VARCHAR2(100) | Usage directions |                          |

## 📊 Sample Data References

### Patient Gender Codes

| Code | Description             |
| ---- | ----------------------- |
| M    | Male                    |
| F    | Female                  |
| O    | Other/Prefer not to say |

### Appointment Status Values

| Status    | Description           |
| --------- | --------------------- |
| Scheduled | Future appointment    |
| Completed | Finished appointment  |
| Cancelled | Cancelled appointment |
| No-Show   | Patient didn't attend |

## 📝 Field Notes

1. **Phone Numbers**: All stored as numbers without formatting
2. **Dates**: Use Oracle DATE format (DD-MON-YY)
3. **Name Fields**:
   - Maximum 20 characters each
   - Middle name optional
4. **Medications**:
   - Stored as comma-separated string
   - Maximum 60 characters total

## 🔍 Common Lookup Values

### Department IDs

| ID  | Department Name |
| --- | --------------- |
| 1   | Cardiology      |
| 2   | Pediatrics      |
| 3   | Oncology        |

### Medication Purposes

| Purpose        | Example Medications       |
| -------------- | ------------------------- |
| Pain relief    | Ibuprofen, Acetaminophen  |
| Antibiotic     | Amoxicillin, Azithromycin |
| Blood pressure | Losartan, Lisinopril      |

## Version Information

- **Last Updated**: 2023-12-01
- **Schema Version**: 1.2
- **Contact**: [Your Team Email]
