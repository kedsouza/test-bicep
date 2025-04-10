Simple App Service.

`az group create --name bicep 7 --location eastus
 az deployment group create --resource-group exampleRG --template-file main.bicep --parameters storageAccountName=uniquename
`
