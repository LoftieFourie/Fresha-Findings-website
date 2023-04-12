DROP TABLE SITE_USER;
DROP TABLE ITEMS;

DROP SEQUENCE Site_User_ID_seq;
DROP SEQUENCE Item_ID_seq;

CREATE TABLE SITE_USER(
    Site_User_ID int NOT NULL,
    Site_User_First_Name varchar(20),
    Site_User_Surname varchar(20),
    Site_User_Email varchar(50),
    Site_User_Province varchar(30),
    Site_User_Password varchar(30),
    Site_User_Preverences varchar(20),
    Site_User_Admin CHAR,
    PRIMARY KEY (Site_User_ID)
    );
    
CREATE SEQUENCE Site_User_ID_seq
    start with 1
    increment by 1
    minvalue 1
    maxvalue 100000
    cache 20
    nocycle;
    
CREATE TABLE ITEMS(
    Item_ID int NOT NULL,
    Site_User_ID int,
    Item_Name varchar(20),
    Item_price varchar(20),
    Item_Desc varchar(50),
    Item_Catagory varchar(30),
    Item_Upl_Date date,
    PRIMARY KEY (Item_ID),
    FOREIGN KEY (Site_User_ID) REFERENCES SITE_USER(Site_User_ID)
    );
    
CREATE SEQUENCE Item_ID_seq
    start with 1
    increment by 1
    minvalue 1
    maxvalue 100000
    cache 20
    nocycle;