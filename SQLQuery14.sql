USE [TeamHub]
GO
/****** Object:  StoredProcedure [dbo].[DhavAuth2]    Script Date: 26-Aug-19 9:53:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[DhavAuth2]
@LoginId varchar(25),
@Password varchar(200)
as
select case when exists
(select Id from UserMaster where LoginId=@LoginId and Password=@Password)
then cast (1 as bit)
else cast (0 as bit)
end

