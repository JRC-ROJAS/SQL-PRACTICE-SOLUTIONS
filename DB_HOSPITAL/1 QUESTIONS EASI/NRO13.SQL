#QUESTION NRO13
    
    /*
    Show the patient id and the total number of admissions for patient_id 579.
    */

#SOLUTION NRO13
    
    SELECT patient_id, COUNT(*) AS TOTAL_ADMISSIONS FROM admissions WHERE patient_id = 579;