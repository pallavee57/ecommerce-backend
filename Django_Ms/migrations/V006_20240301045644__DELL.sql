alter table user_management.users 
     alter phone type int8 using to_number(cast(phone as int8), '99G999D9S');