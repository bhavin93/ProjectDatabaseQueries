create proc DhavAuth2
@LoginId varchar(25),
@Password varchar(200)
as
begin
if exists(select Id from UserMaster where LoginId=@LoginId and Password=@Password)
begin
1
end