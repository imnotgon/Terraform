
# Repositório Terraform

Este Repositório tem o objetivo de oferecer alguns templates voltados ao Terraform,

Estarei atualizando conforme o andamento de meus aprendizados.

Sinta-se livre para entrar em contato comigo, para quaisquer dúvidas :)


![Logo Terraform](https://miro.medium.com/max/790/0*B6D6_Npv1MMSTZYi.jpeg)


## Instalação e primeira utilização do Terraform

Acesse a console GCP e ative o Cloud Shell
![Ativação Cloud Shell](https://cdn.qwiklabs.com/vdY5e%2Fan9ZGXw5a%2FZMb1agpXhRGozsOadHURcR8thAQ%3D)

Após a ativação do Cloud Shell, você verá uma tela muito parecida com a abaixo:

![Tela Cloud Shell](https://cdn.qwiklabs.com/hmMK0W41Txk%2B20bQyuDP9g60vCdBajIS%2B52iI2f4bYk%3D)

O Terraform vem pré-instalado no Cloud Shell, mas você pode verificar a disponibilidade do mesmo inserindo este código no Shell:



```bash
terraform
```
    

Você receberá uma resposta muito parecidada com a abaixo:

```bash
Usage: terraform [--version] [--help] <command> [args]
The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.
Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    push               Upload this Terraform module to Atlas to run
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan
    taint              Manually mark a resource for recreation
    untaint            Manually unmark a resource as tainted
    validate           Validates the Terraform files
    version            Prints the Terraform version
    workspace          Workspace management
All other commands:
    debug              Debug output management (experimental)
    force-unlock       Manually unlock the terraform state
    state              Advanced state management
```


## Referências interessantes

 - [Site Oficial do Terraform (Muitas documentações boas e Cases)](https://www.terraform.io/)
 

