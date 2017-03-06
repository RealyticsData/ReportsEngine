/*
Do not change the database path or name variables.
Any sqlcmd variables will be properly substituted during 
build and deployment.
*/
ALTER DATABASE [$(DatabaseName)]
	ADD FILE
	(
		NAME = [ReportsEngine_Index],
		FILENAME = '$(DefaultDataPath)$(DefaultFilePrefix)_Index.ndf'
	)
	TO FILEGROUP [ReportsEngine_Index];
	
