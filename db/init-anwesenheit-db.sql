CREATE USER '$ANWESENHEIT_USER'@'anwesenheit' IDENTIFIED BY '$ANWESENHEIT_PASSWORD';
CREATE DATABASE $ANWESENHEIT_DB;
GRANT ALL PRIVILEGES ON $ANWESENHEIT_DB.* TO '$ANWESENHEIT_USER'@'anwesenheit';
GRANT SELECT ON $MYSQL_DATABASE.* TO '$ANWESENHEIT_USER'@'anwesenheit';