#QUESTION NRO9
    #Show the first_name, last_name, and height of the patient with the greatest height.

#SOLUTION NRO9
    SELECT first_name, last_name, MAX(height) AS height FROM patients;