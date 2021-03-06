﻿create function dbo.IsEnumValueInRange(@name nvarchar(30), @value int)
returns bit
as
begin
	declare @flag bit = 0
	if exists(select * from dbo.Enums where EnumName = @name and Value = @value)
	begin
		return convert(bit, 1)
	end
	return @flag
end