#QUESTION NRO32
    
    /*
    Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni'
    */

#SOLUTION NRO32
    
    SELECT (MAX(weight) - MIN(weight)) AS DIF FROM patients WHERE last_name = 'Maroni';