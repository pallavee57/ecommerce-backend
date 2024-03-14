ALTER TABLE user_management.user_address ALTER COLUMN zipcode TYPE int8 USING cast(zipcode as int8);
