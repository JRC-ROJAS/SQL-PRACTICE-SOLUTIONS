#QUESTION NRO45

    /*
    Show patient_id, first_name, last_name, and attending doctors specialty.
    Show only the patients who has a diagnosis as 'Epilepsy' and the doctors first name is 'Lisa'
    Check patients, admissions, and doctors tables for required information.
    */

#SOLUTION NRO45

    SELECT P.patient_id,P.first_name,P.last_name,D.specialty FROM admissions A 
    JOIN patients P ON (A.patient_id = P.patient_id)
    JOIN doctors D ON (A.attending_doctor_id = D.doctor_id) 
    WHERE A.diagnosis = 'Epilepsy' AND D.first_name = 'Lisa';
    
    WITH PATIENT_TABLE AS (SELECT P.patient_id, P.first_name, P.last_name, A.attending_doctor_id
        FROM patients P
        JOIN admissions A ON P.patient_id = A.patient_id
        WHERE A.diagnosis = 'Epilepsy')
    SELECT PT.patient_id, PT.first_name, PT.last_name, D.specialty 
    FROM PATIENT_TABLE PT
    JOIN doctors D ON PT.attending_doctor_id = D.doctor_id
    WHERE D.first_name = 'Lisa';

    SELECT A.patient_id, A.first_name, A.last_name, B.specialty
    FROM patients A, doctors B, admissions C
    WHERE A.patient_id = C.patient_id
    AND C.attending_doctor_id = B.doctor_id
    AND C.diagnosis = 'Epilepsy'
    AND B.first_name = 'Lisa';

    SELECT PA.patient_id, PA.first_name, PA.last_name, PH1.specialty
    FROM patients AS PA JOIN (
        SELECT * FROM admissions AS A
        JOIN doctors AS PH ON A.attending_doctor_id = PH.doctor_id
    ) AS PH1 USING (patient_id) WHERE  PH1.diagnosis = 'Epilepsy'
    AND PH1.first_name = 'Lisa'