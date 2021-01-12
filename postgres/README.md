## Connect from terminal

`docker exec -it postgres-container psql -U postgres`

## Create database

`create database myDb`

## Create user

`create user myUser with encrypted password 'pass'`

## Add privileges

`grant all privileges on database myDb to myUser`
