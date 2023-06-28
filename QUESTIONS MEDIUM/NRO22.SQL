#QUESTION NRO22
    #Display every patients first_name.
    #Order the list by the length of each name and then by alphbetically
    
#SOLUTION NRO22
    SELECT first_name FROM patients ORDER BY LEN(first_name), first_name ASC ;