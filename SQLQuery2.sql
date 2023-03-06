create login test3 with password = 'Elijah@Pass1132';
go
create user test3 from login test3
go
alter role dbmanager add member elijahtest2;

go
alter role loginmanager add member elijahtest2;

go
alter role sysadmin add member elijahtest2;
go
alter role [bulkadmin] add member elijahtest2;
go
alter role [processadmin] add member elijahtest2;

create user third
for login third
go

exec sp_addrolemember N'db_owner', N'elijahtest2'
go

create user [006753728@csusb.edu] from external provider;

alter role [dbmanager] add member [006753728@csusb.edu]
go

create login test4 with password=N'TestThis@142'
go

create user testuser for login test4
go

--add user to azure directory
CREATE LOGIN [006753728@csusb.edu] FROM EXTERNAL PROVIDER;

ALTER ROLE dbmanager ADD member [006753728@csusb.edu]
GO