-- USER SQL
CREATE USER TALENDUSR IDENTIFIED BY "TALENDUSR"  
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK;

-- QUOTAS
ALTER USER TALENDUSR QUOTA UNLIMITED ON USERS;

-- ROLES
GRANT "SELECT_CATALOG_ROLE" TO TALENDUSR ;
GRANT "EXECUTE_CATALOG_ROLE" TO TALENDUSR ;
ALTER USER TALENDUSR DEFAULT ROLE "SELECT_CATALOG_ROLE","EXECUTE_CATALOG_ROLE";

-- SYSTEM PRIVILEGES
GRANT CREATE TRIGGER TO TALENDUSR ;
GRANT CREATE ANY DIRECTORY TO TALENDUSR ;
GRANT DEBUG CONNECT SESSION TO TALENDUSR ;
GRANT ALTER SESSION TO TALENDUSR ;
GRANT CREATE MATERIALIZED VIEW TO TALENDUSR ;
GRANT CREATE DIMENSION TO TALENDUSR ;
GRANT DEBUG ANY PROCEDURE TO TALENDUSR ;
GRANT CREATE VIEW TO TALENDUSR ;
GRANT ALTER ANY TABLE TO TALENDUSR ;
GRANT CREATE SESSION TO TALENDUSR ;
GRANT SELECT ANY TABLE TO TALENDUSR ;
GRANT CREATE TABLE TO TALENDUSR ;
GRANT DROP ANY TABLE TO TALENDUSR ;
GRANT CREATE TYPE TO TALENDUSR ;
GRANT LOCK ANY TABLE TO TALENDUSR ;
GRANT ALTER USER TO TALENDUSR ;
GRANT QUERY REWRITE TO TALENDUSR ;
GRANT CREATE SYNONYM TO TALENDUSR ;
GRANT CREATE SEQUENCE TO TALENDUSR ;
GRANT CREATE ANY TABLE TO TALENDUSR ;
GRANT RESUMABLE TO TALENDUSR ;
GRANT CREATE PROCEDURE TO TALENDUSR ;

-- QUOTAS
ALTER USER "TALENDUSR" QUOTA UNLIMITED ON USERS;

-- ROLES
ALTER USER "TALENDUSR" DEFAULT ROLE "SELECT_CATALOG_ROLE","EXECUTE_CATALOG_ROLE";

-- SYSTEM PRIVILEGES
