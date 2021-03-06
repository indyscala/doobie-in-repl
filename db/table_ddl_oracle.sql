-- Oracle

CREATE TABLE PERSON (
  PERSON_ID                NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  FNAME                    VARCHAR2 (50 BYTE) NOT NULL,
  LNAME                    VARCHAR2 (50 BYTE) NOT NULL,
  DOB                      DATE,
  PRIMARY KEY (PERSON_ID)
);

CREATE TABLE EVENT (
  EVENT_ID                 NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  PERSON_ID                NUMBER NOT NULL,
  NAME                     VARCHAR2 (50 BYTE),
  CITY                     VARCHAR2 (60 BYTE),
  STATE                    VARCHAR2 (2 BYTE),
  COUNTRY                  VARCHAR2 (2 BYTE),
  HAS_EXPENSE              INTEGER CHECK (HAS_EXPENSE IN (NULL, 0, 1)),
  PRIMARY KEY (EVENT_ID),
  FOREIGN KEY (PERSON_ID) REFERENCES PERSON(PERSON_ID)
);


CREATE TABLE EXPENSE (
  EXPENSE_ID               NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
  EVENT_ID                 NUMBER NOT NULL,
  PAYOR_NAME               VARCHAR2 (50 BYTE),
  EXPENSE_AMOUNT           NUMBER (12),
  EXPENSE_AMT_CURR         VARCHAR2 (3 BYTE),
  PRIMARY KEY (EXPENSE_ID),
  FOREIGN KEY (EVENT_ID) REFERENCES EVENT(EVENT_ID)
);

