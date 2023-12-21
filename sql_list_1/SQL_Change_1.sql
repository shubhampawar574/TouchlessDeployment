--liquibase formatted sql
--changeset shubham0531:2000
--preconditions onFail:CONTINUE
--comment: Initial creation of table Names
--validCheckSum: ANY
Create Table Names (
   ID INTEGER,
   FIRSTNAME VARCHAR(20),
   PRIMARY KEY (ID)
);
--rollback drop table Names;
 
--liquibase formatted sql
--changeset shubham0531:2001
--preconditions onFail:CONTINUE
--comment: Initial insertion of values in table Names
--validCheckSum: ANY
INSERT INTO EXT.Names (ID, FIRSTNAME) VALUES (1, 'Ram');
INSERT INTO EXT.Names (ID, FIRSTNAME) VALUES (2, 'Shyam');
INSERT INTO EXT.Names (ID, FIRSTNAME) VALUES (3, 'Raj');
--rollback delete from EXT.Names where ID=1;
--rollback delete from EXT.Names where ID=2;
--rollback delete from EXT.Names where ID=3;

