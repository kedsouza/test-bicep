Simple App Service.
`wget https://raw.githubusercontent.com/kedsouza/test-bicep/refs/heads/main/main.bicep`

`az group create --name bicep7 --location eastus`

`az deployment group create --resource-group bicep7 --template-file main.bicep`
