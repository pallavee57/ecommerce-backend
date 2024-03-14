alter table user_management.users 
     alter phone type int8 using cast(phone as int8);