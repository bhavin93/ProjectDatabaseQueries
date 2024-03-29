USE [TeamHub]
GO
/****** Object:  StoredProcedure [dbo].[FindRoleAndNameByLoginId]    Script Date: 8/27/2019 3:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[FindRoleAndNameByLoginId]
@Id varchar(20)
as
select E.Id, E.FirstName+' '+E.LastName as Name, R.RoleName as Role from EmployeeMaster E join UserMaster U on U.EmployeId=E.Id join RoleMaster R
on R.Id=U.RoleId Where E.Id=@Id;