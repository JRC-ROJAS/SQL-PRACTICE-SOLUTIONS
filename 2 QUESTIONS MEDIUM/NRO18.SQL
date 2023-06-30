#QUESTION NRO18
    #Show unique birth years from patients and order them by ascending.

#SOLUTION NRO18
    SELECT DISTINCT YEAR(birth_date) AS BIRTH_YEAR FROM patients ORDER BY birth_year;