--liquibase formatted sql
--changeset shubham0531:2002
--preconditions onFail:CONTINUE
--comment: Initial creation of table Payments
--validCheckSum: ANY
Create Table Payments (
   ID INTEGER,
   SALARY INTEGER,
   PRIMARY KEY (ID)
); 
--rollback drop table Payments;


--liquibase formatted sql
--changeset shubham0531:2003
--preconditions onFail:CONTINUE
--comment: Initial insertion of values in table Payments
--validCheckSum: ANY
INSERT INTO EXT.Payments (ID, SALARY) VALUES (1, 20000);
INSERT INTO EXT.Payments (ID, SALARY) VALUES (2, 40000);
INSERT INTO EXT.Payments (ID, SALARY) VALUES (3, 10000);
--rollback delete from EXT.Payments where ID=1;
--rollback delete from EXT.Payments where ID=2;
--rollback delete from EXT.Payments where ID=3;



