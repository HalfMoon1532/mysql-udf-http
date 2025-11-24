# check=skip=SecretsUsedInArgOrEnv
FROM mysql:5.7.42

COPY build/libhttp.so /usr/lib64/mysql/plugin/libhttp.so
COPY lower_case.cnf /etc/mysql/conf.d/lower_case.cnf
COPY init.sql /docker-entrypoint-initdb.d/init.sql
ENV MYSQL_ROOT_PASSWORD=root