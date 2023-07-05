#QUESTION NRO27
    
    /*
    Show first name, last name and role of every person that is either patient or doctor.
    The roles are either "Patient" or "Doctor"
    */

#SOLUTION NRO27
    
    SELECT first_name,last_name,'Patient' FROM patients
    UNION ALL
    SELECT first_name,last_name,'Doctor' FROM doctors