Declare @tb as 
	table (SPID int, status varchar(250), login varchar(250), hostname varchar(100), blkby varchar(250), dbName varchar(250), command varchar(250), CPUTime int, diskIO int, LastBatch varchar(200), ProgramName varchar(250), SPID_ int, REQUESTID int)
Insert into @tb
Exec sp_who2

Select * 
From @tb 
Where status = 'RUNNABLE'
Order by 4 


