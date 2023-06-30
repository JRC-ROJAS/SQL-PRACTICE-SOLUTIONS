#QUESTION NRO35
    #Show all columns for patient_id 542s most recent admission_date.
    
#SOLUTION NRO35
    SELECT patient_id, MAX(admission_date), discharge_date, diagnosis, attending_doctor_id
    FROM admissions WHERE patient_id = 542;
    SELECT * FROM admissions WHERE patient_id = 542 GROUP BY patient_id
    HAVING  admission_date = MAX(admission_date);