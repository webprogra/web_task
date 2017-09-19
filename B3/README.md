数据库名称:blog
数据库表结构:
posts(文章表):


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| name | varchar(255) | 文章名称 |
| content | varchar(255) | 文章内容|
| admin_id | varchar(255) | 管理员id |
| type | varchar(255) | 文章类型 |
| created_at | date | 发表时间 |


comments(留言表):


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| content | varchar(255) | 留言内容 |
| post_id | int | 文章id |
| nickname | varchar(255) | 留言人昵称 |
| created_at | date | 发表时间 |
| allowed | bool | 是否通过审核 |

feedbacks(反馈表):


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| content | varchar(255) | 反馈内容|
| nickname | varchar(255) | 反馈者昵称 |
| created_at | date | 发表时间 |


admins(管理员账户表)


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| username | varchar(255) | 管理员姓名 |
| password | varchar(255) | 密码 |


建立模型:

bin/rails generate controller Welcome index

bin/rails generate controller Posts

bin/rails generate controller Comments

bin/rails generate controller Feedbacks

bin/rails generate controller Guests

建表:

bin/rails generate model Post title:string content:text admin_id:integer type:string created_at:date

bin/rails generate model Comment content:text post_id:integer nickname:string created_at:date allowed:integer post:references

bin/rails generate model Feedback nickname:string content:text created_at:date

用户登录注册系统利用devise插件实现,任务中要求的基本功能基本实现,没有掌握Bookstrap插件的使用.
