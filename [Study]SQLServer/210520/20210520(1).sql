SELECT * FROM TB_USER

BEGIN TRAN
UPDATE TB_USER SET PW = '2222'
ROLLBACK
COMMIT