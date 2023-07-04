#QUESTION NRO34
    
    /*
    Show all of the days of the month (1-31) and how many admission_dates occurred on that day. 
    Sort by the day with most admissions to least admissions.
    */

#SOLUTION NRO34
    
    SELECT day(admission_date) AS DAY , count(*) AS ADMINICIONES 
    FROM admissions GROUP BY 1 ORDER BY 2 DESC;