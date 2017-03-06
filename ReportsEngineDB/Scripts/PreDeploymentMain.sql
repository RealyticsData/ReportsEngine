/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/* Add user creation scripts here for Windows-authenticated logins. */
--:r "..\Security Objects\Users\SampleWindowsAuthenticatedUser_PreDeploy.sql"

/* Add pre-deployment RunOnce scripts here. */

/* Add other pre-deployment scripts here. */

/* End Pre-Deployment Scripts. */
