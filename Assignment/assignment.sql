CREATE DATABASE assign;
CREATE TABLE userdata(
UserID INT NOT NULL PRIMARY KEY,
UserName VARCHAR(225) NOT NULL,
UserDOB date,
UserEmail VARCHAR(225),
userCreatedDate date);

INSERT INTO userdata(UserID,UserName,UserDOB,UserEmail,userCreatedDate) VALUES ('1','Jhon Wick','1987-05-22','jhonwick@user.com','2004-02-12');
INSERT INTO userdata(UserID,UserName,UserDOB,UserEmail,userCreatedDate) VALUES ('2','Johanathan Wick','1977-11-02','jonathanwick@user.com','2001-12-22');
INSERT INTO userdata(UserID,UserName,UserDOB,UserEmail,userCreatedDate) VALUES ('3','Jack Reacher','1969-02-15','jackreacher@user.com','2007-05-15');
INSERT INTO userdata(UserID,UserName,UserDOB,UserEmail,userCreatedDate) VALUES ('4','Yuri Boyka','1981-08-10','yuriboyka@user.com','2002-11-07');
INSERT INTO userdata(UserID,UserName,UserDOB,UserEmail,userCreatedDate) VALUES ('5','Stefan Steeven','1972-04-27','stefansteeven@user.com','2003-04-24');
INSERT INTO userdata(UserID,UserName,UserDOB,UserEmail,userCreatedDate) VALUES ('6','Paul Walker','1979-11-20','paulwalker@user.com','2002-09-08');

CREATE TABLE bank_account(
UserID INT NOT NULL,
bankAccountId INT NOT NULL,
bankAccountNumber INT NOT NULL,
is_userActive BOOL,
amount FLOAT,foreign key(UserID) references userdata(UserID));
 
INSERT INTO bank_account(UserID,bankAccountId,bankAccountNumber,is_userActive,amount) VALUES('1','0001','152456','1','125477');
INSERT INTO bank_account(UserID,bankAccountId,bankAccountNumber,is_userActive,amount) VALUES('2','0101','145784','1','11475.05');
INSERT INTO bank_account(UserID,bankAccountId,bankAccountNumber,is_userActive,amount) VALUES('3','0011','123546','1','1547856.00');
INSERT INTO bank_account(UserID,bankAccountId,bankAccountNumber,is_userActive,amount) VALUES('4','2001','124789','0','1252.75');
INSERT INTO bank_account(UserID,bankAccountId,bankAccountNumber,is_userActive,amount) VALUES('5','0301','146782','1','1254785.22');
INSERT INTO bank_account(UserID,bankAccountId,bankAccountNumber,is_userActive,amount) VALUES('6','5001','147814','0','12222.25');

SELECT* FROM bank_account;


CREATE TABLE transaction_table(
tansaction_date DATE,
UserID INT NOT NULL,
Bank_AC_id VARCHAR(255) NOT NULL,
withdrwan_amnt float4, foreign key(UserID) references userdata(UserID));



CALL account_bal('6',@l);
SELECT @l;

CALL transcation_all('1','2000-05-01','2023-06-01',@M,@L);
SELECT @M,@L;
