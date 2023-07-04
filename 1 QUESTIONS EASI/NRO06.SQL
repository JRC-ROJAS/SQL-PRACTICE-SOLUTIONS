#QUESTION NRO6
    
    /*
    Show first name and last name concatinated into one column to show their full name.
    */

#SOLUTION NRO6
    
    SELECT CONCAT(first_name," ",last_name) AS FULL_NAME FROM patients;