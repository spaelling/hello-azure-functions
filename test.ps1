
$WebhookURI = "https://webhook-logger.azurewebsites.net/api/HelloAzureFunctions?code=fkeq1mheeo42a5c6nf6rpmn29yyzq7xqjqb7wt10gdhj9py14isdkdlk54xx93cd0tvlo8khuxr"
$postParams = @{name='codebeaver.blogspot.com';}
Invoke-WebRequest -Uri $WebhookURI -Method GET -Body $postParams | Select-Object -ExpandProperty Content
