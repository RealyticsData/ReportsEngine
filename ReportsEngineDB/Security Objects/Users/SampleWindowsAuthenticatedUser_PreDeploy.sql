IF NOT EXISTS (
	SELECT 1 FROM sys.server_principals
	WHERE
		[sid] = SUSER_SID('$(SampleWindowsAuthenticatedUser)')
)
CREATE LOGIN [$(SampleWindowsAuthenticatedUser)] FROM WINDOWS;
GO

IF NOT EXISTS (
	SELECT 1 FROM sys.database_principals
	WHERE
		name = N'SampleWindowsAuthenticatedUser'
		AND [sid] = SUSER_SID('$(SampleWindowsAuthenticatedUser)')
)
BEGIN
	CREATE USER SampleWindowsAuthenticatedUser FOR LOGIN [$(SampleWindowsAuthenticatedUser)];
END
GO
