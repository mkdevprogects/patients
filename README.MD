# README
{<img src="https://travis-ci.org/mkdevprogects/patients.svg?branch=master" alt="Build Status" />}[https://travis-ci.org/mkdevprogects/patients]

App: the patient's personal area.
Functionality: medical card, symptom check and appointment to the doctor.

Running:

* git clone git@github.com:mkdevprogects/base.git
* cd base/
* Set the environment variables:
  PGUSER  
  PGPASSWORD  
  ENVPOSTGRES_DB  
  VOLUMES  
  ENVPGDATA  
  DB_HOST  
  DB_PG_PORT  
  DB_REDIS_HOST  
  DB_REDIS_PORT  
  HUTCH_MQ_HOST  
  HUTCH_MQ_API_HOST
  
* docker-compose -f docker-compose.demo.yml up
* open browser and go to http://0.0.0.0:3000/ and see patient app
* open browser and go to http://0.0.0.0:4000/ and see manager app
* open browser and go to http://0.0.0.0:5000/ and see history app

or

1. Set the environment variables for all apps:
PGUSER
DB_HOST
PGPASSWORD
ENVPOSTGRES_DB
ENVPGDATA
2. git clone git@github.com:mkdevprogects/base.git
3. cd base/
4. docker-compose up -d
5. cd ..
6. Clone app: git clone git@github.com:mkdevprogects/migrations.git
7. cd migrations/
8. Create database: rake db:create
9. Run migrations database: rake db:migrate
10. cd ..
11. Clone app: git clone git@github.com:mkdevprogects/patients.git
12. cd patients/
13. Create test data: rake db:seed
14. Run app: rails s
15. open browser and go to http://localhost:3000/ and see patient app

Example environment variables:

PGUSER=postgres

PGPASSWORD=12345

ENVPOSTGRES_DB=mkdev_dev

VOLUMES=/Users/user_name/pg_data

ENVPGDATA=/Users/user_name/pg_data

DB_HOST=postgres
for running only this app use DB_HOST=localhost

DB_PG_PORT=5432

Set this environment variables if you run all apps:

DB_REDIS_HOST=redis

DB_REDIS_PORT=6379

HUTCH_MQ_HOST=rabbitmq

HUTCH_MQ_API_HOST=rabbitmq
