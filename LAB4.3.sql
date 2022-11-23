﻿--Bài 3/1
BEGIN TRY 
	INSERT PHONGBAN
	VALUES(799,'ZXK-799','2008-07-01','0197-05-22')
	PRINT 'SUCCESS: RECORD WAS INSERTED.'
END TRY
BEGIN CATCH
	PRINT 'FAILURE: RECORD WAS NOT INSERTED.'
	PRINT'ERROR'+CONVERT(VARCHAR,ERROR_NUMBER(),1)+':'+ERROR_MESSAGE()
END CATCH

--Bài 3/2
BEGIN TRY
	DECLARE @RESULT INT
	SET @RESULT =55/0
END TRY
BEGIN CATCH
	DECLARE
		@ERMESSAGE NVARCHAR(2048),
		@ERSEVERITY INT,
		@ERSTATE INT
	SELECT
		@ERMESSAGE = ERROR_MESSAGE(),
		@ERSEVERITY =ERROR_SEVERITY(),
		@ERSTATE =ERROR_STATE()
END CATCH
--SỬ DỤNG RAISERROR
BEGIN TRY
	DECLARE @RESULT INT
	SET @RESULT =55/0
END TRY
BEGIN CATCH
	DECLARE
		@ERMESSAGE NVARCHAR(2048),
		@ERSEVERITY INT,
		@ERSTATE INT
	SELECT
		@ERMESSAGE = ERROR_MESSAGE(),
		@ERSEVERITY =ERROR_SEVERITY(),
		@ERSTATE =ERROR_STATE()
	RAISERROR 
		(@ERMESSAGE,
		@ERSEVERITY,
		@ERSTATE)
END CATCH		
	
