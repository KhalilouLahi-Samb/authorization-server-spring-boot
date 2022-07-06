-- For this demo test we will use 2 users:
-- user1 :
--       username = ibrahima ; password = ibrahima@123 . This user will have two authorities ( ADD & VIEW )
-- user2:
--       username =  rose ; password = rose1234@ . This user will have only one AUthority ( VIEW )
-- NB: for passwords we will use the crypted version with Bcrypt

INSERT INTO users(username, password, enabled)
VALUES ('ibrahima', '$2a$04$G7LvMI9d9omv7x6U6Vu3K.NHdsMUe/E6NIIWHhl4ZF4/hq1VpYom2', TRUE),
('rose', '$2a$04$V3OxpiqzloaVGr/wTV1BUuiOvRzpNR6Ty2JMuLEJArolrwAzKbhIK', TRUE);


INSERT INTO groups(id, group_name)
VALUES (1, 'ADMIN_GROUP'),
(2, 'USER_GROUP');

INSERT INTO group_authorities(group_id, authority)
VALUES (1, 'ADD'),
(1, 'VIEW'),
(2, 'VIEW');

INSERT INTO group_members(username, group_id)
VALUES ('ibrahima', 1),
('rose', 2);


-- Here , we will add app clients informations
-- For exemple our client has :
--            client_id = carsServiceClient; client_secret = carsService123@

INSERT INTO oauth_client_details(
client_id,
client_secret,
resource_ids,
scope,
authorized_grant_types,
access_token_validity,
refresh_token_validity
)
VALUES (
'carsServiceClient',
'$2a$08$Kp5ONK1kz2hq4fDMKB1KkuWpWwUQjDKx.JP0w0kLMCDmcx2wvvZsq',
'carService',
'read,write',
'authorization_code,check_token,refresh_token,password',
1000000,
1000000
);