USE [TeamHub]
GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 26-Aug-19 2:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[UserLogin]
@LoginId varchar(25),
@Password varchar(200)
as
begin
if exists(select *from UserMaster where LoginId=@LoginId and Password=@Password)
begin
update UserMaster set AttemptCount=0 
end
else
begin
update UserMaster set AttemptCount=1 
end
end