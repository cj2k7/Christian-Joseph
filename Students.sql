SELECT * FROM tiktok.students;
SELECT
    AVG(GPA) AS Mean_GPA,
    STDDEV(GPA) AS StdDev_GPA
FROM students data;
SELECT
    gender,
    COUNT(*) AS Count
FROM students data
GROUP BY gender;
SELECT
    class,
    COUNT(*) AS Count
FROM students data
GROUP BY class;
SELECT
    class,
    AVG(GPA) AS Mean_GPA
FROM students data
GROUP BY class;
SELECT
    gender,
    AVG(GPA) AS Mean_GPA
FROM students data
GROUP BY gender;
SELECT
    (
        SUM(GPA * Algebra) - (SUM(GPA) * SUM(Algebra)) / COUNT(*)
    ) / (
        SQRT(
            (SUM(GPA * GPA) - (SUM(GPA) * SUM(GPA)) / COUNT(*)) *
            (SUM(Algebra * Algebra) - (SUM(Algebra) * SUM(Algebra)) / COUNT(*))
        )
    ) AS Correlation_GPA_Algebra
FROM students data;
SELECT
    CASE
        WHEN GPA BETWEEN 0 AND 1.60 THEN '0.00 - 1.60'
        WHEN GPA BETWEEN 1.60 AND 2.20 THEN '1.60 - 2.20'
        -- Add more cases for other ranges
    END AS GPA_Range,
    COUNT(*) AS Count
FROM students data
GROUP BY GPA_Range;
SELECT
    Class,
    COUNT(*) AS Count
FROM students data
GROUP BY Class;
SELECT *
FROM tiktok.students
INNER JOIN courses ON students.student_id = courses.student_id;

-- Example 2: LEFT JOIN
SELECT *
FROM tiktok.students
LEFT JOIN courses ON students.student_id = courses.student_id;
