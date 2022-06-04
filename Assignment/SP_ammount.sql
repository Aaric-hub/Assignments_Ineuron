CREATE DEFINER=`root`@`localhost` PROCEDURE `amount_accountID`(IN ID INT, OUT amt FLOAT)
BEGIN
SELECT amount INTO amt FROM bank_account WHERE bankAccountId = ID;
END