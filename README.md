"# Free-to-Paid-Conversion-Rate-Analysis-for-365-Data-science" 

CREATING THE SUBQUERY:

Imported the db_course_conversions database—stored in the db_course_conversions.sql file—into my schemas and studied its content. Then, by appropriately joining and aggregating the tables, created a new result dataset comprising the following columns:

student_id – (int) the unique identification of a student

date_registered – (date) the date on which the student registered on the 365 platform

first_date_watched – (date) the date of the first engagement

first_date_purchased – (date) the date of first-time purchase (NULL if they have no purchases)

date_diff_reg_watch – (int) the difference in days between the registration date and the date of first-time engagement

date_diff_watch_purch – (int) the difference in days between the date of first-time engagement and the date of first-time purchase (NULL if they have no purchases)

CREATING THE MAIN QUERY:

In this task, I used the subquery I created and retrieved the following three metrics.

1) Free-to-Paid Conversion Rate:
This metric measures the proportion of engaged students who choose to benefit from full course access on the 365 platform by purchasing a subscription after watching a lecture. It is calculated as the ratio between:

The number of students who watched a lecture and purchased a subscription on the same day or later and
the total number of students who have watched a lecture.

Converted the result to percentages and called the field conversion_rate.

2) Average Duration Between Registration and First-Time Engagement:
   
This metric measures the average duration between the date of registration and the date of first-time engagement. This will tell us how long it takes, on average, for a student to watch a lecture after registration. The metric was calculated by finding the ratio between:

The sum of all such durations and
The count of these durations, or alternatively, the number of students who have watched a lecture.

Named the field av_reg_watch.

3) Average Duration Between First-Time Engagement and First-Time Purchase:
   
This metric measures the average time it takes individuals to subscribe to the platform after viewing a lecture. It is calculated by dividing:

The sum of all such durations by
The count of these durations, or alternatively, the number of students who have made a purchase.

Named the field av_watch_purch.

The dataset I worked with includes three tables storing information about students’ registration dates, engagement dates, and subscription purchase dates.

The interpretation of the metrics obtained has also been attached in a word ducument file. In it shed more light on the analysis.
