#QUESTION NRO47

    /*
    Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.
    Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group.
    */

#SOLUTION NRO47

    SELECT 	(CASE 
                WHEN patient_id % 2 = 0 THEN 'YES'
                ELSE 'NO'
            END) AS HAS_INSURANCE,
            SUM(
            CASE 
                WHEN patient_id % 2 = 0 THEN 10
                ELSE 50
            END) AS COST
    FROM admissions GROUP BY 1; 

    SELECT HAS_INSURANCE, SUM(ADMISSION_COST) AS ADMISSION_TOTAL
    FROM
    (   SELECT patient_id,
        CASE WHEN patient_id % 2 = 0 THEN 'YES' ELSE 'NO' END AS HAS_INSURANCE,
        CASE WHEN patient_id % 2 = 0 THEN 10 ELSE 50 END AS ADMISSION_COST
        FROM admissions
    )GROUP BY HAS_INSURANCE;

    SELECT 'NO' AS HAS_INSURANCE, count(*) * 50 AS COST
    FROM admissions WHERE patient_id % 2 = 1 GROUP BY HAS_INSURANCE
    UNION
    SELECT 'YES' AS HAS_INSURANCE, count(*) * 10 AS COST
    FROM admissions WHERE patient_id % 2 = 0 GROUP BY HAS_INSURANCE;

    SELECT HAS_INSURANCE,
        CASE
            WHEN HAS_INSURANCE = 'YES' THEN COUNT(HAS_INSURANCE) * 10
            ELSE count(HAS_INSURANCE) * 50
        END AS COST
    FROM ( 
        SELECT
            CASE
            WHEN patient_id % 2 = 0 THEN 'YES'
            ELSE 'NO'
            END AS HAS_INSURANCE
        FROM admissions) 
    GROUP BY HAS_INSURANCE;