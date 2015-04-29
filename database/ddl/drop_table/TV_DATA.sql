--======================================================================
--Author: TalentVouch TEAM
--      Date:   APR/28/2015
--  Modified Date: APR/28/2015
--      Description: This is the Script for dropping tables and constraints
--======================================================================

--======================================================================
--      Drop Constraints of TV_DATA.REFERREDJOBS
--======================================================================

ALTER TABLE TV_DATA.REFERREDJOBS DROP FOREIGN KEY REFERREDJOBS_JOBS;
ALTER TABLE TV_DATA.REFERREDJOBS DROP FOREIGN KEY REFERREDJOBS_USERS;
ALTER TABLE TV_DATA.REFERREDJOBS DROP FOREIGN KEY REFERREDJOBS_USERS_FK;

--======================================================================
--      Drop Constraints of TV_DATA.APPLIEDJOBS
--======================================================================

ALTER TABLE TV_DATA.APPLIEDJOBS DROP FOREIGN KEY APPLIEDJOBS_JOBS;
ALTER TABLE TV_DATA.APPLIEDJOBS DROP FOREIGN KEY APPLIEDJOBS_USERS;

--======================================================================
--      Drop Constraints of TV_DATA.JOBS
--======================================================================
ALTER TABLE TV_DATA.JOBS MODIFY JOB_ID INT NOT NULL;
ALTER TABLE TV_DATA.JOBS DROP PRIMARY KEY;
ALTER TABLE TV_DATA.JOBS DROP FOREIGN KEY JOBS_CATEGORIES;
ALTER TABLE TV_DATA.JOBS DROP FOREIGN KEY JOBS_EMPLOYER;
ALTER TABLE TV_DATA.JOBS DROP FOREIGN KEY JOBS_LOCATION;


--======================================================================
--      Drop Constraints of TV_DATA.USEREDUDETAILS
--======================================================================

ALTER TABLE TV_DATA.USEREDUDETAILS MODIFY USEREDUDET_ID INT NOT NULL;
ALTER TABLE TV_DATA.USEREDUDETAILS DROP PRIMARY KEY ;
ALTER TABLE TV_DATA.USEREDUDETAILS DROP FOREIGN KEY USEREDUDTLS_USERS;
--======================================================================
--      Drop Constraints of TV_DATA.USERDETAILS
--======================================================================

ALTER TABLE TV_DATA.USERDETAILS MODIFY USERDETAILS_ID INT NOT NULL;
ALTER TABLE TV_DATA.USERDETAILS DROP PRIMARY KEY ;
ALTER TABLE TV_DATA.USERDETAILS DROP FOREIGN KEY USERDETAILS_USERS;

--======================================================================
--      Drop Constraints of TV_DATA.USERS
--======================================================================

ALTER TABLE TV_DATA.USERS MODIFY USER_ID INT NOT NULL;
ALTER TABLE TV_DATA.USERS DROP PRIMARY KEY;
ALTER TABLE TV_DATA.USERS DROP FOREIGN KEY Users_UserRoles;

--======================================================================
--      Drop Constraints of TV_DATA.EMPLOYERDETAILS
--======================================================================

ALTER TABLE TV_DATA.EMPLOYERDETAILS MODIFY EMPDETAILS_ID INT NOT NULL;
ALTER TABLE TV_DATA.EMPLOYERDETAILS DROP PRIMARY KEY ;
ALTER TABLE TV_DATA.EMPLOYERDETAILS DROP FOREIGN KEY EMPLOYERDETAILS_EMPLOYER;

--======================================================================
--      Drop Constraints of TV_DATA.EMPLOYER
--======================================================================

ALTER TABLE TV_DATA.EMPLOYER MODIFY EMPLOYER_ID INT NOT NULL;
ALTER TABLE TV_DATA.EMPLOYER DROP PRIMARY KEY ;
ALTER TABLE TV_DATA.EMPLOYER DROP FOREIGN KEY EMPLOYER_USERROLES;

--======================================================================
--      Drop Constraints of TV_DATA.USERROLES
--======================================================================

ALTER TABLE TV_DATA.USERROLES MODIFY USERROLE_ID INT NOT NULL;
ALTER TABLE TV_DATA.USERROLES DROP PRIMARY KEY ;

--======================================================================
--      Drop Constraints of TV_DATA.LOCATION
--======================================================================

ALTER TABLE TV_DATA.LOCATION MODIFY LOCATION_ID INT NOT NULL;
ALTER TABLE TV_DATA.LOCATION DROP PRIMARY KEY ;

--======================================================================
--      Drop Constraints of TV_DATA.CATEGORIES
--======================================================================

ALTER TABLE TV_DATA.CATEGORIES MODIFY CATEGORY_ID INT NOT NULL;
ALTER TABLE TV_DATA.CATEGORIES DROP PRIMARY KEY ;


--======================================================================
--      Drop Tables of Schema TV_DATA
--======================================================================

DROP TABLE TV_DATA.APPLIEDJOBS;
DROP TABLE TV_DATA.REFERREDJOBS;
DROP TABLE TV_DATA.CATEGORIES;
DROP TABLE TV_DATA.EMPLOYER;
DROP TABLE TV_DATA.EMPLOYERDETAILS;
DROP TABLE TV_DATA.JOBS;
DROP TABLE TV_DATA.LOCATION;
DROP TABLE TV_DATA.USERDETAILS;
DROP TABLE TV_DATA.USERROLES;
DROP TABLE TV_DATA.USERS;

--======================================================================
--      Drop the Schema TV_DATA 
--======================================================================

DROP SCHEMA TV_DATA;
