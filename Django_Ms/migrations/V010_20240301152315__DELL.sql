-- alter table user_management.users 
-- alter column phone type int8 using REGEXP_REPLACE(COALESCE(phone::int8,'0'), '[^0-9]+,', '', 'g');

ALTER TABLE user_management.users ALTER COLUMN phone TYPE int8 USING phone::int8;
