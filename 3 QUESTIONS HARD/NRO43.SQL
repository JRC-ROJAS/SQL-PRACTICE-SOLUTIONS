#QUESTION NRO43
    
    /*
    Show all of the patients grouped into weight groups.
    Show the total amount of patients in each weight group.
    Order the list by the weight group decending.
    For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.
    */

#SOLUTION NRO43

    SELECT COUNT(*) AS PATIENTS_GROUP, FLOOR(weight / 10) * 10 AS WEIGHT_GROUP
    FROM patients GROUP BY WEIGHT_GROUP ORDER BY WEIGHT_GROUP DESC;