-- authority table 
select * from AUTHORITY;

-- authority_rel table
select * from AUTHORITY_REL;

--member table
SELECT * FROM MEMBER;

--member list inner join with AUTHORITY
select 
	MEM.MEMBER_SEQ as MEMBER_SEQ
	, MEM.EMAIL as EMAIL
	, MEM.NAME  as NAME 
	, MEM.PHONE as PHONE
	, AUTH.AUTHORITY as AUTHORITY
from MEMBER MEM INNER JOIN AUTHORITY_REL AUTH_REL
			  			ON MEM.MEMBER_SEQ = AUTH_REL.MEMBER_SEQ INNER JOIN AUTHORITY AUTH
			  															ON AUTH_REL.ID_AUTHORITY = AUTH.ID_AUTHORITY;
			  															
--
			  															
			  															
-- to assign authority into some member
INSERT INTO AUTHORITY_REL (MEMBER_SEQ, ID_AUTHORITY) VALUES('UUID-1541', 'UUID-A001');
INSERT INTO AUTHORITY_REL (MEMBER_SEQ, ID_AUTHORITY) VALUES('UUID-7845887', 'UUID-A001');


