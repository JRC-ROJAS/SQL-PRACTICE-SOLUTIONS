#QUESTION NRO25
    #Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
    
#SOLUTION NRO25
    SELECT patient_id, diagnosis FROM admissions GROUP BY patient_id, diagnosis HAVING COUNT(*) > 1;