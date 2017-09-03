main.rb为sinatra平台,负责转发;
messages.rb为执行过程中用到的的方法;
User.rb与Message.rb为数据库模型;
show.erb为主页面;
login.erb为登录页面;
login_error.erb登录时输入信息错误转向的页面;
signup.erb为注册页面;
signup_error.erb为注册时信息填写不正确转向的页面;
exit.erb为用户未在登录状态时转向的页面;
add_error.erb为用户添加留言格式错误时转向的页面;
result.erb用户查询信息结果页面;


数据库构建:

数据库名称:message

messages:


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| content | varchar(255) | 留言内容|
| user_id | varchar(255) | 留言人id |
| created_at | date | 发表时间 |


users:


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| admin_name | varchar(255) | 管理员姓名 |
| password | varchar(255) | 密码 |


建表语句:create table users(id int not null auto_increment,username varchar(255) character set gb2312,password varchar(255) character set gb2312,primary key(id));
create table messages(id int not null auto_increment,content varchar(255) character set gb2312,user_id int,created_at date,primary key(id));
