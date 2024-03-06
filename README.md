# Estudos - Terraform

## Definições e principais características
- Uma ferramenta é uma ferramenta para construir, alterar e criar versões de infra estrutura como código;
- IAC - Infra as Code;
- Open source e declarativo;
- Permitite versionamento (evolução da infraestrutura e automação);
- Idempotente;
- Sintaxe high-level e reusável;
- Paridade de ambientes;
- Planos de execução: Segurança e previsibilidade antes de aplicar as alterações no ambiente;
- Agnóstico à cloud;

## Instalação
Download do CLI através do seguinte
[link](https://developer.hashicorp.com/terraform/install?product_intent=terraform)

[Linux/MacOS] Copiar `terraform` para dentro do diretório `/usr/local/bin` para acesso global.

## tfenv
Gerenciador de versões do terraform.

[Guia de instalação](https://github.com/tfutils/tfenv)

Principais comandos:
- Instalar ultima versão:
```sh
tfenv install latest
```

- Usar ultima versão
```sh
tfenv use latest
```

- Listar versões instaladas
```sh
tfenv list
```

- tfenv sempre lê arquivo `.terraform-version` para definir versão do terraform. Conteúdo do arquivo
```sh
0.14.4
```

## VsCode - Extensions
- https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform

## Terraform registry
Documentação oficial para cada provider que o terraform suporta
- https://registry.terraform.io/
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs


## Quick Commands

- Inicializar terraform project
```sh
terraform init
```

- Planejamento de infraestrutura
```sh
terraform plan
```

- Planejamento de infraestrutura com variaveis de ambiente preenchidas
```sh
TF_VAR_aws_profile=aws-free-tier terraform plan
```

```sh
terraform plan -var="aws_profile=aws-free-tier" -var="instance_type=t3.medium"
```

```sh
terraform plan -var-file="prod.tfvars"
```

- Planejamento de infraestrutura + out
```sh
terraform plan -out="plan.out"
```

- Validar configuração do terraform
```sh
terraform validate
```

- Formatar codigo com padrão recomendado pelo terraform
```sh
terraform fmt
```

- Aplicar alterações
```sh
terraform apply
```

- Aplicar alterações + out
```sh
terraform apply "plan.out" 
```


- Destroy
```sh
terraform destroy
```

## Referências
[Curso AWS Terraform - Playlist Youtube](https://www.youtube.com/watch?v=bIPF_hzmQGE&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&ab_channel=CleberGasparoto)

[Curso AWS Terraform - Github](https://github.com/chgasparoto/curso-aws-com-terraform)

[Terraform Docs](https://www.terraform.io/)

[Hashicorp Registry](https://registry.terraform.io/)

[Hashicorp AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

[Hashicorp Learn Github Projects](https://github.com/hashicorp?q=learn-terraform)

[Tfenv Docs](https://github.com/tfutils/tfenv)