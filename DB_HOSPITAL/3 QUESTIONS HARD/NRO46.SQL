#QUESTION NRO46

    /*
    All patients who have gone through admissions, can see their medical documents on our site. Those patients are given a temporary password after their first admission. Show the patient_id and temp_password.
    The password must be the following, in order:
    1. patient_id
    2. the numerical length of patient's last_name
    3. year of patient's birth_date
    */

#SOLUTION NRO46

    SELECT A.patient_id,concat(P.patient_id,len(P.last_name),year(P.birth_date)) AS PASS 
    FROM patients P
    JOIN admissions A ON (P.patient_id = A.patient_id) group by 1;

    SELECT DISTINCT P.patient_id,
    CONCAT(P.patient_id, LEN(last_name), YEAR(birth_date)) AS TEMP_PASS
    FROM patients P
    JOIN admissions A ON A.patient_id = P.patient_id;