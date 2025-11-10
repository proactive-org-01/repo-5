resource "azurerm_cognitive_account" "openai_public_compliant" {
  name                = "openai-public-disabled"
  location            = "East US"
  resource_group_name = "rg-openai"
  kind                = "OpenAI"
  sku_name            = "S0"
  public_network_access_enabled = false
}
