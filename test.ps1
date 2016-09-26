
#<# Get webhook URI from Azure Key Vault
try
{
    Get-AzureRmContext | Out-Null
}
catch [System.Net.WebException],[System.Exception]
{
    Add-AzureRmAccount -SubscriptionName bizspark | Out-Null
}

$WebhookURI = Get-AzureKeyVaultSecret -VaultName webhooks -Name helloazfuncuri | Select-Object -ExpandProperty SecretValueText
#>

#$WebhookURI = "***********"
$postParams = @{name='codebeaver.blogspot.com';}
Invoke-WebRequest -Uri $WebhookURI -Method GET -Body $postParams | Select-Object -ExpandProperty Content
