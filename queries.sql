

-- find the 5 oldest users (Maybe I want to reward them)
SELECT username, created_at AS time  FROM users ORDER BY created_at LIMIT 5; 
