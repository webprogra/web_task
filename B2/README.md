main.rb为sinatra平台,负责转发
User.rb与Message.rb为数据库模型
messages.rb为执行的方法
show.erb为主页面
login.erb为登录页面
signup.erb为注册页面
数据库构建:
数据库:create database message
表:create table users(id int not null,username varchar(255),password varchar(255),primary key(id));
create table messages(id int not null,content varchar(255),user_id int,created_at date,primary key(id));
