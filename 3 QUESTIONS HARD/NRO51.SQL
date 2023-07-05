#QUESTION NRO51

    /*
    For each day display the total amount of admissions on that day. Display the amount changed from the previous date.
    */

#SOLUTION NRO51

    SELECT admission_date,
        count(admission_date) AS ADMISSION_DAY,
        count(admission_date) - LAG(count(admission_date)) OVER(ORDER BY admission_date) AS ADMISSION_CONT 
    FROM admissions GROUP BY 1;