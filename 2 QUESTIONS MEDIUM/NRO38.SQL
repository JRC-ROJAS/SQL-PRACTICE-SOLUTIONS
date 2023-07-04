#QUESTION NRO38
    
    /*
    For each doctor, display their id, full name, and the first and last admission date they attended.
    */

#SOLUTION NRO38
    
    SELECT doctor_id, first_name || ' ' || last_name AS full_name,
    min(admission_date) AS first_admission_date, max(admission_date) AS last_admission_date FROM admissions a
    JOIN doctors ph ON a.attending_doctor_id = ph.doctor_id GROUP BY doctor_id;