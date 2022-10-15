
# Crie uma VM com o Terraform

Este Repositório tem o objetivo de oferecer alguns templates voltados ao Terraform,
com o objetivo de ajudar a todos da Qi.








## Configuração

Acesse a console GCP e ative o Cloud Shell
![Ativação Cloud Shell](https://cdn.qwiklabs.com/vdY5e%2Fan9ZGXw5a%2FZMb1agpXhRGozsOadHURcR8thAQ%3D)

No Cloud Shell crie um arquivo Terraform (.tf) vazio chamado instance.tf:

```bash
touch instance.tf
```
    
Após isso abra o Editor do Cloud Shell em uma nova guia, de preferência, e abra o arquivo
instance.tf 


O código abaixo é um template para a criação de uma VM por Terraform.

```bash
resource "google_compute_instance" "<INSIRA O NOME DE SUA VM>" {
  project      = "<INSIRA SEU PROJECT_ID>"
  name         = "<NOME DA VM>"
  machine_type = "<INSIRA O MODELO DA VM>"
  zone         = "<INSIRA A ZONA DA VM>"
  boot_disk {
    initialize_params {
      image = "<INSIRA A IMAGEM DE SUA VM>"
    }
  }
  network_interface {
    network = "<INSIRA O TIPO DE NETWORK DE SUA PREFERENCIA, OU DEFAULT>"
    access_config {
    }
  }
}
```

Segue abaixo um exemplo de VM seguindo o modelo acima: 

```bash
    resource "google_compute_instance" "vmQIteste" {
  project      = "projetoQI1"
  name         = "vmQIteste"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
```

No Cloud Shell você pode verificar se o arquivo instance.tf foi criado com o seguinte comando:


```bash
ls
```

## Inicializar o Terraform

O primiro comando a ser utilizado, no Cloud Shell, é o "terraform init". Este irá inicializar as 
configurações do Terraform.

```bash
terraform init
```

Após isso tenha um overview do que será alterado com o comando "terraform plan".

```bash
terraform plan
```
Para realizar as alterações, use o comando "terraform apply".

```bash
terraform apply
```

Você terá uma reposta parecida com a seguir: 

```bash
    .........
      + network_interface {
          + address            = (known after apply)
          + name               = (known after apply)
          + network            = "default"
          + network_ip         = (known after apply)
          + subnetwork         = (known after apply)
          + subnetwork_project = (known after apply)
          + access_config {
              + assigned_nat_ip = (known after apply)
              + nat_ip          = (known after apply)
              + network_tier    = (known after apply)
            }
        }
      + scheduling {
          + automatic_restart   = (known after apply)
          + on_host_maintenance = (known after apply)
          + preemptible         = (known after apply)
          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }
Plan: 1 to add, 0 to change, 0 to destroy.
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.
  Enter a value:
```

Neste momento é preciso que você insira yes para que as alterações sejam efetivadas.

## VM foi criada

Neste momento a VM foi criada, você pode verificar indo até Compute Engine. O Terraform 
terá criado uma arquivo chamado terraform.tfstate. Esse arquivo é importante porque contém
os IDs dos recursos criados, para que o Terraform saiba o que está gerenciando.

Para verificar o estado do Terraform insira o este comando no terraform:

```bash
terraform show
```

## Referências interessantes

 - [Documentação Terraform](https://www.terraform.io/language)
 

