CREATE TABLE IF NOT EXISTS APM_APP_HITS (
       UUID VARCHAR2(500) NOT NULL,
       APP_NAME VARCHAR2(200) NOT NULL,
       VERSION VARCHAR2(50),
       CONTEXT VARCHAR2(256) NOT NULL,
       USER_ID VARCHAR2(50) NOT NULL,
       TENANT_ID INTEGER,
       HIT_TIME TIMESTAMP NOT NULL,
       FOREIGN KEY (TENANT_ID,USER_ID) REFERENCES APM_SUBSCRIBER(TENANT_ID,USER_ID),
       PRIMARY KEY (APP_NAME, VERSION, USER_ID, TENANT_ID, HIT_TIME)
);

CREATE TABLE IF NOT EXISTS APM_EXTERNAL_STORES(
    APP_STORE_ID INTEGER AUTO_INCREMENT,
    APP_ID INTEGER,
    STORE_ID VARCHAR(255) NOT NULL,
    FOREIGN KEY(APP_ID) REFERENCES APM_APP(APP_ID) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (APP_STORE_ID)
);