
-- 1. Get all users from Chicago

SELECT *
FROM "syntax_practice" sp
WHERE sp."city" = 'chicago';

-- 2. Get all users with usernames that contain the letter a

SELECT *
FROM "syntax_practice" sp
WHERE sp."username" ILIKE '%a%';

-- 3. UPDATE all records with an account balance of 0.00
-- transactions_attempted = 0
-- UPDATE balance to 10

BEGIN TRANSACTION;

--SELECT *
--FROM "syntax_practice" sp
--WHERE sp."transactions_attempted" = 0
--	AND sp."account_balance" = 0;

-- only user is anthony, Id = 5

UPDATE "syntax_practice"
SET "account_balance" = 10
--SELECT *
WHERE "user_id" = 5; --username anthony

	
SELECT *
FROM "syntax_practice" sp;
--WHERE sp."user_id" = 5; --username anthony

--ROLLBACK;
COMMIT;


-- 4. select all users that have attempted 9 or more transaction

SELECT *
FROM "syntax_practice" sp
WHERE sp."transactions_attempted" >= 9;
	

-- 5.get the usernames and account balance of the 3 users with:
-- the highest balance
-- sort highest to lowest

SELECT sp."username"
	  ,sp.account_balance
FROM "syntax_practice" sp
ORDER BY "account_balance" DESC
LIMIT 3;

-- 6. same as five, sorted lowest to highest


SELECT sp."username"
	  ,sp.account_balance
FROM "syntax_practice" sp
ORDER BY "account_balance" ASC
LIMIT 3;

-- 7. get all users with an account balance of more than 100

SELECT *
FROM "syntax_practice" sp
WHERE sp."account_balance" > 100;

-- .8 add a new record

INSERT INTO syntax_practice (username
,city
,transactions_completed
,transactions_attempted
,account_balance) 
VALUES ('laura', 'minneapolis', 10, 20, 3.00);

SELECT *
FROM "syntax_practice" sp
WHERE sp."username" = 'laura';

-- 9
--Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
BEGIN TRANSACTION;

DELETE 
--SELECT * 
FROM "syntax_practice" sp
WHERE (sp."city" = 'phoenix' 
	OR sp."city" = 'miami')
AND sp."transactions_completed" < 5;


SELECT * 
FROM "syntax_practice" sp
WHERE (sp."city" = 'phoenix' 
	OR sp."city" = 'miami')
AND sp."transactions_completed" < 5;

ROLLBACK;



	


