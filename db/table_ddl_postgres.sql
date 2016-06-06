-- PostgreSQL

CREATE TABLE PERSON (
  PERSON_ID                SERIAL,
  FNAME                    VARCHAR(50) NOT NULL,
  LNAME                    VARCHAR(50) NOT NULL,
  DOB                      DATE,
  PRIMARY KEY (PERSON_ID)
);

CREATE TABLE EVENT (
  EVENT_ID                 SERIAL,
  PERSON_ID                INTEGER NOT NULL,
  NAME                     VARCHAR(50),
  CITY                     VARCHAR(60),
  STATE                    VARCHAR(2),
  COUNTRY                  VARCHAR(2),
  HAS_EXPENSE              BOOLEAN,
  PRIMARY KEY (EVENT_ID),
  FOREIGN KEY (PERSON_ID) REFERENCES PERSON(PERSON_ID)
);

CREATE TABLE EXPENSE (
  EXPENSE_ID               SERIAL,
  EVENT_ID                 INTEGER NOT NULL,
  PAYOR_NAME               VARCHAR(50),
  EXPENSE_AMOUNT           INTEGER,
  EXPENSE_AMT_CURR         VARCHAR(3),
  PRIMARY KEY (EXPENSE_ID),
  FOREIGN KEY (EVENT_ID) REFERENCES EVENT(EVENT_ID)
);

