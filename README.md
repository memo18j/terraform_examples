# 🌍 Terraform - Comandos Básicos

Este archivo resume los comandos esenciales para trabajar con Terraform, desde la inicialización hasta la destrucción de infraestructura.

---

## 📦 Inicializar el proyecto
Inicializa el directorio de trabajo y descarga los providers necesarios.
```bash
terraform init
```
Inicializa el directorio de trabajo y descarga los providers necesarios.

---
## 🔍 Verificar qué se va a aplicar
```bash
terraform plan
```
Muestra una vista previa de los cambios que se aplicarán al estado real de la infraestructura.

---
```bash
terraform plan -out "plan.out"
```
Guarda el plan de ejecución para revisarlo o aplicarlo más tarde.

---

## 🚀 Aplicar los cambios
```bash
terraform apply
```
Ejecuta los cambios necesarios para alcanzar el estado deseado. Se puede usar con `-auto-approve` para evitar la confirmación manual.

---
Aplicar el plan guardado:
```bash
terraform apply "plan.out"
```

---

## 🧼 Destruir la infraestructura
```bash
terraform destroy
```
Elimina toda la infraestructura definida en los archivos `.tf`.

---

## gestionar estados remotos
```bash
terraform init -backend-config="sas_token=<tu_sas_token>"
```
Ejecutar Terraform init con parámetros adicionales: Usa el parámetro -backend-config para incluir el SaaS token. Este token puede ser obtenido en el portal de Azure.
---

## Formatear codigo y validar
```bash
terraform fmt --rescursive  o "Shift + Alt + F "
terraform validate
```
Formatea el codigo y valida nombres, sintaxis antes del aplicar el plan
---