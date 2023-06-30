#QUESTION NRO28
    #Show all allergies ordered by popularity. Remove NULL values from query.
    
#SOLUTION NRO28
    SELECT allergies,count(*) AS POPULAR FROM patients GROUP BY 1 HAVING allergies IS NOT NULL ORDER BY 2 DESC;