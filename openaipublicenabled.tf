resource "azurerm_cognitive_account" "openai_public_noncompliant" {
  name                = "openai-public-enabled"
  location            = "East US"
  resource_group_name = "rg-openai"
  kind                = "OpenAI"
  sku_name            = "S0"
  public_network_access_enabled = true
}
