--Bài 2/1
declare @max int,@num int;
select @max =Max(cast(MANV as int)) from NHANVIEN;
set @num=1
while @num<=@max
begin
	if @num % 2=0
		select MANV,HONV,TENLOT,TENNV from NHANVIEN where cast (MANV as int)=@num
	set @num = @num +1
end;

--Bài 2/2
declare @max int,@num int;
select @max =Max(cast(MANV as int)) from NHANVIEN;
set @num=1
while @num<=@max
begin
	if @num=4
	begin
		set @num=@num+1;
		continue
	end
	if @num % 2=0
		select MANV,HONV,TENLOT,TENNV from NHANVIEN where cast (MANV as int)=@num
	set @num = @num +1
end;