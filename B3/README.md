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
| user_id | varchar(255) | 留言人id |
| created_at | date | 发表时间 |


feedbacks(反馈表):


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| content | varchar(255) | 反馈内容|
| admin_id | varchar(255) | 管理员id |
| created_at | date | 发表时间 |


admins(管理员账户表)


| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| admin_name | varchar(255) | 管理员姓名 |
| password | varchar(255) | 密码 |
