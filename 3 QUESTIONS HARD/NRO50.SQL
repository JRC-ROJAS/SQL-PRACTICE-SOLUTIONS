#QUESTION NRO50

    /*
    We are looking for a specific patient. Pull all columns for the patient who matches the following criteria:
    - First_name contains an 'r' after the first two letters.
    - Identifies their gender as 'F'
    - Born in February, May, or December
    - Their weight would be between 60kg and 80kg
    - Their patient_id is an odd number
    - They are from the city 'Kingston'
    */

#SOLUTION NRO50
    select 
        concat(ROUND((count(*)*100.0 /(SELECT COUNT(*) FROM patients)),2 ),'%') 
    AS PORCENT  FROM patients where gender = 'M';

	
	SELECT
  		round(100 * avg(gender = 'M'), 2) || '%' AS PORCENT
	FROM patients;
  
  	SELECT 
   		CONCAT(ROUND(SUM(gender='M') / CAST(COUNT(*) AS float), 4) * 100, '%')
	FROM patients;