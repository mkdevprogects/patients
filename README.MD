# README
{<img src="https://travis-ci.org/mkdevprogects/patients.svg?branch=master" alt="Build Status" />}[https://travis-ci.org/mkdevprogects/patients]

Running:

* git clone git@github.com:mkdevprogects/base.git
* cd ~/base
* Set the environment variables:
  DB_HOST
  PGPASSWORD
  PGUSER
  ENVPOSTGRES_DB
  
* docker-compose -f docker-compose.demo.yml up
* open browser and go to http://0.0.0.0:3000/

or

1. Clone app: git clone git@github.com:mkdevprogects/migrations.git
2. cd ~/migrations
3. Set the environment variables:
DB_HOST
PGPASSWORD
PGUSER
4. Create database (rake db:create)
5. rake db:migrate
6. git clone git@github.com:mkdevprogects/patients.git
7. cd ~/patients
4. rake db:seed
5. rails s
6. open browser and go to http://localhost:3000/

Example environment variables:

DB_HOST=postgres

PGPASSWORD=12345

PGUSER=postgres

ENVPOSTGRES_DB=some_base