# leaseweb-api
Devon Task API

# How to run install and run api

# Clone the repository: git clone git@github.com:mshaduli/leaseweb-api.git

Run the following command after cloning

php composer.phar install

# Database Config

Look for the .env file in app root directory and edit the following line 

DATABASE_URL=mysql://db_user:db_password@host:3306/db_name

Create the database 

php bin/console doctrine:database:create

Create the schema and update table structure

php bin/console doctrine:schema:create

# Data import

serevrs.sql file is provided in root dir of app. Please upload or import this to mysql db via phpMyAdmin or through command line

mysql -uroot -p dbnmae < path to servers.sql












