
#LOCATION
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Visakhapatnam', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Hyderabad', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Mumbai', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Chennai', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Pune', '1') ;
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Banglore', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Delhi', '1');

#USERROLES
INSERT INTO TV_DATA.USERROLES (USERROLE,STATUS) VALUES ('admin','1');
INSERT INTO TV_DATA.USERROLES (USERROLE,STATUS) VALUES ('employer','1');
INSERT INTO TV_DATA.USERROLES (USERROLE,STATUS) VALUES ('user','1');

#EMPLOYER
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('Ramana','ramana','ramana',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('siva','siva','siva',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('manoj','manoj','manoj',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('nishant','nishant','nishant',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('vikas','vikas','vikas',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('pavani','pavani','pavani',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');

#EMPLOYERSDETAILS
INSERT INTO TV_DATA.EMPLOYERDETAILS(EMPLOYER_ID, COMPANY_NAME, COMPANY_EMAILID, EMPLOYER_EMAILID, COMPANY_ADDRESS, CONTACTNUMBER, EMP_CONTACTNUMBER) 
    VALUES ((SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'ramana'), 'RamSan Technologies','services@ramsantech.com', 'ramana@ramsantech.com', '13-109, high floors, Mechigen', '089124143', '8099083946');
INSERT INTO TV_DATA.EMPLOYERDETAILS(EMPLOYER_ID, COMPANY_NAME, COMPANY_EMAILID, EMPLOYER_EMAILID, COMPANY_ADDRESS, CONTACTNUMBER, EMP_CONTACTNUMBER) 
    VALUES ((SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'siva'), 'JavaRaava.com','service@javaraava.com', 'siva@javaraava.com', '123-4, Vizag Towers, Visakhapatnam', '0891254432', '9052333265');
INSERT INTO TV_DATA.EMPLOYERDETAILS(EMPLOYER_ID, COMPANY_NAME, COMPANY_EMAILID, EMPLOYER_EMAILID, COMPANY_ADDRESS, CONTACTNUMBER, EMP_CONTACTNUMBER) 
    VALUES ((SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'nishant'), 'NS Global Intelligence','service@nsgi.com', 'nishant@nsgi.com', '#23-45, NS Towers, Kachigowda, Hyderabad', '089125555', '9030667696');
INSERT INTO TV_DATA.EMPLOYERDETAILS(EMPLOYER_ID, COMPANY_NAME, COMPANY_EMAILID, EMPLOYER_EMAILID, COMPANY_ADDRESS, CONTACTNUMBER, EMP_CONTACTNUMBER) 
    VALUES ((SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'manoj'), 'Ramuk Creative Curve','info@rcc.com', 'manoj@rcc.com', '#123-45, Miracle Towers, Chennai', '089125555', '9494452408');

#USERS
INSERT INTO TV_DATA.USERS (USERNAME, DISPLAYNAME, PASSWORD, USERROLE_ID,STATUS) VALUES ('admin','admin','admin123',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'admin'),1);

#replace the email id with the registered email id
#USERDETAILS	
INSERT INTO TV_DATA.USERDETAILS (USER_ID, ADDRESS, PHONENUMBER, EMAIL_ID, EXPERIENCE, REWARDAMOUNT, JOB_TITLE, JOB_LOCATION, SKILLS) 
	VALUES ((SELECT USER_ID FROM TV_DATA.USERS WHERE USERNAME = 'ramana@gmail.com'),'13-23/4,b.c colony, arilova','8099983946',
			 'ramana@gmail.com', '0', '0', '', '', 'J2SE,J2EE,Spring MVC');

	
#CATEGORIES
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Application Development",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Automation",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("BPO",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Business Development",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Content/Journalism",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Copy Writer",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Creative Design",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Client Servicing",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Computers",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Engineering Design",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Finance",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("HR/Administration/IR",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("IT Software - Application Programming",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("IT Software - Ecommerce/Internet",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Marketing/Advertising",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Product Development",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Program Manager",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Product Training",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Sales/BD",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Sales Training",10001,1);


#jobs
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, SKILLSREQUIRED, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID,EXPERIENCEREQUIRED,STATUS,SALARY) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'Application Development'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'Ramana'),'Software Trainee','Software Trainee desc','The roles include development works','Core java, C, C++', 25000, 20000,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'visakhapatnam'), 0, '1','25000-35000');
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, SKILLSREQUIRED, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID,EXPERIENCEREQUIRED,STATUS,SALARY) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'Application Development'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'siva'),'Sr.Java Developer','Java Developer','The roles include developing java projects', 'Core java, J2EE, JSP, C, C++', 25000, 35000,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'visakhapatnam'), 0, '1','34000');
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID, SKILLSREQUIRED, EXPERIENCEREQUIRED,STATUS,SALARY) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'BPO'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'nishant'),'BPO/KPO Sr. Executive - Voice - Fixed Shift','Senior Executive','Immediate Hiring on Demand: Generation (Executive/Sr. Executive) - Fixed Shift.', 20000, 2500,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'banglore'), 'BPO, KPO, Market Research', 0, '1','250000');
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID, SKILLSREQUIRED, EXPERIENCEREQUIRED,STATUS,SALARY) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'IT Software - Application Programming'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'nishant'),'Applications Developer','App Developer','Analyze, design, develop, troubleshoot and debug software programs for commercial or end user applications.', 35000, 3500,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'banglore'), 'MySQL Server, SSIS, SSRS, Javascript, XML, T - SQL', 0, '1','350000');
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID, SKILLSREQUIRED, EXPERIENCEREQUIRED,STATUS,SALARY) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'Creative Design'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'manoj'),'Senior PHP Web Developer','PHP Developer','Looking for PHP/MySQL Developer for E-commerce Websites', 30000, 3000,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'chennai'), 'Ecommerce, php, mysql', 0, '1','250000');
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID, SKILLSREQUIRED, EXPERIENCEREQUIRED,STATUS,SALARY) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'IT Software - Ecommerce/Internet'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'manoj'),'Manager - Web Analytics(E-Commerce)','App Developer', '', 45000, 4500,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'chennai'), 'E-comm, Digital Marketing, Email Marketing, SMS Marketing', 3, '1','450000');



