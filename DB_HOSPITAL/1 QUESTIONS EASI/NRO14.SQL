#QUESTION NRO14
    
    /*
    Based on the cities that our patients live in, show unique cities that are in province_id 'NS'?
    */

#SOLUTION NRO14
    
    SELECT city FROM patients WHERE province_id = 'NS' GROUP BY city;

    SELECT DISTINCT(city) AS CIUDADES FROM patients WHERE province_id = 'NS';