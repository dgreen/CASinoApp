rm cas.sqlite3
sqlite3 cas.sqlite3 <<EOF
create table users (
   id       int AUTO_INCREMENT, 
   uid      varchar(255) UNIQUE, 
   password varchar(255), 
   name     varchar(255), 
   email    varchar(255),
   PRIMARY KEY (id)
   );
insert into users (id, uid, password, name, email) values (1, 'dgreen', '3mRkW1yQmaoBU', 'David Green', 'dgreen@uab.edu');
insert into users (id, uid, password, name, email) values (2, 'gvaughn', '3mRkW1yQmaoBU', 'Gregg Vaughn', 'gvaughn@uab.edu');
.exit
EOF


# openssl passwd secret #=> 3mRkW1yQmaoBU