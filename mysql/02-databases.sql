CREATE DATABASE IF NOT EXISTS `queue`;
CREATE DATABASE IF NOT EXISTS `bot`;
GRANT ALL PRIVILEGES ON `queue`.* TO 'queue'@'%';
GRANT ALL PRIVILEGES ON `bot`.* TO 'bot'@'%';