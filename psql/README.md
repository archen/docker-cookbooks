psql
=================

PostgreSQL 9.3 for Docker.

    $ docker run -d -p 5432:5432 -e POSTGRESQL_USER=test -e POSTGRESQL_PASS=somepassword -e POSTGRESQL_DB=test localhost:5000/psql
    da809981545f
    $ psql -h localhost -U test test
    Password for user test:
    psql (9.3.2, server 9.3.4)
    Type "help" for help.

    test=#

(Example assumes PostgreSQL client is installed on Docker host.)


## Environment variables

 - `POSTGRESQL_DB`: A database that is automatically created if it doesn't exist. Default: `docker`
 - `POSTGRESQL_USER`: A user to create that has access to the database specified by `POSTGRESQL_DB`. Default: `docker`
 - `POSTGRESQL_PASS`: The password for `POSTGRESQL_USER`. Default: `docker`



