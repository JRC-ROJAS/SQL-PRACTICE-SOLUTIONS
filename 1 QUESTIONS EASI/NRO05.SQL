#QUESTION NRO5
    
    /*
    Update the patients table for the allergies column. If the patients allergies is null then replace it with 'NKA'
    */

#SOLUTION NRO5
    
    UPDATE patients SET allergies = "NKA" WHERE allergies IS NULL;