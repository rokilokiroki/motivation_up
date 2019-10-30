#!/bin/bash
mysql -uroot -psfk0105sql < /docker-entrypoint-initdb.d/init.sql

# ユーザー作成.
mysql -uroot -psfk0105sql -e "grant all on \`test\`.* to 'test_user'@'%' identified by 'sfk0105sql'"

