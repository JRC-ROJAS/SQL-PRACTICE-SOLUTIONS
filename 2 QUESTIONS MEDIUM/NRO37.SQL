#QUESTION NRO37
    #Show first_name, last_name, and the total number of admissions attended for each doctor.
    #Every admission has been attended by a doctor.
    
#SOLUTION NRO37
    SELECT d.first_name,d.last_name,count(*) AS ADMISSIONS_TOTAL FROM doctors d 
    JOIN admissions a ON (d.doctor_id = a.attending_doctor_id) GROUP BY 1,2 ;