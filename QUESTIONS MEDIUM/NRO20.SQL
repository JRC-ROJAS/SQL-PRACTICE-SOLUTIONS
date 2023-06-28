#QUESTION NRO20
    #Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
    
#SOLUTION NRO20
    SELECT patient_id,first_name FROM patients WHERE first_name LIKE 'S%S' AND len(first_name) > 5;
    SELECT patient_id,first_name FROM patients WHERE first_name LIKE 's____%s';