USE db_course_conversions;
SELECT 
    ROUND(COUNT(first_date_purchase) / COUNT(first_date_watched),
            2) * 100 AS ConversionRate,
    ROUND(AVG(date_diff_reg_watch), 2) AS avg_reg_watch,
    ROUND(AVG(date_diff_watch_purch), 2) AS avg_watch_purch
FROM
    (SELECT 
        e.student_id,
            i.date_registered,
            MIN(e.date_watched) AS first_date_watched,
            MIN(p.date_purchased) AS first_date_purchase,
            DATEDIFF(MIN(e.date_watched), i.date_registered) AS date_diff_reg_watch,
            DATEDIFF(MIN(p.date_purchased), MIN(e.date_watched)) AS date_diff_watch_purch
    FROM
        student_engagement e
    JOIN student_info i ON e.student_id = i.student_id
    LEFT JOIN student_purchases p ON p.student_id = e.student_id
    GROUP BY i.student_id
    HAVING first_date_watched <= first_date_purchase
        OR first_date_purchase IS NULL
    ORDER BY first_date_purchase DESC) AS a;

commit;