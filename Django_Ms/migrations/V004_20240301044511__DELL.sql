alter table user_management.users 
     alter phone type varchar using cast(phone as varchar);