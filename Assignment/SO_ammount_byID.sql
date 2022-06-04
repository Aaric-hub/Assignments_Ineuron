CREATE DEFINER=`root`@`localhost` PROCEDURE `account_bal`(IN ID INT, OUT amt FLOAT)
BEGIN
select amount INTO amt from bank_account WHERE UserID = ID; 
END