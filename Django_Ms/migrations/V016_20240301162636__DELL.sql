ALTER TABLE user_management.users
 ALTER COLUMN phone TYPE int8 USING phone::int8;