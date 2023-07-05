#QUESTION NRO52

    /*
    Sort the province names in ascending order in such a way that the province 'Ontario' is always on top.  
    */

#SOLUTION NRO52

    SELECT province_name FROM province_names ORDER BY 
    (CASE
        WHEN province_name = 'Ontario' THEN 0
        ELSE province_name
    END);