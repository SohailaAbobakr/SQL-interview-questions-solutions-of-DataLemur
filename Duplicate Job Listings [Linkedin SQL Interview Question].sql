SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM job_listings
WHERE (title, description) IN (
    SELECT title, description
    FROM job_listings
    GROUP BY title, description, company_id
    HAVING COUNT(*) > 1
);