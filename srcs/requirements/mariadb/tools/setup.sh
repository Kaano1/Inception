export $(grep -v '^#' .env | xargs)

cat <<EOF > setup.sql
CREATE DATABASE wordpress;
CREATE USER '${WORDPRESS_USER}'@'localhost' IDENTIFIED BY '${WORDPRESS_PASSWORD}';
GRANT ALL PRIVILEGES ON wordpress.* TO '${WORDPRESS_USER}'@'localhost';
FLUSH PRIVILEGES;
EOF

mysql -u root -p < setup.sql

rm setup.sql
