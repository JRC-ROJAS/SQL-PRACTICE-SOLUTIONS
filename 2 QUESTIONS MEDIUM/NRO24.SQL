#QUESTION NRO24
    #Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. 
    #Show results ordered ascending by allergies then by first_name then by last_name.
    
#SOLUTION NRO24
    SELECT first_name, last_name, allergies FROM patients WHERE allergies IN ('Penicillin', 'Morphine')
    ORDER BY allergies, first_name, last_name;