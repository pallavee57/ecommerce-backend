ALTER TABLE user_management.users
 ALTER COLUMN phone TYPE int8 USING  replace((CAST(phone) AS int8),',','')