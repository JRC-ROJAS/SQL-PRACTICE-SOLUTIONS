#QUESTION NRO53

    /*
    We need a breakdown for the total amount of admissions each doctor has started each year. Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.
    */

#SOLUTION NRO53

    SELECT D.doctor_id, D.first_name ||' '|| D.last_name AS FULL_NAME, D.specialty,
    year(A.admission_date) AS YEAR, count(A.patient_id) AS TOTAL
    FROM admissions A JOIN doctors D ON (A.attending_doctor_id = D.doctor_id) 
    GROUP BY D.doctor_id, year(A.admission_date);