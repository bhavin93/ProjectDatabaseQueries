USE [TeamHub]
GO
/****** Object:  StoredProcedure [dbo].[DhavAuth2]    Script Date: 26-Aug-19 5:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[DhavAuth2]
@LoginId varchar(25),
@Password varchar(200)
as
Select case when exists
(select Id from UserMaster where LoginId=@LoginId and Password=@Password)
then cast (1 as bit)
else cast (0 as bit) 
end
