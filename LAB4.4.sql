--Bài 4:
-- Viết chương trình tính tổng các số chẵn từ 1 tới 10.
DECLARE @TONG int=0, @DEM int=1
WHILE(@DEM<=10)
BEGIN
 SET @TONG = @TONG+@DEM
 SET @DEM = @DEM+1
END
PRINT @TONG
--Viết chương trình tính tổng các số chẵn từ 1 tới 10 nhưng bỏ số 4.
DECLARE @TONG int=0, @DEM int=1
WHILE(@DEM<=10)
BEGIN
 IF @DEM=4
  BEGIN
   SET @DEM=@DEM+1
   CONTINUE
  END 
 IF @DEM!=4
  SET @TONG = @TONG+@DEM
  SET @DEM = @DEM+1
END
PRINT @TONG