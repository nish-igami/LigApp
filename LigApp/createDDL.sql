CREATE TABLE COMPETITOR (ID VARCHAR NOT NULL, NAME VARCHAR, PRIMARY KEY (ID))
CREATE TABLE MATCHRESULT (ID VARCHAR NOT NULL, CHALLENGERSSCORE NUMBER(10), DEFENDERSSCORE NUMBER(10), PRIMARY KEY (ID))
CREATE TABLE MATCH (ID NUMBER(10) NOT NULL, CHALLENGER_ID VARCHAR, DEFENDER_ID VARCHAR, FINALSCORE_ID VARCHAR, PRIMARY KEY (ID))
CREATE TABLE LEAGUE (ID NUMBER(10) NOT NULL, COMPETITORS BLOB, MATCHES BLOB, NAME VARCHAR, PRIMARY KEY (ID))
ALTER TABLE MATCH ADD CONSTRAINT FK_MATCH_FINALSCORE_ID FOREIGN KEY (FINALSCORE_ID) REFERENCES MATCHRESULT (ID)
ALTER TABLE MATCH ADD CONSTRAINT FK_MATCH_DEFENDER_ID FOREIGN KEY (DEFENDER_ID) REFERENCES COMPETITOR (ID)
ALTER TABLE MATCH ADD CONSTRAINT FK_MATCH_CHALLENGER_ID FOREIGN KEY (CHALLENGER_ID) REFERENCES COMPETITOR (ID)
