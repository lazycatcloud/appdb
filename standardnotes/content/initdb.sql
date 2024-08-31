CREATE DATABASE IF NOT EXISTS standard_notes_db;
CREATE USER 'std_notes_user'@'%' IDENTIFIED BY 'changeme123';
GRANT ALL PRIVILEGES ON standard_notes_db.* TO 'std_notes_user'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
