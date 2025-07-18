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