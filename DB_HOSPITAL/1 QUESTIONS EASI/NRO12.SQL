#QUESTION NRO12
    
    /*
    Show all the columns from admissions where the patient was admitted and discharged on the same day.
    */

#SOLUTION NRO12
    
    SELECT * FROM admissions WHERE admission_date = discharge_date;