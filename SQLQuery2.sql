USE [TeamHub]
GO
/****** Object:  StoredProcedure [dbo].[UserAuthentication]    Script Date: 23-Aug-19 7:14:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[UserAuthentication]
@LoginId varchar(25),
@Password varchar(200),
@Status int
as
if exists(select LoginId, Password from UserMaster where LoginId= @LoginId and Password=@Password)
begin
set @Status=1
end
else
begin
set @Status=0
end

