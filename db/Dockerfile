FROM mariadb:10.0

ENV MYSQL_ROOT_PASSWORD sfk0105sql
ENV MYSQL_USER test_user
ENV MYSQL_PASSWORD sfk0105sql
ENV MYSQL_DATABASE test

ADD ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
