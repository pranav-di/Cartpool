/* Add admin */
insert into cartpool.users (id,city,state,street,zip,email,email_verified,name,nick_name,password,provider,role,credit)
 values(1,'San Jose','CA','San Fernando','95132','test@sjsu.edu',1,'Alice','Alice','password','local','ADMIN',0);

/* Add users */
insert into cartpool.users (id,city,state,street,zip,email,email_verified,name,nick_name,password,provider,role,credit)
 values(2,'San Jose','CA','San Fernando','95132','tanajigjadhav@gmail.com',1,'Bob','Bob','password','local','POOLLEADER',0);

insert into cartpool.users (id,city,state,street,zip,email,email_verified,name,nick_name,password,provider,role,credit)
 values(3,'San Jose','CA','San Fernando','95132','pranavd488@gmail.com',1,'Carl','Carl','password','local','POOLER',0);

insert into cartpool.users (id,city,state,street,zip,email,email_verified,name,nick_name,password,provider,role,credit)
 values(4,'San Jose','CA','San Fernando','95132','test3@gmail.com',1,'David','David','password','local','POOLER',0);

/* Add stores */
INSERT INTO cartpool.STORE (id,city,state,street,zip,name) values(1,"San Jose","CA","1641 N Capitol Ave","95132","Lucky");
INSERT INTO cartpool.STORE (id,city,state,street,zip,name) values(2,"San Jose","CA","1300 W San Carlos St","95132","Safeway");

/* Add products */
INSERT INTO cartpool.product (id,brand,description,img_url,name,price,unit)
values (1,"Top apples","Organic apples","abc","Apple","1","PIECE");
INSERT INTO cartpool.product (id,brand,description,img_url,name,price,unit)
values (2,"Top bread","Wheat bread","abc","Bread","2","PIECE");


/* Add product store mapping */
INSERT INTO cartpool.product_store (store_id,product_id) values(1,1);
INSERT INTO cartpool.product_store (store_id,product_id) values(1,2);

INSERT INTO cartpool.product_store (store_id,product_id) values(2,1);
INSERT INTO cartpool.product_store (store_id,product_id) values(2,2);

/* Add pool */
INSERT INTO cartpool.pool (uuid,description,name,neighbourhood,zipcode,owner_id)
VALUES ('52b87c6e-6a4d-4895-8844-56aaad9463c4','Evergreen pool','Evergreen','San Fernando','95132',2);

/* Update users */

/* Add Bob */
UPDATE cartpool.users SET pool_id='52b87c6e-6a4d-4895-8844-56aaad9463c4' WHERE id = 2;
/* Add Carl */
UPDATE cartpool.users SET pool_id='52b87c6e-6a4d-4895-8844-56aaad9463c4' WHERE id = 3;

/* Add Carl's order */
INSERT INTO cartpool.orders (id,created_date,status,owner,store_id,picked_by) values(1,NOW(), "PICKED", 3, 1, 2);

/* Add order product mappings */
INSERT INTO cartpool.order_details (quantity,order_id,product_id) values(5,1,1);
INSERT INTO cartpool.order_details (quantity,order_id,product_id) values(6,1,2);