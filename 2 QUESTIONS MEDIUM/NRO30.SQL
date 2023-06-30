#QUESTION NRO30
    #We want to display each patients full name in a single column. 
    #Their last_name in all upper letters must appear first, then first_name in all lower case letters. 
    #Separate the last_name and first_name with a comma. Order the list by the first_name in decending order
    #EX: SMITH,jane
    
#SOLUTION NRO30
    SELECT concat(upper(last_name),',',lower(first_name)) FULL_NAME 
    FROM patients ORDER BY first_name DESC;