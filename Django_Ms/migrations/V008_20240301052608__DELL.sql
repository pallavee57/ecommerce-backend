alter table user_management.users 
alter phone type int8 using CAST(REGEXP_REPLACE(COALESCE(phone,'0'), '[^0-9]+', '', 'g') AS int8);