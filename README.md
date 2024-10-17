"# Free-to-Paid-Conversion-Rate-Analysis-for-365-Data-science" 

CREATING THE SUBQUERY:
Imported the db_course_conversions database—stored in the db_course_conversions.sql file—into my schemas and studied its content. Then, by appropriately joining and aggregating the tables, created a new result dataset comprising the following columns:

student_id – (int) the unique identification of a student,
date_registered – (date) the date on which the student registered on the 365 platform,
first_date_watched – (date) the date of the first engagement,
first_date_purchased – (date) the date of first-time purchase (NULL if they have no purchases),
date_diff_reg_watch – (int) the difference in days between the registration date and the date of first-time engagement,
date_diff_watch_purch – (int) the difference in days between the date of first-time engagement and the date of first-time purchase (NULL if they have no purchases)
