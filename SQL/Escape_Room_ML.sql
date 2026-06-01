use bankraub;
-- SELECT * FROM vault_access WHERE access_time BETWEEN 21:30:00 AND 22:00:00;

-- 1

SELECT e.first_name, e.last_name, v.access_time
FROM employees e 
JOIN vault_access v
ON e.employee_id = v.employee_id
WHERE v.successful = 1
AND v.access_time BETWEEN '2026-05-22 21:30:00' AND '2026-05-22 22:30:00'
ORDER BY v.access_time;

-- 2

SELECT * FROM transactions WHERE suspicious =1 AND amount > 100000 ORDER BY amount DESC;

-- 3

SELECT * FROM security_cameras WHERE last_active 
BETWEEN '2026-05-22 21:30:00' AND '2026-05-22 22:00:00' AND status = 'offline'
ORDER BY last_active DESC;

-- 4

SELECT * FROM employees WHERE department LIKE 'Security' AND access_level >=5;

-- 5
SELECT * FROM escape_routes WHERE last_seen_vehicle LIKE 'Black Van';

-- test 
SELECT last_seen_vehicle FROM escape_routes ;

-- 6

SELECT e.first_name, e.last_name, v.access_time
FROM employees e 
JOIN vault_access v
ON e.employee_id = v.employee_id
WHERE v.successful = 1
AND v.access_time BETWEEN '2026-05-22 21:30:00' AND '2026-05-22 22:30:00'
AND e.department LIKE 'Security'
GROUP BY 

-- Group by example

