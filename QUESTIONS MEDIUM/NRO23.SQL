#QUESTION NRO23
    #Show the total amount of male patients and the total amount of female patients in the patients table.
    #Display the two results in the same row.
    
#SOLUTION NRO23
    SELECT count(*) AS MALE FROM patients GROUP BY gender='M';
    SELECT  (SELECT count(*) FROM patients WHERE gender='M') AS MALE, 
            (SELECT count(*) FROM patients WHERE gender='F') AS FEMALE;
    SELECT  sum(CASE WHEN gender = 'M' THEN 1 END) AS MALE,
            sum(CASE WHEN gender = 'F' THEN 1 END) AS FEMALE from patients;
    SELECT SUM(Gender = 'M') AS MALE, SUM(Gender = 'F') AS FEMALE FROM patients;