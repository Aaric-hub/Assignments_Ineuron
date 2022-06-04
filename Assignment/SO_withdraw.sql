CREATE DEFINER=`root`@`localhost` PROCEDURE `withdraw_amt`(IN ID INT,OUT amt FLOAT)
BEGIN
SELECT amount INTO amt FROM bank_account WHERE UserID = ID AND amount>5000;
END