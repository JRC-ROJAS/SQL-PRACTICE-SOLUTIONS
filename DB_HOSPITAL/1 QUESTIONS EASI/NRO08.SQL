#QUESTION NRO8
    
    /*
    Show how many patients have a birth_date with 2010 as the birth year.
    */

#SOLUTION NRO8
    
    SELECT COUNT(*) AS TOTAL FROM patients WHERE YEAR(birth_date) = 2010;
    
    SELECT COUNT(*) as TOTAL from  patients WHERE birth_date LIKE '2010%';