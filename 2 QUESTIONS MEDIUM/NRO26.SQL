#QUESTION NRO26
    #Show the city and the total number of patients in the city.
    #Order from most to least patients and then by city name ascending.
    
#SOLUTION NRO26
    select city, COUNT(*) AS TOTAL FROM patients GROUP BY city ORDER BY TOTAL DESC ,city ASC;