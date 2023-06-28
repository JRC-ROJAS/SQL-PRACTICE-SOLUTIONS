#QUESTION NRO31
    #Show the province_id(s), sum of height; where the total sum of its patients height is greater than or equal to 7,000.
    
#SOLUTION NRO31
    SELECT province_id,sum(height) as SUM_HEIGHT FROM patients GROUP BY 1 HAVING TOTAL_ALTURAS > 7000;