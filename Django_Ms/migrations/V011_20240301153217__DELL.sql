ALTER TABLE user_management.users
 ALTER COLUMN phone TYPE int8 USING  to_number( phone,
                  replace(phone,',','G')
                );
;


