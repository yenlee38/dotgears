
![alt text](https://res.cloudinary.com/yenltn/image/upload/v1636534686/treegames/lg_fqoagy.png)
# Treegames
### How to use
#### 1. Change name database, username, password mysql in application.properties file.
#### 2. Run project to auto create table for database.
#### 3. Insert account Admin
"insert into admin (id, username, password,matching_password, role, updated_at, created_at, is_hidden) 
value (0, 'admin', '123', '123', 'ROLE_ADMIN', null, null, false);" in your MYSQL 
#### 4.Account Admin can login in : http://localhost:8080/treegames/login
#### 5. Home admin: http://localhost:8080/treegames/admin/post
#### 6. Home user: http://localhost:8080/treegames/home
