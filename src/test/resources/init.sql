-- schema owner
CREATE USER stt WITH password 'stt';

-- schema user
CREATE USER stt_user WITH password 'stt_user';

-- create schema
CREATE SCHEMA stt AUTHORIZATION stt;

GRANT USAGE ON SCHEMA stt TO stt_user;

ALTER DEFAULT PRIVILEGES FOR USER stt IN SCHEMA stt GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE  ON TABLES TO stt_user;
ALTER DEFAULT PRIVILEGES FOR USER stt IN SCHEMA stt GRANT USAGE ON SEQUENCES TO stt_user;
ALTER DEFAULT PRIVILEGES FOR USER stt IN SCHEMA stt GRANT EXECUTE ON FUNCTIONS  TO stt_user;

alter user stt_user set search_path = 'stt';