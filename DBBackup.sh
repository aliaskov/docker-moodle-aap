#!/bin/bash
USER="USER"
PASSWORD="PASSWORD"
HOST="localhost"
mysql -u $USER -p$PASSWORD -h $HOST --silent -e 'SELECT table_schema "DB Name", Round(Sum(data_length + index_length) / 1024 / 1024, 1) "DB Size in Mb" FROM information_schema.tables GROUP BY table_schema;'
databases=`mysql -u $USER -p$PASSWORD -h $HOST --silent  -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`
for db in $databases; do
    if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != _* ]] ; then
        echo "Dumping database: $db"
        mysqldump -u $USER -p$PASSWORD -h $HOST --single-transaction  --order-by-primary --compress  --databases $db > `date +%Y%m%d`.$db.sql
    fi
done
### Backup users and privileges
#Use mysql_native_password!


# ALTER USER 'yourusername'@'localhost' IDENTIFIED WITH mysql_native_password BY 'youpassword';

# CREATE USER 'your_user'@'your_server_ip ' IDENTIFIED WITH mysql_native_password BY 'your_password';
#mysql -u $USER -p$PASSWORD -h $HOST --skip-column-names -A -e "SELECT CONCAT('CREATE USER ','\'',user,'\'@\'',host,'\'','  IDENTIFIED BY PASSWORD ','\'',authentication_string,'\';') from mysql.user;" > `date +%Y%m%d`.Users.sql
#mysql -u $USER -p$PASSWORD -h $HOST --skip-column-names -A -e "SELECT CONCAT('SHOW GRANTS FOR ''',user,'''@''',host,''';') AS query FROM mysql.user WHERE user NOT IN ('root','pma','rdsadmin','mysql.sys','mysql.session','mysql.sys','debian-sys-maint')" | mysql -u $USER -p$PASSWORD -h $HOST --skip-column-names -A | sed 's/$/;/g' | sed 's/IDENTIFIED BY PASSWORD <secret>//g' >> `date +%Y%m%d`.Users.sql
#echo "flush privileges;" >> `date +%Y%m%d`.Users.sql
