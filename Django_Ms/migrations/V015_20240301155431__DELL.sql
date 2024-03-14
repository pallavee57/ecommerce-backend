ALTER TABLE user_management.users
 ALTER COLUMN phone TYPE int8 USING regexp_replace((phone::int8)::varchar, ',' ,'');


 

