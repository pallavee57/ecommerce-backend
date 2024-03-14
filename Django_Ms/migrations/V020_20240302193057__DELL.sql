insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(1,'beauty', 'This is beauty product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(2,'health', 'This is health product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(3,'grocery', 'This is grocery product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(4,'books', 'This is books product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(5,'sports', 'This is sports product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(6,'fitness', 'This is fitness product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(7,'movies', 'This is movies product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(8,'music', 'This is music product category', NOW(),NOW(),NOW());
insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(9,'kitchen', 'This is kitchen product category', NOW(),NOW(),NOW());

insert into product_management.product_category (id, name, description, created_at, modified_at, deleted_at)
values(10,'pets', 'This is pets product category', NOW(),NOW(),NOW());



insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(1,3444,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(2,3444,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(3,3444,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(4,3444,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(5,3444,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(6,3444,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(7,4,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(8,0,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(9,67,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(10,4,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(11,4,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(12,55,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(13,54,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(14,89,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(15,67,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(16,4,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(17,0,NOW(),NOW(),NOW());
insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(18,0,NOW(),NOW(),NOW());
insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(19,0,NOW(),NOW(),NOW());

insert into product_management.product_inventory (id, quantity, created_at, modified_at, deleted_at)
values(20,3,NOW(),NOW(),NOW());


insert into product_management.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(1,'discount 1','discount 1','25', true,NOW(),NOW(),NOW());

insert into product_management.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(2,'discount 2','discount 2','15', true,NOW(),NOW(),NOW());


insert into product_management.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(3,'discount 3','discount 3','10', true,NOW(),NOW(),NOW());


insert into product_management.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(4,'discount 4','discount 4','0', true,NOW(),NOW(),NOW());

insert into product_management.discount  (id, name, description, discount_percent, active, created_at, modified_at, deleted_at)
values(5,'discount 5','discount 5','5', true,NOW(),NOW(),NOW());




insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(1,'product1','product1','ABC-12345-S-BL', '345', 10,12, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031354/ib9yivqzadhb7x4rser3.jpg');


insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(2,'product2','product2','ABC-123451-S-BL', '35', 10,1, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031353/mrgmnxp14ya4feln5yaj.jpg');


insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(3,'product3','product3','ABC-123452-S-BL', '3452', 10,2, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031349/ospgm1udghbneiw8cctf.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(4,'product4','product4','ABC-123453-S-BL', '3452', 4,3, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031347/kmspo7ryxp4eaekrpaod.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(5,'product5','product5','ABC-123454-S-BL', '3415', 5,4, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031344/teotcgrfgggtkamt0qpa.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(6,'product6','product6','ABC-123455-S-BL', '3455', 5,5, 5, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031342/piu2znf8tbjoqvtju2ro.webp');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(7,'product7','product7','ABC-123465-S-BL', '3455', 5,6, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031341/dyg2d2ezcmjkocku8nrw.jpg');


insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(8,'product8','product8','ABC-123457-S-BL', '3245', 6,7, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031340/gobdutcqb6jtfh59jnzu.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(9,'product9','product9','ABC-123458-S-BL', '1345', 1,8, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031339/oq3hv5ycmobrnvrqupiu.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(10,'product10','product10','ABC-123459-S-BL', '2345', 1,9, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031337/yg6albawkdbxtrihutob.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(11,'product11','product11','ABC-1234510-S-BL', '6345', 1,10, 5, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031323/wc4yffoq9cm7u1tnscr1.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(12,'product12','product12','ABC-1234511-S-BL', '3345', 1,11, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031186/tintq2brhaxj7re6u05u.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(13,'product13','product13','ABC-1234512-S-BL', '345', 9,13, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031185/augr9q5ixikqwakhwpdp.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(14,'product14','product14','ABC-1234513-S-BL', '3345', 7,14, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031179/hlquc9zwcoih2jwxwj0h.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(15,'product15','product15','ABC-1234514-S-BL', '345', 10,15, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031175/hbnjeq0i1onahjn7hq0g.jpg');

insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(16,'product16','product16','ABC-1234515-S-BL', '2345', 6,16, 5, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031170/vnc5znkgtxnvvyj1cwnz.jpg');
insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(17,'product17','product17','ABC-1234516-S-BL', '6345', 8,17, 2, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031166/l1mrigb9axax4krf0oh7.jpg');
insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(18,'product18','product18','ABC-1234517-S-BL', '2345', 4,18, 1, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031164/qv1i8hqlba1uwkamjuzc.jpg');
insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(19,'product19','product19','ABC-1234518-S-BL', '2345', 3,19, 3, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031150/nyihxydrcjpgemzyqmvy.jpg');
insert into product_management.products  (id, name, description, sku, price, category_id, inventory_id, discount_id, created_at, modified_at, deleted_at, image)
values(20,'product20','product20','ABC-1234519-S-BL', '2345', 3,20, 4, NOW(),NOW(),NOW(),'https://res.cloudinary.com/dh30ib2eg/image/upload/v1707031139/oibv3uanx9a5iv3zrv0l.jpg');






insert into product_management."comments"(id, "text", likes, review, user_id)
values(1,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 1);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(2,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',12, 3, 2);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(3,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',22, 2, 3);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(4,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',32, 3, 4);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(5,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',42, 4, 5);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(6,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',12, 4, 6);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(7,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',12, 5, 7);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(8,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',42, 1, 8);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(9,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',62, 2, 9);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(10,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',27, 3, 10);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(11,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',28, 4, 1);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(12,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',29, 5, 2);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(13,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',22, 1, 3);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(14,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',3, 2, 4);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(15,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',6, 3, 5);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(16,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',7, 5, 6);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(17,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',8, 4, 7);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(18,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',9, 5, 8);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(19,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',10, 5, 9);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(20,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',11, 5, 10);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(21,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',1, 4, 2);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(22,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',3, 1, 1);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(23,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',4, 2, 3);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(24,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',6, 3, 4);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(25,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',9, 4, 5);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(26,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',32, 5, 6);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(27,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',33, 3, 7);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(28,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 5, 8);
insert into product_management."comments"(id, "text", likes, review, user_id)
values(29,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 9);


insert into product_management."comments"(id, "text", likes, review, user_id)
values(30,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 10);


 insert into product_management."comments"(id, "text", likes, review, user_id)
values(31,'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.',2, 4, 1);



update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=1;

update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=2;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=3;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=4;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=5;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=6;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=7;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=8;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=9;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=10;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=11;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=12;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=13;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=14;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=15;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=16;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=17;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=18;


 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=19;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=20;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=21;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=22;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=23;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=24;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=25;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=26;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=27;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=28;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=29;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=30;

 update product_management."comments" set text = 'Customers like the compatibility of the skin cleaning agent. 
They mention that it is very good for all skin types, works amazing on all skin,
 and is suitable for everyone. Some say that it perfectly suits their combination 
 skin and prevents zits all year. Overall, most are happy with the product compatibility.' where id=31;


UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 1;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 2;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 3;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 4;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 5;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 6;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 7;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 8;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 9;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 10;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 11;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 12;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 13;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 14;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 15;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 16;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 17;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 18;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 19;
UPDATE product_management.products SET description='What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the  standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
It has survived not only five centuries, but also the leap into electronic typesetting, 
remaining essentially unchanged. It was popularised in the 1960s 
with the release of Letraset sheets containing Lorem Ipsum passages, 
and more recently with desktop publishing software like Aldus PageMaker
including versions of Lorem Ipsum' where id = 20;




insert into product_management.product_comments(id, product_id, comment_id)
values(1,1,1);
insert into product_management.product_comments(id, product_id, comment_id)
values(2,2,2);
insert into product_management.product_comments(id, product_id, comment_id)
values(3,3,3);
insert into product_management.product_comments(id, product_id, comment_id)
values(4,4,4);
insert into product_management.product_comments(id, product_id, comment_id)
values(5,5,5);
insert into product_management.product_comments(id, product_id, comment_id)
values(6,6,6);
insert into product_management.product_comments(id, product_id, comment_id)
values(7,7,7);
insert into product_management.product_comments(id, product_id, comment_id)
values(8,8,8);
insert into product_management.product_comments(id, product_id, comment_id)
values(9,9,9);
insert into product_management.product_comments(id, product_id, comment_id)
values(10,10,10);
insert into product_management.product_comments(id, product_id, comment_id)
values(11,11,11);
insert into product_management.product_comments(id, product_id, comment_id)
values(12,12,12);
insert into product_management.product_comments(id, product_id, comment_id)
values(13,13,13);
insert into product_management.product_comments(id, product_id, comment_id)
values(14,14,14);
insert into product_management.product_comments(id, product_id, comment_id)
values(15,15,15);
insert into product_management.product_comments(id, product_id, comment_id)
values(16,16,16);
insert into product_management.product_comments(id, product_id, comment_id)
values(17,17,17);
insert into product_management.product_comments(id, product_id, comment_id)
values(19,18,18);
insert into product_management.product_comments(id, product_id, comment_id)
values(20,19,19);
insert into product_management.product_comments(id, product_id, comment_id)
values(21,20,20);
insert into product_management.product_comments(id, product_id, comment_id)
values(22,1,21);
insert into product_management.product_comments(id, product_id, comment_id)
values(23,2,22);
insert into product_management.product_comments(id, product_id, comment_id)
values(24,3,23);
insert into product_management.product_comments(id, product_id, comment_id)
values(25,4,24);
insert into product_management.product_comments(id, product_id, comment_id)
values(26,5,25);
insert into product_management.product_comments(id, product_id, comment_id)
values(27,6,26);
insert into product_management.product_comments(id, product_id, comment_id)
values(28,7,27);
insert into product_management.product_comments(id, product_id, comment_id)
values(29,8,29);
insert into product_management.product_comments(id, product_id, comment_id)
values(30,9,30);
insert into product_management.product_comments(id, product_id, comment_id)
values(31,10,31);
