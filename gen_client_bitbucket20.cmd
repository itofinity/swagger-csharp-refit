rmdir /S /Q clients\bitbucket
set PROJ_NAME=Itofinity.Bitbucket.Rest.Refit
rem rmdir /S /Q ..\%PROJ_NAME%
call gen_client.cmd ^
-i https://api.bitbucket.org/swagger.json ^
-o ^
clients/%PROJ_NAME% --api-package Api --model-package Model -DpackageName=%PROJ_NAME%