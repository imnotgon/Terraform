module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> <INSIRA NUMERO DA VERSAO>"

    project_id   = "<INSIRA PROJECT ID>"
    network_name = "<INSIRA NOME DA NETWORK>"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-central1"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "<INSIRA, OU NÃO, UMA DESCRIÇÃO>"
        }
    ]
}
