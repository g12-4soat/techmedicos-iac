<p dir="auto"><img src="https://github.com/g12-4soat/techmedicos-iac/blob/main/docs/Imagem/logo-techmedicos.png" alt="TECHMEDICOS" title="TECHMEDICOS" align="right" height="60" style="max-width: 100%;"></p>

# Tech Medicos
Projeto Hackaton

Este repositório contém o código Terraform necessário para provisionar a infraestrutura na AWS e automatizar o deploy contínuo (CD) da nossa aplicação do Hackaton da FIAP - Turma 4SOAT.

# Descrição

Este projeto faz parte do desafio hackaton do curso de pós-graduação em Arquitetura de Software oferecido pela FIAP. Nosso objetivo é demonstrar a utilização de práticas modernas de infraestrutura como código (IaC) e integração contínua/entrega contínua (CI/CD) para implantar e gerenciar aplicativos em um ambiente de Kubernetes na AWS.
Em resumo o objetivo central é demonstrar como a integração dessas práticas pode melhorar o ciclo de vida dos aplicativos, abrangendo desde o desenvolvimento até a produção, e promover um fluxo de trabalho ágil e eficiente através da aplicação de metodologias e ferramentas modernas para a construção de sistemas robustos, escaláveis e automatizados.
# Documentação

<h3 tabindex="-1" dir="auto" data-react-autofocus="true">Conteúdo:</h3>
<p><strong>src/:</strong> Este diretório contém todos os arquivos Terraform necessários para provisionar a infraestrutura na AWS.</p>
<p><strong>k8s/:</strong> Aqui você encontrará os arquivos de manifesto Kubernetes necessários para implantar nossa aplicação nos clusters provisionados.</p>

<h4 tabindex="-1" dir="auto" data-react-autofocus="true">Stack</h4>

<p>
  <a target="_blank" rel="noopener noreferrer nofollow"    href="https://camo.githubusercontent.com/1abb14acdc9dcccddb39323c0290e82a10e8883706f9bad00764ec0da3858818/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f7465727261666f726d2d2532333538333543432e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d7465727261666f726d266c6f676f436f6c6f723d7768697465"><img src="https://camo.githubusercontent.com/1abb14acdc9dcccddb39323c0290e82a10e8883706f9bad00764ec0da3858818/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f7465727261666f726d2d2532333538333543432e7376673f7374796c653d666f722d7468652d6261646765266c6f676f3d7465727261666f726d266c6f676f436f6c6f723d7768697465" data-canonical-src="https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white" style="max-width: 100%;"></a>
</p>

<details>
  <summary>Como executar o terraform local?</summary>
  
## Executando o Projeto
O procedimento para executar o Terraform local é simples e leva poucos passos: 

1. Clone o repositório: _[https://github.com/g12-4soat/techmedicos-iac](https://github.com/g12-4soat/techmedicos-iac.git)_
 
1. Abra a pasta via linha de comando no diretório escolhido no **passo 1**. _Ex.: c:\> cd “c:/techmedicos-iac”_

## Rodando Terraform

Da raiz do repositório, entre no diretório ./src (onde se encontram todos os scripts Terraform), e execute os seguintes comandos no terminal:

### Iniciando o Terraform 
> c:\techmedicos-iac/src/terraform> terraform init

### Validando script Terraform
> c:\techmedicos-iac/src/terraform> terraform validate

### Verificando plano de implantação do script 
> c:\techmedicos-iac/src/terraform> terraform plan

### Aplicando plano de implantação do script 
> c:\techmedicos-iac> terraform apply

</details>

<details>
  <summary>Como configurar os pods no cluster AWS?</summary>
  
## Instalar AWS CLI
 Certifique-se de ter o AWS CLI instalado e configurado em seu sistema. Você pode baixá-lo e instalá-lo seguindo as instruções fornecidas em _[AWS CLI Installation.](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)_

## Configurar o AWS CLI
 Após a instalação, você precisa configurar o AWS CLI com suas credenciais. Isso pode ser feito executando o comando aws configure no seu terminal e fornecendo as credenciais da AWS quando solicitado. Certifique-se de configurar o AWS CLI com as credenciais que têm permissões para acessar o cluster EKS.

## Configurar o kubectl
O kubectl é uma ferramenta de linha de comando usada para interagir com clusters Kubernetes. Você precisa configurá-lo para acessar o cluster EKS. Isso pode ser feito executando o comando aws eks update-kubeconfig com o nome do seu cluster e a região onde ele está localizado. Por exemplo: aws eks update-kubeconfig --name <NOME_DO_CLUSTER_EKS> --region <REGIÃO>

## Verificar a conexão
Após configurar o kubectl, você pode verificar se está conectado ao cluster corretamente executando um comando como kubectl get nodes. Isso deve retornar uma lista dos nós (nodes) no seu cluster EKS.

## Executar apply Kubernetes
Da raiz do repositório, entre no diretório _**./k8s**_ _(onde se encontram todos os manifestos .yaml para execução no kubernetes)_, dê um duplo clique no arquivo "apply-all.sh" ou execute o seguinte comando no terminal:

### Windows 
> PS c:\tech-medicos\k8s> sh apply-all.sh

### Unix Systems (Linux distros | MacOS)
> $ exec apply-all.sh
> 
</details>

<details>
  <summary>Versões</summary>

## Software
- Terraform - >= 0.13
</details>

---
# Dependências
- [Terraform](https://www.terraform.io/)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

---
## Pipeline Status
| Pipeline | Status |
| --- | --- | 
| Deploy AWS Infrastructure| [![Deploy Infrastructure](https://github.com/g12-4soat/techmedicos-iac/actions/workflows/pipeline.yml/badge.svg)](https://github.com/g12-4soat/techmedicos-iac/actions/workflows/pipeline.yml)
|Apply K8s Deployments| [![Apply Deployments](https://github.com/g12-4soat/techmedicos-iac/actions/workflows/deployments.yml/badge.svg)](https://github.com/g12-4soat/techmedicos-iac/actions/workflows/deployments.yml)
---
# Visite a nossa [Wiki](https://github.com/g12-4soat/tech-medicos/wiki)
