--======================================================================
--Author: TalentVouch TEAM
--      Date:   APR/28/2015
--  Modified Date: APR/28/2015
--      Description: This is the Script for creating tables for
--  Schema TV_DATA
--======================================================================

--======================================================================
--      Create Table TV_DATA.USERROLES and its constraints
--======================================================================
CREATE SCHEMA TV_DATA ;

CREATE TABLE TV_DATA.USERROLES (
    USERROLE_ID int    NOT NULL  AUTO_INCREMENT,
    USERROLE varchar(20)    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    STATUS int    NOT NULL ,
    CONSTRAINT USERROLES_PK PRIMARY KEY (USERROLE_ID)
);

--======================================================================
--      Create Table TV_DATA.CATEGORIES and its constraints
--======================================================================

CREATE TABLE TV_DATA.CATEGORIES (
    CATEGORY_ID int    NOT NULL AUTO_INCREMENT ,
    CATEGORYNAME varchar(250)    NOT NULL ,
    CREATED_BY int    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    STATUS int    NOT NULL ,
    CONSTRAINT CATEGORIES_PK PRIMARY KEY (CATEGORY_ID)
);

ALTER TABLE TV_DATA.CATEGORIES  AUTO_INCREMENT = 501;

--======================================================================
--      Create Table TV_DATA.LOCATION and its constraints
--======================================================================

CREATE TABLE TV_DATA.LOCATION (
    LOCATION_ID int    NOT NULL AUTO_INCREMENT ,
    CITYNAME varchar(150)    NOT NULL ,
    STATUS int    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    CREATED_BY int    NULL ,
    CONSTRAINT LOCATION_PK PRIMARY KEY (LOCATION_ID)
);

ALTER TABLE TV_DATA.LOCATION  AUTO_INCREMENT = 101;

--======================================================================
--      Create Table TV_DATA.EMPLOYER and its constraints
--======================================================================

CREATE TABLE TV_DATA.EMPLOYER (
    EMPLOYER_ID int    NOT NULL AUTO_INCREMENT ,
    EMP_USERNAME varchar(25)    NOT NULL ,
	EMP_PASSWORD varchar(250)    NOT NULL ,
    EMP_DISPLAYNAME varchar(25)    NOT NULL ,
    USERROLE_ID int    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    CREATED_BY int    NULL ,
    MODIFIED_BY int    NULL ,
    MODIFIED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    STATUS int    NOT NULL ,
    CONSTRAINT EMPLOYER_PK PRIMARY KEY (EMPLOYER_ID)
);

ALTER TABLE TV_DATA.EMPLOYER  AUTO_INCREMENT = 5001;

ALTER TABLE TV_DATA.EMPLOYER ADD CONSTRAINT EMPLOYER_USERROLES FOREIGN KEY EMPLOYER_USERROLES (USERROLE_ID)
    REFERENCES TV_DATA.USERROLES (USERROLE_ID);
-- Reference:  JOBS_CATEGORIES (table: JOBS)

--======================================================================
--      Create Table TV_DATA.EMPLOYERDETAILS and its constraints
--======================================================================

CREATE TABLE TV_DATA.EMPLOYERDETAILS (
    EMPDETAILS_ID int    NOT NULL AUTO_INCREMENT ,
    EMPLOYER_ID int    NOT NULL ,
    COMPANY_NAME varchar(50)    NOT NULL ,
    COMPANY_EMAILID varchar(50)    NULL ,
    EMPLOYER_EMAILID varchar(50)    NOT NULL ,
    COMPANY_ADDRESS varchar(256)    NOT NULL ,
    CONTACTNUMBER varchar(10)    NULL ,
    EMP_CONTACTNUMBER varchar(10)    NOT NULL ,
    COMPANY_LOGO varchar(250)    NULL ,
	CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    CREATED_BY int    NULL ,
    MODIFIED_BY int    NULL ,
    MODIFIED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    CONSTRAINT EMPLOYERDETAILS_PK PRIMARY KEY (EMPDETAILS_ID)
);

ALTER TABLE TV_DATA.EMPLOYERDETAILS  AUTO_INCREMENT = 4001;


ALTER TABLE TV_DATA.EMPLOYERDETAILS ADD CONSTRAINT EMPLOYERDETAILS_EMPLOYER FOREIGN KEY EMPLOYERDETAILS_EMPLOYER (EMPLOYER_ID)
    REFERENCES TV_DATA.EMPLOYER (EMPLOYER_ID);
-- Reference:  EMPLOYER_USERROLES (table: EMPLOYER)

--======================================================================
--      Create Table TV_DATA.USERS and its constraints
--======================================================================

CREATE TABLE TV_DATA.USERS (
    USER_ID int    NOT NULL  AUTO_INCREMENT ,
    USERNAME varchar(20)    NOT NULL ,
    DISPLAYNAME varchar(20)    NOT NULL ,
	PASSWORD varchar(250)    NOT NULL ,
    USERROLE_ID int    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
    CREATED_BY int    NULL ,
    MODIFIED_BY int    NULL ,
    MODIFIED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    STATUS int    NOT NULL ,
    CONSTRAINT USERS_PK PRIMARY KEY (USER_ID)
);

ALTER TABLE TV_DATA.USERS  AUTO_INCREMENT = 10001;

ALTER TABLE TV_DATA.USERS ADD CONSTRAINT Users_UserRoles FOREIGN KEY Users_UserRoles (USERROLE_ID)
    REFERENCES TV_DATA.USERROLES (USERROLE_ID);
	
--======================================================================
--      Create Table TV_DATA.USERDETAILS and its constraints
--======================================================================

CREATE TABLE TV_DATA.USERDETAILS (
    USERDETAILS_ID int    NOT NULL AUTO_INCREMENT ,
    USER_ID int    NOT NULL ,
    ADDRESS varchar(256)    NOT NULL ,
    PHONENUMBER int    NOT NULL ,
    EMAIL_ID varchar(50)    NOT NULL ,
    REWARDAMOUNT decimal(8,2)    NOT NULL ,
	EXPERIENCE decimal(2,1)    NULL ,
	JOB_TITLE varchar(100)    NULL ,
    JOB_LOCATION varchar(50)    NULL ,
    SKILLS text    NULL ,
	CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
    CREATED_BY int    NULL ,
    MODIFIED_BY int    NULL ,
    MODIFIED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    CONSTRAINT USERDETAILS_PK PRIMARY KEY (USERDETAILS_ID)
);

ALTER TABLE TV_DATA.USERDETAILS  AUTO_INCREMENT = 12001;

ALTER TABLE TV_DATA.USERDETAILS ADD CONSTRAINT USERDETAILS_USERS FOREIGN KEY USERDETAILS_USERS (USER_ID)
    REFERENCES TV_DATA.USERS (USER_ID);
-- Reference:  Users_UserRoles (table: USERS)
	
--======================================================================
--      Create Table TV_DATA.USEREDUDETAILS and its constraints
--======================================================================

CREATE TABLE TV_DATA.USEREDUDETAILS (
   USEREDUDET_ID int    NOT NULL  AUTO_INCREMENT ,
   USER_ID int    NOT NULL ,
   QUALIFICATION varchar(25)    NOT NULL ,
   FIELD_OF_STUDY varchar(25)    NOT NULL ,
   INSTITUTE_NAME varchar(50)    NOT NULL ,
   ACADEMIC_YEAR varchar(4)    NOT NULL ,
   CONSTRAINT USEREDUDETAILS_PK PRIMARY KEY (USEREDUDET_ID)
);

ALTER TABLE TV_DATA.USEREDUDETAILS  AUTO_INCREMENT = 13001;

ALTER TABLE TV_DATA.USEREDUDETAILS ADD CONSTRAINT USEREDUDTLS_USERS FOREIGN KEY USEREDUDTLS_USERS (USER_ID)
    REFERENCES TV_DATA.USERS (USER_ID);
-- Reference:  Users_UserRoles (table: USERS)


--======================================================================
--      Create Table TV_DATA.JOBS and its constraints
--======================================================================

CREATE TABLE TV_DATA.JOBS (
    JOB_ID int    NOT NULL AUTO_INCREMENT ,
    CATEGORY_ID int    NOT NULL ,
    EMPLOYER_ID int    NOT NULL ,
    JOB_TITLE varchar(100)    NOT NULL ,
    SHORTDESC varchar(150)    NOT NULL ,
    LONGDESC varchar(256)    NOT NULL ,
    SALARY VARCHAR(25)    NOT NULL ,
    REFERAL_AMOUNT decimal(8,2)    NOT NULL ,
    INTRO_AMOUNT decimal(8,2)    NULL ,
    LOCATION_ID int    NOT NULL ,
    EXPERIENCEREQUIRED VARCHAR(6)    NULL ,
    SKILLSREQUIRED VARCHAR(250) NOT NULL,
    STATUS int    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
    CREATED_BY int    NULL ,
    MODIFIED_BY int    NULL ,
    MODIFIED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP ,
    CONSTRAINT JOBS_PK PRIMARY KEY (JOB_ID)
);

ALTER TABLE TV_DATA.JOBS  AUTO_INCREMENT = 2001;

ALTER TABLE TV_DATA.JOBS ADD CONSTRAINT JOBS_CATEGORIES FOREIGN KEY JOBS_CATEGORIES (CATEGORY_ID)
    REFERENCES TV_DATA.CATEGORIES (CATEGORY_ID);
-- Reference:  JOBS_EMPLOYER (table: JOBS)


ALTER TABLE TV_DATA.JOBS ADD CONSTRAINT JOBS_EMPLOYER FOREIGN KEY JOBS_EMPLOYER (EMPLOYER_ID)
    REFERENCES TV_DATA.EMPLOYER (EMPLOYER_ID);
-- Reference:  JOBS_LOCATION (table: JOBS)


ALTER TABLE TV_DATA.JOBS ADD CONSTRAINT JOBS_LOCATION FOREIGN KEY JOBS_LOCATION (LOCATION_ID)
    REFERENCES TV_DATA.LOCATION (LOCATION_ID);
-- Reference:  REFERREDJOBS_JOBS (table: REFERREDJOBS)

--======================================================================
--      Create Table TV_DATA.APPLIEDJOBS and its constraints
--======================================================================

CREATE TABLE TV_DATA.APPLIEDJOBS (
    USER_ID int    NOT NULL ,
    JOB_ID int    NOT NULL ,
    CREATED_DATE TIMESTAMP    DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE TV_DATA.APPLIEDJOBS ADD CONSTRAINT APPLIEDJOBS_JOBS FOREIGN KEY APPLIEDJOBS_JOBS (JOB_ID)
    REFERENCES TV_DATA.JOBS (JOB_ID);
-- Reference:  APPLIEDJOBS_USERS (table: APPLIEDJOBS)


ALTER TABLE TV_DATA.APPLIEDJOBS ADD CONSTRAINT APPLIEDJOBS_USERS FOREIGN KEY APPLIEDJOBS_USERS (USER_ID)
    REFERENCES TV_DATA.USERS (USER_ID);
-- Reference:  EMPLOYERDETAILS_EMPLOYER (table: EMPLOYERDETAILS)

--======================================================================
--      Create Table TV_DATA.REFERREDJOBS and its constraints
--======================================================================

CREATE TABLE TV_DATA.REFERREDJOBS (
    BYUSER_ID int    NOT NULL ,
    JOB_ID int    NOT NULL ,
    CREATED_DATE timestamp    NOT NULL ,
    TOUSER_ID int    NOT NULL 
);

ALTER TABLE TV_DATA.REFERREDJOBS ADD CONSTRAINT REFERREDJOBS_JOBS FOREIGN KEY REFERREDJOBS_JOBS (JOB_ID)
    REFERENCES TV_DATA.JOBS (JOB_ID);
-- Reference:  REFERREDJOBS_USERS (table: REFERREDJOBS)


ALTER TABLE TV_DATA.REFERREDJOBS ADD CONSTRAINT REFERREDJOBS_USERS FOREIGN KEY REFERREDJOBS_USERS (BYUSER_ID)
    REFERENCES TV_DATA.USERS (USER_ID);

ALTER TABLE TV_DATA.REFERREDJOBS ADD CONSTRAINT REFERREDJOBS_USERS_FK FOREIGN KEY REFERREDJOBS_USERS_FK (TOUSER_ID)
    REFERENCES TV_DATA.USERS (USER_ID);
-- Reference:  USERDETAILS_USERS (table: USERDETAILS)


-- End of file.

