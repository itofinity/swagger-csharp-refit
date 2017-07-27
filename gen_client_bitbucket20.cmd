rmdir /S /Q clients\bitbucket
call gen_client.cmd ^
-i https://api.bitbucket.org/swagger.json ^
-o ^
clients/bitbucket --api-package Api --model-package Model -DpackageName=Atlassian.Bitbucket