alter table user_management.users 
     alter column phone type int8 using REGEXP_REPLACE(COALESCE(cast(phone) AS int8,'0'), '[^0-9]+', '', 'g');