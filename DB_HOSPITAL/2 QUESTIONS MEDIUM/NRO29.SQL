#QUESTION NRO29
    
    /*
    Show all patients first_name, last_name, and birth_date who were born in the 1970s decade. 
    Sort the list starting from the earliest birth_date.
    */

#SOLUTION NRO29
    
    SELECT first_name, last_name, birth_date FROM patients 
    WHERE year(birth_date) BETWEEN 1970 AND 1979  ORDER BY 3;