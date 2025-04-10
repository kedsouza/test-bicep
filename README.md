Simple App Service.

`wget https://raw.githubusercontent.com/kedsouza/test-bicep/refs/heads/main/main.bicep`

`name=$USER-$(cat /dev/urandom | tr -cd 'a-f0-9' | head -c 5)`

`az group create --name $name --location eastus`

`az deployment group create --resource-group $name --template-file main.bicep`
