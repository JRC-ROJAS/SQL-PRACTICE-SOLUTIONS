#QUESTION NRO1
#Show first name, last name, and gender of patients whose gender is 'M'
#SOLUTION NRO1
SELECT first_name,last_name,gender FROM patients WHERE gender = "M";

#QUESTION NRO2
#Show first name and last name of patients who does not have allergies. (null)
#SOLUTION NRO2
SELECT first_name,last_name FROM patients WHERE allergies IS NULL;
