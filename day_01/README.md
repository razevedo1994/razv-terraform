# Comandos

- `terraform init`: Cria a infraestrutura local para trabalho.
- `terraform plan -out foo`: Gera o plano de execucao. Como boa pratica sempre usar o parametro `-out _nome_arquivo_` para gravar o plano de execucao em um arquivo para ser utilizado pelo `terraform apply` e assim garantir que a infraestrutura criada sera de acordo com o plano de execucao que foi gerado.
- `terraform apply`: Aplica as instrucoes criadas pelo plano de execucao gerado.
- `terraform destroy`: Destroi todos os recursos criados.