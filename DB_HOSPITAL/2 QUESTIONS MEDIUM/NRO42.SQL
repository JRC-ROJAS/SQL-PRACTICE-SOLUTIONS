#QUESTION NRO42
    
    /*
    Display patients full name, height in the units feet rounded to 1 decimal, weight in the unit pounds rounded to 0 decimals,
    birth_date, gender non abbreviated.
    Convert CM to feet by dividing by 30.48.
    Convert KG to pounds by multiplying by 2.205.
    */

#SOLUTION NRO42
    
    SELECT CONCAT(first_name,' ' ,last_name)AS FULL_NAME,
    round((height/30.48),1) AS ALTURA_PIES,
    round((weight*2.205),0) AS PESO_LIBRAS,
    birth_date,
    CASE
        WHEN gender='F' THEN 'FEMALE'
        wheN gender='M' THEN 'MALE'
    END AS GENERO
    FROM patients;