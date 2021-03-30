SELECT assignments.id, name, chapter, day, COUNT(assistance_requests.id)
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY COUNT DESC