#QUESTION NRO48

    /*
    Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name
    */

#SOLUTION NRO48

    SELECT PR.province_name FROM province_names PR 
    JOIN patients P ON (PR.province_id = P.province_id)
    GROUP BY 1 HAVING count(CASE WHEN P.gender='M' THEN 1 END) >
        count(CASE WHEN P.gender='F' THEN 1 END);

    SELECT province_name FROM (
        SELECT province_name,
        SUM(gender = 'M') AS M,
        SUM(gender = 'F') AS F
        FROM patients P
        JOIN province_names PR ON P.province_id = PR.province_id
        GROUP BY province_name
    )WHERE M > F;

    SELECT PR.province_name FROM patients AS P
    JOIN province_names AS PR ON P.province_id = PR.province_id
    GROUP BY PR.province_name  HAVING SUM(gender = 'M') > SUM(gender = 'F');

    SELECT province_name FROM patients P
    JOIN province_names PR ON P.province_id = PR.province_id
    GROUP BY province_name HAVING
    SUM(CASE WHEN gender = 'M' THEN 1 ELSE -1 END) > 0 ;

    SELECT PR.province_name FROM patients AS P
    JOIN province_names AS PR ON P.province_id = PR.province_id
    GROUP BY PR.province_name HAVING
    COUNT( CASE WHEN gender = 'M' THEN 1 END) > COUNT(*) * 0.5;