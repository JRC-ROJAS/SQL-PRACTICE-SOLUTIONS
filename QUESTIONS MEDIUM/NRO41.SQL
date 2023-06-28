#QUESTION NRO41
    #Display the number of duplicate patients based on their first_name and last_name.    

#SOLUTION NRO41
    SELECT first_name, last_name, COUNT(*) AS DUPLICADOS 
    FROM patients GROUP BY 1,2 HAVING DUPLICADOS > 1;