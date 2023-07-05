#QUESTION NRO39
    
    /*
    Display the total amount of patients for each province. Order by descending.
    */

#SOLUTION NRO39
    
    SELECT PN.province_name,count(*) AS TOTAL FROM province_names PN 
    JOIN patients P ON P.province_id = PN.province_id group by 1 order by TOTAL DESC;