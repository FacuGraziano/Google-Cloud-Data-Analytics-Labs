CREATE TABLE fintech.loan_count_by_year AS
SELECT
issue_year,
COUNT(loan_id) AS loan_count
FROM fintech.loan
GROUP BY issue_year;
