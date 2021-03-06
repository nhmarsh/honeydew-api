INSERT INTO app_role (id, role_name, description) VALUES (1, 'STANDARD_USER', 'Standard User - Has no admin rights');
INSERT INTO app_role (id, role_name, description) VALUES (2, 'ADMIN_USER', 'Admin User - Has permission to perform admin tasks');

-- USER
-- non-encrypted password: jwtpass
-- Encrypted using strength 8 bcrypt encoding https://www.dailycred.com/article/bcrypt-calculator
INSERT INTO app_user (id, first_name, last_name, password, username) VALUES (1, 'John', 'Doe', '$2a$08$8wr/tb900VFNYBdodefGluO3pQ5gv5jFG6Q/gepAUD3hiHvsf2wke', 'john.doe');
INSERT INTO app_user (id, first_name, last_name, password, username) VALUES (2, 'Admin', 'Admin', '$2a$08$8wr/tb900VFNYBdodefGluO3pQ5gv5jFG6Q/gepAUD3hiHvsf2wke', 'admin.admin');
INSERT INTO app_user (id, first_name, last_name, password, username) VALUES (3, 'Test', 'Test', '$2a$08$8wr/tb900VFNYBdodefGluO3pQ5gv5jFG6Q/gepAUD3hiHvsf2wke', 'test.test');


INSERT INTO user_role(user_id, role_id) VALUES(1,1);
INSERT INTO user_role(user_id, role_id) VALUES(2,1);
INSERT INTO user_role(user_id, role_id) VALUES(2,2);
INSERT INTO user_role(user_id, role_id) VALUES(3,1);


--TASK

INSERT INTO task(id, status, task_name, description, user_id) VALUES (1, 0, 'Task one', 'Task one description', 1);
INSERT INTO task(id, status, task_name, description, user_id) VALUES (2, 1, 'Task two', 'Task two description', 1);
INSERT INTO task(id, status, task_name, description, user_id) VALUES (3, 3, 'Task three', 'Task three description', 1);
INSERT INTO task(id, status, task_name, description, user_id) VALUES (4, 1, 'Task four', 'Task four description', 1);
INSERT INTO task(id, status, task_name, description, user_id) VALUES (5, 2, 'Task five', 'Task five description', 1);
INSERT INTO task(id, status, task_name, description, user_id) VALUES (6, 0, 'Admin task', 'Admin task description', 2);

-- Populate random city table

INSERT INTO random_city(id, name) VALUES (1, 'Bamako');
INSERT INTO random_city(id, name) VALUES (2, 'Nonkon');
INSERT INTO random_city(id, name) VALUES (3, 'Houston');
INSERT INTO random_city(id, name) VALUES (4, 'Toronto');
INSERT INTO random_city(id, name) VALUES (5, 'New York');
INSERT INTO random_city(id, name) VALUES (6, 'Mopti');
INSERT INTO random_city(id, name) VALUES (7, 'Koulikoro');
INSERT INTO random_city(id, name) VALUES (8, 'Moscow');
