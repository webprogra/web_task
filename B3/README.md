数据库名称:blog
数据库表结构:
posts(文章表):
name | type
------|------
id | int
name | varchar(255)
amin_id | int
type | varchar(255)
created_at | date
comments(留言表):
name | type
------|------
id | int
content | varchar(255)
post_id | int
user_id |int
created_at |date
feedbacks(反馈表):
name|type
------|------
id | int
content | varchar(255)
admin_id | int
created_at |date
admins(管理账户表):
name | type
------|------
id | int
username |varchar(255)
password |varchar(255)

posts(文章表):
| Name | Type | Remarks |
| - | :-: | -: |
| id | int | not null |
| name | varchar(255) | 文章名称 |
| content | varchar(255) | 文章内容|
| admin_id | varchar(255) | 管理员id |
| type | varchar(255) | 文章类型 |
| created_at | date | 发表时间 |
