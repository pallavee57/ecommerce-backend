ALTER TABLE user_management.users
 ALTER COLUMN phone TYPE int8 USING  CAST(phone AS int8 )