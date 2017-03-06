/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* Add permission assignment scripts here for Windows-authenticated login users. */
--:r "..\Security Objects\Users\SampleWindowsAuthenticatedUser_PostDeploy.sql"
GO

/* Add post-deployment RunOnce script references here. */
GO

/* Add record change scripts here. */
GO

/* Add backfill scripts here. */
GO

/* Add other post-deployment scripts here. */
GO
