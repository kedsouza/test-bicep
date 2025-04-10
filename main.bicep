var location = resourceGroup().location

resource appserviceplan 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: 'asp-${uniqueString(resourceGroup().id)}'
  location: location
  kind: 'linux'
  sku: {
    name: 'B3'
  }
  properties: {
    reserved: true
  }
}

resource appservice 'Microsoft.Web/sites@2024-04-01' = {
  name: 'asp-${uniqueString(resourceGroup().id)}'
  location: location
  properties : {
    serverFarmId: appserviceplan.id
  }
}
