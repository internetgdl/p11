# Proyecto Terraform simple con Worker + D1

Este proyecto crea:

- un worker sencillo en Cloudflare
- una base de datos D1
- una conexión del worker a la base de datos mediante binding

## Archivos principales

- `main.tf`: recursos de Terraform
- `worker.js`: código del Worker
- `variables.tf`: variables de configuración

## Pasos

1. Instala Terraform.
2. Ajusta los valores de `account_id` y `api_token` si hace falta.
3. Ejecuta:

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

## Importante

El worker se sube a Cloudflare, pero para que responda en un dominio necesitas añadir una ruta o dominio adicional en Cloudflare. Este ejemplo está pensado para ser lo más simple posible.
