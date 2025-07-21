
output "conexion_string" {
  value = azurerm_storage_account.storage_example.primary_connection_string
  sensitive = true
}