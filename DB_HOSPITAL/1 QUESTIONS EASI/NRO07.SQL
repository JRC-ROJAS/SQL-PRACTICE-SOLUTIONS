#QUESTION NRO7
    
    /*
    Show first name, last name, and the full province name of each patient.
    Example: 'Ontario' instead of 'ON'
    */

#SOLUTION NRO7
    
    SELECT P.first_name,P.last_name,PN.province_name AS PROV_NAME FROM patients P 
    INNER JOIN province_names PN ON (P.province_id = PN.province_id);