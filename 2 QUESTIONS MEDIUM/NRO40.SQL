#QUESTION NRO40
    #For every admission, display the patients full name, their admission diagnosis, 
    #and their doctors full name who diagnosed their problem.
    
#SOLUTION NRO40
    SELECT CONCAT(P.first_name,' ',P.last_name) AS FULL_NAME_PATIENS, A.diagnosis,
    CONCAT(D.first_name,' ',D.last_name) AS FULL_NAME_DOCTOR FROM admissions A 
    JOIN patients P ON (A.patient_id = P.patient_id)
    JOIN doctors D ON (A.attending_doctor_id = D.doctor_id);